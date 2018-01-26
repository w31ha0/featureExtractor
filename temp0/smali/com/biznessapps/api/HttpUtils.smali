.class public Lcom/biznessapps/api/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpUtils"

.field private static final THREAD_POOL_SIZE:I = 0x5


# instance fields
.field private executors:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/api/HttpUtils;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executors"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    .line 51
    iput-object v0, p0, Lcom/biznessapps/api/HttpUtils;->handler:Landroid/os/Handler;

    .line 59
    invoke-static {}, Lcom/biznessapps/api/UIHandler;->get()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/api/HttpUtils;->handler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/HttpUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Lcom/biznessapps/api/AsyncCallback;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/api/HttpUtils;->executeRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "c"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 291
    .local v0, "is":Ljava/util/zip/GZIPInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 301
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    throw v4

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static executeGetHttpRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->newHttpClientInstance()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 245
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method private static executePostHttpRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 9
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->newHttpClientInstance()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 264
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 266
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 269
    .local v2, "haveData":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 271
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, p2

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v4, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p2

    if-ge v3, v6, :cond_1

    .line 274
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v7, p1, v3

    aget-object v8, p2, v3

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v2    # "haveData":Z
    .end local v3    # "i":I
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 278
    .restart local v2    # "haveData":Z
    .restart local v3    # "i":I
    .restart local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :try_start_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "utf-8"

    invoke-direct {v6, v4, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v3    # "i":I
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    :goto_2
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    return-object v6

    .line 279
    .restart local v3    # "i":I
    .restart local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v6, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_2
.end method

.method private executeRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 11
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/biznessapps/api/HttpUtils;->replaceBadSymbols(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 196
    .local v3, "response":Lorg/apache/http/HttpResponse;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    array-length v8, p2

    if-lez v8, :cond_0

    array-length v8, p3

    if-lez v8, :cond_0

    move v2, v6

    .line 198
    .local v2, "executeAsPost":Z
    :goto_0
    const/4 v4, 0x0

    .line 199
    .local v4, "result":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 200
    invoke-static {v5, p2, p3}, Lcom/biznessapps/api/HttpUtils;->executePostHttpRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 201
    invoke-static {v3}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    .line 207
    :goto_1
    invoke-direct {p0, p4, v4}, Lcom/biznessapps/api/HttpUtils;->passResult(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    .line 215
    .end local v2    # "executeAsPost":Z
    .end local v4    # "result":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v2, v7

    .line 196
    goto :goto_0

    .line 203
    .restart local v2    # "executeAsPost":Z
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/biznessapps/api/HttpUtils;->executeGetHttpRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 204
    invoke-static {v3}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 209
    .end local v2    # "executeAsPost":Z
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Couldn\'t connect to server"

    .line 211
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v8, "HttpUtils"

    const-string v9, "Throwable: %s"

    new-array v10, v6, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    aput-object v6, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p4, v1, v0}, Lcom/biznessapps/api/HttpUtils;->passError(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 211
    goto :goto_3
.end method

.method private declared-synchronized executeRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 7
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 171
    .local v6, "stopped":Z
    :goto_0
    if-nez v6, :cond_1

    .line 172
    new-instance v0, Lcom/biznessapps/api/HttpUtils$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/api/HttpUtils$3;-><init>(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 178
    .local v0, "asyncRequest":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v0    # "asyncRequest":Ljava/lang/Runnable;
    :cond_1
    monitor-exit p0

    return-void

    .line 169
    .end local v6    # "stopped":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static newHttpClientInstance()Lorg/apache/http/client/HttpClient;
    .locals 5

    .prologue
    .line 227
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 230
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x7530

    .line 231
    .local v2, "timeoutConnection":I
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 232
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 233
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 234
    return-object v0
.end method

.method private passError(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/biznessapps/api/HttpUtils$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/biznessapps/api/HttpUtils$2;-><init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method private passResult(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
    .locals 2
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/biznessapps/api/HttpUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/biznessapps/api/HttpUtils$1;-><init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method private replaceBadSymbols(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 8
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const-string v5, "gzip"

    .line 318
    .local v5, "s":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 319
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/api/HttpUtils;->convertStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 332
    :goto_0
    return-object v6

    .line 323
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 324
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 325
    .local v2, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 326
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_1

    .line 330
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 332
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public executeGetRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v0, p4}, Lcom/biznessapps/api/HttpUtils;->executeRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 95
    return-void
.end method

.method public executePostRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/api/HttpUtils;->executeRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 111
    return-void
.end method

.method public declared-synchronized executeRequestSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 120
    monitor-enter p0

    const/4 v1, 0x0

    .line 121
    .local v1, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .local v2, "resultData":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lcom/biznessapps/api/HttpUtils;->executeGetHttpRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 125
    .local v4, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v4, :cond_0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    .line 138
    .end local v2    # "resultData":Ljava/lang/String;
    .end local v4    # "statusLine":Lorg/apache/http/StatusLine;
    .local v3, "resultData":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 128
    .end local v3    # "resultData":Ljava/lang/String;
    .restart local v2    # "resultData":Ljava/lang/String;
    .restart local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    :try_start_3
    invoke-static {v1}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 135
    const/4 v1, 0x0

    .line 136
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_1
    move-object v3, v2

    .line 138
    .end local v2    # "resultData":Ljava/lang/String;
    .restart local v3    # "resultData":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v3    # "resultData":Ljava/lang/String;
    .restart local v2    # "resultData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 132
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    :cond_2
    const/4 v1, 0x0

    .line 136
    :try_start_6
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "resultData":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 135
    .restart local v2    # "resultData":Ljava/lang/String;
    :catchall_1
    move-exception v5

    const/4 v1, 0x0

    .line 136
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "HttpUtils"

    const-string v2, "Can\'t shutdown service executor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
