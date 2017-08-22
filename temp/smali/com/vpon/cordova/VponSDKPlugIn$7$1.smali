.class Lcom/vpon/cordova/VponSDKPlugIn$7$1;
.super Landroid/os/AsyncTask;
.source "VponSDKPlugIn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn$7;->run()V
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
.field a:Lorg/json/JSONObject;

.field b:I

.field final synthetic c:Lcom/vpon/cordova/VponSDKPlugIn$7;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn$7;)V
    .locals 1

    .prologue
    .line 3436
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3437
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    .line 3438
    const/4 v0, -0x1

    iput v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3443
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 3444
    invoke-static {v0}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 3445
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$7;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 3447
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$7;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3448
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout ms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget v3, v3, Lcom/vpon/cordova/VponSDKPlugIn$7;->b:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget v3, v3, Lcom/vpon/cordova/VponSDKPlugIn$7;->b:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 3453
    :cond_0
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3454
    if-eqz v1, :cond_1

    .line 3455
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHttpGet -> userAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 3461
    :goto_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget-object v2, v2, Lcom/vpon/cordova/VponSDKPlugIn$7;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 3462
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 3463
    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget-object v2, v2, Lcom/vpon/cordova/VponSDKPlugIn$7;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 3465
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->b:I

    .line 3466
    iget v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->b:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    .line 3467
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3468
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$7;->c:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    .line 3476
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3491
    :goto_2
    return-object v0

    .line 3458
    :cond_1
    const-string v1, "VponSDKPlugIn"

    const-string v2, "Cannot get user agent from StaticStorage.instance().get(StaticStorage.USER_AGENT)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3478
    :catch_0
    move-exception v0

    .line 3481
    :try_start_1
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http_get throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3482
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    const-string v2, "error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http_get throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3483
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3484
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$7;->c:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3491
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 3470
    :cond_2
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    const-string v1, "!(statusCode >= 100 && statusCode < 300) at doHttpGet"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3472
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    const-string v1, "error"

    const-string v2, "http status is not in (1xx~2xx) "

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3473
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$7;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$7;->c:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3485
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3436
    invoke-virtual {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn$7$1;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
