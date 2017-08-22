.class public Lvpadn/an;
.super Landroid/os/AsyncTask;
.source "VponRequestAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Lvpadn/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lvpadn/as;

.field private b:Lvpadn/ax;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object v0, p0, Lvpadn/an;->b:Lvpadn/ax;

    .line 42
    iput-object v0, p0, Lvpadn/an;->c:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lvpadn/an;->d:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lvpadn/an;->e:Ljava/lang/String;

    .line 47
    const-class v1, Lvpadn/an;

    monitor-enter v1

    .line 49
    :try_start_0
    iput-object p1, p0, Lvpadn/an;->d:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lvpadn/as;

    iput-object v0, p0, Lvpadn/an;->a:Lvpadn/as;

    .line 51
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lvpadn/an;->c:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    aget-object v0, p2, v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lvpadn/an;->e:Ljava/lang/String;

    .line 55
    :cond_0
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()Lvpadn/aj;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 128
    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 130
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 135
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 136
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 138
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lvpadn/an;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 142
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 143
    invoke-static {v1}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 145
    iget-object v0, p0, Lvpadn/an;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 147
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v4, "http.useragent"

    iget-object v5, p0, Lvpadn/an;->c:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 148
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 149
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 152
    iget-object v0, p0, Lvpadn/an;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 154
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeExpiredConnections()V

    .line 155
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpResponse.getStatusLine().getStatusCode():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "VponRequestAsyncTask"

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lvpadn/ba;->b(Ljava/lang/String;Z)V

    .line 159
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lvpadn/ba;->b(Lorg/apache/http/HttpResponse;Z)V

    .line 160
    const/4 v0, -0x1

    invoke-static {v0}, Lvpadn/aj;->a(I)Lvpadn/aj;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lvpadn/ba;->a(Lorg/apache/http/HttpResponse;Z)V

    .line 169
    iget-object v0, p0, Lvpadn/an;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lvpadn/ay;

    invoke-direct {v0}, Lvpadn/ay;-><init>()V

    iput-object v0, p0, Lvpadn/an;->b:Lvpadn/ax;

    .line 171
    iget-object v0, p0, Lvpadn/an;->b:Lvpadn/ax;

    check-cast v0, Lvpadn/ay;

    iget-object v1, p0, Lvpadn/an;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ay;->b(Ljava/lang/String;)V

    .line 176
    :goto_1
    iget-object v0, p0, Lvpadn/an;->b:Lvpadn/ax;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/ax;->a(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    iget-object v1, p0, Lvpadn/an;->b:Lvpadn/ax;

    invoke-virtual {v1}, Lvpadn/ax;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lvpadn/ba;->a(Ljava/lang/String;Z)V

    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Lvpadn/aj;->a(I)Lvpadn/aj;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    new-instance v0, Lvpadn/ax;

    invoke-direct {v0}, Lvpadn/ax;-><init>()V

    iput-object v0, p0, Lvpadn/an;->b:Lvpadn/ax;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const-string v1, "VponRequestAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request()  throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    invoke-static {v6}, Lvpadn/aj;->a(I)Lvpadn/aj;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lvpadn/aj;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lvpadn/an;->a()Lvpadn/aj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lvpadn/aj;)V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lvpadn/an$1;->a:[I

    invoke-virtual {p1}, Lvpadn/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    const-string v0, "VponRequestAsyncTask"

    const-string v1, "onPostExecute is failded!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/an;->a:Lvpadn/as;

    .line 85
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lvpadn/an;->a:Lvpadn/as;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lvpadn/an;->a:Lvpadn/as;

    iget-object v1, p0, Lvpadn/an;->b:Lvpadn/ax;

    invoke-interface {v0, v1}, Lvpadn/as;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lvpadn/an;->a([Ljava/lang/Object;)Lvpadn/aj;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lvpadn/an;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 91
    sget-object v1, Lvpadn/an$1;->b:[I

    invoke-virtual {v0}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const-string v0, "onCancelled"

    const-string v1, "PENDING"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "onCancelled"

    const-string v1, "FINISHED"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "onCancelled"

    const-string v1, "RUNNING"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lvpadn/aj;

    invoke-virtual {p0, p1}, Lvpadn/an;->a(Lvpadn/aj;)V

    return-void
.end method
