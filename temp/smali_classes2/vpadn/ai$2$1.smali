.class Lvpadn/ai$2$1;
.super Landroid/os/AsyncTask;
.source "VponNativeAdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ai$2;->run()V
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

.field final synthetic b:Lvpadn/ai$2;


# direct methods
.method constructor <init>(Lvpadn/ai$2;)V
    .locals 1

    .prologue
    .line 485
    iput-object p1, p0, Lvpadn/ai$2$1;->b:Lvpadn/ai$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 486
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/ai$2$1;->a:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 491
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 492
    invoke-static {v0}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 493
    iget-object v1, p0, Lvpadn/ai$2$1;->b:Lvpadn/ai$2;

    iget-object v1, v1, Lvpadn/ai$2;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 496
    const-string v1, "VponNativeAdController"

    const-string v2, "timeout ms:3000"

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    const/16 v3, 0xbb8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 501
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_1

    .line 503
    const-string v2, "VponNativeAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 509
    :goto_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lvpadn/ai$2$1;->b:Lvpadn/ai$2;

    iget-object v2, v2, Lvpadn/ai$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 511
    iget-object v2, p0, Lvpadn/ai$2$1;->b:Lvpadn/ai$2;

    iget-object v2, v2, Lvpadn/ai$2;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 513
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lvpadn/ai$2$1;->a:I

    .line 515
    iget v0, p0, Lvpadn/ai$2$1;->a:I

    const/16 v1, 0x18f

    if-le v0, v1, :cond_0

    .line 516
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send3rdImpressionToServer return status code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvpadn/ai$2$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 523
    :goto_1
    return-object v0

    .line 506
    :cond_1
    const-string v1, "VponNativeAdController"

    const-string v2, "Cannot get user agent from StaticStorage.instance().get(StaticStorage.USER_AGENT)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string v1, "VponNativeAdController"

    const-string v2, "send3rdImpressionToServer asyncTask throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lvpadn/ai$2$1;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
