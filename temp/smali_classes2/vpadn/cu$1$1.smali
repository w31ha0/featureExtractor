.class Lvpadn/cu$1$1;
.super Landroid/os/AsyncTask;
.source "VideoTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cu$1;->run()V
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

.field final synthetic b:Lvpadn/cu$1;


# direct methods
.method constructor <init>(Lvpadn/cu$1;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/cu$1$1;->a:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 361
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 362
    invoke-static {v0}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 363
    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 366
    const-string v1, "VideoTrackingManager"

    const-string v2, "timeout ms:3000"

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    const/16 v3, 0xbb8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 371
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_7

    .line 373
    const-string v2, "VideoTrackingManager"

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

    .line 374
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 379
    :goto_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v2, v2, Lvpadn/cu$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v2, v2, Lvpadn/cu$1;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 383
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lvpadn/cu$1$1;->a:I

    .line 385
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    iget v2, p0, Lvpadn/cu$1$1;->a:I

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingStart(Ljava/lang/String;I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_FIRST_QUARTILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    iget v2, p0, Lvpadn/cu$1$1;->a:I

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingFirstQuartile(Ljava/lang/String;I)V

    .line 391
    :cond_1
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_MIDPOINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    iget v2, p0, Lvpadn/cu$1$1;->a:I

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingMidpoint(Ljava/lang/String;I)V

    .line 394
    :cond_2
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_THIRD_QUARTILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    iget v2, p0, Lvpadn/cu$1$1;->a:I

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingThirdQuartile(Ljava/lang/String;I)V

    .line 397
    :cond_3
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    iget v2, p0, Lvpadn/cu$1$1;->a:I

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingComplete(Ljava/lang/String;I)V

    .line 400
    :cond_4
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_PROGRESS_TIME:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->c:Lvpadn/ct;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v2, v2, Lvpadn/cu$1;->a:Ljava/lang/String;

    iget v3, p0, Lvpadn/cu$1$1;->a:I

    invoke-interface {v1, v0, v2, v3}, Lvpadn/ct;->onVideoTrackingProgressTime(Ljava/lang/String;Ljava/lang/String;I)V

    .line 405
    :cond_5
    iget v0, p0, Lvpadn/cu$1$1;->a:I

    const/16 v1, 0x18f

    if-le v0, v1, :cond_6

    .line 406
    const-string v0, "VideoTrackingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHttpGet return status code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvpadn/cu$1$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 438
    :goto_1
    return-object v0

    .line 376
    :cond_7
    const-string v1, "VideoTrackingManager"

    const-string v2, "Cannot get user agent from StaticStorage.instance().get(StaticStorage.USER_AGENT)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 413
    :try_start_1
    const-string v1, "VideoTrackingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendHttpGet throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 416
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    const/16 v2, 0x194

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingStart(Ljava/lang/String;I)V

    .line 418
    :cond_8
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_FIRST_QUARTILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 419
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    const/16 v2, 0x194

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingFirstQuartile(Ljava/lang/String;I)V

    .line 421
    :cond_9
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_MIDPOINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    const/16 v2, 0x194

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingMidpoint(Ljava/lang/String;I)V

    .line 424
    :cond_a
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_THIRD_QUARTILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 425
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    const/16 v2, 0x194

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingThirdQuartile(Ljava/lang/String;I)V

    .line 427
    :cond_b
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 428
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->c:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->a:Ljava/lang/String;

    const/16 v2, 0x194

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoTrackingComplete(Ljava/lang/String;I)V

    .line 430
    :cond_c
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, "VT_PROGRESS_TIME:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 431
    iget-object v0, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v0, v0, Lvpadn/cu$1;->b:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v1, v1, Lvpadn/cu$1;->c:Lvpadn/ct;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lvpadn/cu$1$1;->b:Lvpadn/cu$1;

    iget-object v2, v2, Lvpadn/cu$1;->a:Ljava/lang/String;

    const/16 v3, 0x194

    invoke-interface {v1, v0, v2, v3}, Lvpadn/ct;->onVideoTrackingProgressTime(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :cond_d
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 434
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lvpadn/cu$1$1;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
