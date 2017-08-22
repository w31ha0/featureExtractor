.class Lvpadn/bt$1$1;
.super Landroid/os/AsyncTask;
.source "AbstractMultiStatusClickTrackingButtonCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/bt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lvpadn/bt$1;


# direct methods
.method constructor <init>(Lvpadn/bt$1;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/bt$1$1;->a:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 161
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 162
    invoke-static {v0}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 163
    iget-object v1, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v1, v1, Lvpadn/bt$1;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 166
    invoke-static {}, Lvpadn/bt;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendButtonTrackingUrl timeout ms:3000"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    const/16 v3, 0xbb8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 171
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_1

    .line 173
    invoke-static {}, Lvpadn/bt;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 179
    :goto_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v2, v2, Lvpadn/bt$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v2, v2, Lvpadn/bt$1;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 183
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lvpadn/bt$1$1;->a:I

    .line 184
    iget-object v0, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v0, v0, Lvpadn/bt$1;->b:Lvpadn/bt;

    invoke-static {v0}, Lvpadn/bt;->a(Lvpadn/bt;)Lvpadn/cq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v0, v0, Lvpadn/bt$1;->b:Lvpadn/bt;

    invoke-static {v0}, Lvpadn/bt;->a(Lvpadn/bt;)Lvpadn/cq;

    move-result-object v0

    iget-object v1, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v1, v1, Lvpadn/bt$1;->a:Ljava/lang/String;

    iget v2, p0, Lvpadn/bt$1$1;->a:I

    invoke-interface {v0, v1, v2}, Lvpadn/cq;->onHttpCallback(Ljava/lang/String;I)V

    .line 187
    :cond_0
    invoke-static {}, Lvpadn/bt;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendButtonTrackingUrl return status code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvpadn/bt$1$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 201
    :goto_1
    return-object v0

    .line 176
    :cond_1
    invoke-static {}, Lvpadn/bt;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot get user agent from StaticStorage.instance().get(StaticStorage.USER_AGENT) in sendButtonTrackingUrl"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 193
    :try_start_1
    invoke-static {}, Lvpadn/bt;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendButtonTrackingUrl throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v0, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v0, v0, Lvpadn/bt$1;->b:Lvpadn/bt;

    invoke-static {v0}, Lvpadn/bt;->a(Lvpadn/bt;)Lvpadn/cq;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v0, v0, Lvpadn/bt$1;->b:Lvpadn/bt;

    invoke-static {v0}, Lvpadn/bt;->a(Lvpadn/bt;)Lvpadn/cq;

    move-result-object v0

    iget-object v1, p0, Lvpadn/bt$1$1;->b:Lvpadn/bt$1;

    iget-object v1, v1, Lvpadn/bt$1;->a:Ljava/lang/String;

    const/16 v2, 0x194

    invoke-interface {v0, v1, v2}, Lvpadn/cq;->onHttpCallback(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :cond_2
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lvpadn/bt$1$1;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
