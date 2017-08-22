.class Lcom/vpon/cordova/VponSDKPlugIn$6$1;
.super Landroid/os/AsyncTask;
.source "VponSDKPlugIn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn$6;->run()V
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

.field final synthetic c:Lcom/vpon/cordova/VponSDKPlugIn$6;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn$6;)V
    .locals 1

    .prologue
    .line 3315
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3316
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    .line 3317
    const/4 v0, -0x1

    iput v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3323
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 3324
    invoke-static {v0}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 3326
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$6;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 3327
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3328
    if-eqz v1, :cond_0

    .line 3329
    const-string v2, "VponSDKPlugIn"

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

    .line 3330
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 3335
    :goto_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v2, v2, Lcom/vpon/cordova/VponSDKPlugIn$6;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 3337
    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v2, v2, Lcom/vpon/cordova/VponSDKPlugIn$6;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 3339
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    .line 3340
    iget v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 3341
    const-string v0, "VponSDKPlugIn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====> impUrl is OK, status code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3343
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$6;->b:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    .line 3344
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3365
    :goto_1
    return-object v0

    .line 3332
    :cond_0
    const-string v1, "VponSDKPlugIn"

    const-string v2, "Cannot get user agent from StaticStorage.instance().get(StaticStorage.USER_AGENT)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3353
    :catch_0
    move-exception v0

    .line 3354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3356
    :try_start_1
    const-string v1, "VponSDKPlugIn"

    const-string v2, "http_get throw Exception"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    const-string v2, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do_sendImprsssion throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3358
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$6;->b:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3365
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 3346
    :cond_1
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSendImpression fail. status code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3348
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    const-string v1, "e"

    const-string v2, "http status is not in (1xx~2xx) "

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3349
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$6;->b:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 3350
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    .line 3359
    :catch_1
    move-exception v0

    .line 3360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 3371
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$6;->c:Lvpadn/ag;

    invoke-interface {v0}, Lvpadn/ag;->notifyImpressionOk()V

    .line 3375
    :goto_0
    return-void

    .line 3373
    :cond_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->c:Lcom/vpon/cordova/VponSDKPlugIn$6;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$6;->c:Lvpadn/ag;

    invoke-interface {v0}, Lvpadn/ag;->notifyImpressionFailed()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3315
    invoke-virtual {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3315
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn$6$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
