.class public Lvpadn/ah;
.super Lvpadn/ae;
.source "VponInterstitialAdController.java"

# interfaces
.implements Lvpadn/ar;
.implements Lvpadn/as;
.implements Lvpadn/at;
.implements Lvpadn/db$a;


# instance fields
.field private A:Z

.field private B:Lvpadn/ao;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lvpadn/dd;

.field private L:Lvpadn/db;

.field private M:Z

.field protected u:Z

.field private v:Lvpadn/df;

.field private w:Lvpadn/df;

.field private x:Lvpadn/ax;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lvpadn/ao;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lvpadn/ae;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v2, p0, Lvpadn/ah;->y:Landroid/widget/RelativeLayout;

    .line 85
    iput-object v2, p0, Lvpadn/ah;->z:Landroid/widget/ImageView;

    .line 86
    iput-boolean v1, p0, Lvpadn/ah;->A:Z

    .line 87
    iput-boolean v1, p0, Lvpadn/ah;->u:Z

    .line 88
    iput-object v2, p0, Lvpadn/ah;->B:Lvpadn/ao;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/ah;->C:I

    .line 92
    iput-boolean v3, p0, Lvpadn/ah;->E:Z

    .line 93
    const-string v0, "none"

    iput-object v0, p0, Lvpadn/ah;->F:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lvpadn/ah;->G:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lvpadn/ah;->H:Z

    .line 97
    iput-boolean v1, p0, Lvpadn/ah;->I:Z

    .line 98
    iput-boolean v3, p0, Lvpadn/ah;->J:Z

    .line 104
    iput-boolean v1, p0, Lvpadn/ah;->M:Z

    .line 111
    iput-object p2, p0, Lvpadn/ah;->B:Lvpadn/ao;

    .line 112
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lvpadn/ah;->C:I

    .line 113
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/vpadn/ads/VpadnAdRequest;JJ)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 399
    :try_start_0
    const-string v0, "sid"

    invoke-virtual {p1, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 400
    const-string v0, "seq"

    invoke-virtual {p1, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 402
    const-string v0, "mi"

    .line 403
    iget-boolean v1, p0, Lvpadn/ah;->M:Z

    if-eqz v1, :cond_0

    .line 404
    const-string v0, "mi_vid"

    .line 407
    :cond_0
    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v0, "bid"

    iget-object v1, p0, Lvpadn/ah;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_7

    .line 411
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 414
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 437
    :goto_0
    iget-object v0, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    .line 438
    iget-object v0, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "ad_x"

    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 442
    :cond_1
    iget-object v0, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    const-string v0, "ad_y"

    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 446
    :cond_2
    iget-object v0, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v1, "w"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    const-string v0, "ad_w"

    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 450
    :cond_3
    iget-object v0, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    const-string v0, "ad_h"

    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v2, "h"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lvpadn/ah;->h:Z

    if-eqz v0, :cond_c

    .line 461
    const-string v0, "ad_v"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 466
    :goto_2
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 467
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 468
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 554
    :catch_0
    move-exception v0

    .line 556
    const-string v1, "VponInterstitialAdController"

    const-string v2, "collectPushlierParams throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    :cond_5
    :goto_4
    return-object p1

    .line 416
    :cond_6
    :try_start_1
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 419
    :cond_7
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_9

    .line 422
    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 423
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 425
    :cond_8
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 428
    :cond_9
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 429
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 431
    :cond_a
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 454
    :cond_b
    const-string v0, "ad_x"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    const-string v0, "ad_y"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 456
    const-string v0, "ad_w"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 457
    const-string v0, "ad_h"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 463
    :cond_c
    const-string v0, "ad_v"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 471
    :cond_d
    const-string v0, "kw"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/au;->d(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 477
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getAge()I

    move-result v2

    .line 478
    if-lez v2, :cond_e

    const/16 v3, 0x96

    if-ge v2, v3, :cond_e

    .line 479
    const-string v3, "age"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    :cond_e
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getGender()Lcom/vpadn/ads/VpadnAdRequest$Gender;

    move-result-object v2

    sget-object v3, Lcom/vpadn/ads/VpadnAdRequest$Gender;->UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v2, v3}, Lcom/vpadn/ads/VpadnAdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 483
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getGender()Lcom/vpadn/ads/VpadnAdRequest$Gender;

    move-result-object v2

    sget-object v3, Lcom/vpadn/ads/VpadnAdRequest$Gender;->MALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v2, v3}, Lcom/vpadn/ads/VpadnAdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 484
    const-string v2, "gender"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    :cond_f
    :goto_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-DD"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v3

    .line 492
    if-eqz v3, :cond_10

    .line 493
    const-string v4, "bday"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    :cond_10
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getPublisherExtraData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 498
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getPublisherExtraData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 499
    const-string v3, "ex"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    :cond_11
    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-static {v2, v3}, Lvpadn/br;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 505
    invoke-static {}, Lvpadn/ah;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 507
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    const-string v3, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v3, v2}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    const-string v3, "ms_not_accs"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lvpadn/au;->c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 513
    const-string v3, "VponInterstitialAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accs info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v3, "account"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    :cond_12
    :goto_6
    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/bp;->g(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/br;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 522
    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v2

    .line 523
    invoke-virtual {v2}, Lvpadn/bs;->c()V

    .line 524
    invoke-virtual {v2}, Lvpadn/bs;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    invoke-virtual {v2}, Lvpadn/bs;->d()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 525
    const-string v3, "wifi_ssid"

    invoke-virtual {v2}, Lvpadn/bs;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v3, "wifi_bssid"

    invoke-virtual {v2}, Lvpadn/bs;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v3, "wifi_level"

    invoke-virtual {v2}, Lvpadn/bs;->g()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string v3, "wifi_raw_level"

    invoke-virtual {v2}, Lvpadn/bs;->h()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 536
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    const-string v2, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v2, v1}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    const-string v2, "ms"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getFakeAdvertisingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 543
    const-string v1, "VponInterstitialAdController"

    const-string v2, "adRequest.getFakeAdvertisingId() != null"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v1, "bid"

    const-string v2, "8a808182447617bf0144d413a9e03da6"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getFakeAdvertisingId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lvpadn/au;->a(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    const-string v1, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v1, v0}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->isForceFakeAdvertisingId()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 549
    const-string v1, "ms"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 486
    :cond_13
    const-string v2, "gender"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 517
    :cond_14
    const-string v2, "VponInterstitialAdController"

    const-string v3, "Cannot get accs"

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 530
    :cond_15
    const-string v2, "VponInterstitialAdController"

    const-string v3, "vponWiFi.checkNetCardState() != WifiManager.WIFI_STATE_ENABLED or vponWiFi.isNetWorkState() return false"

    invoke-static {v2, v3}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 533
    :cond_16
    const-string v2, "VponInterstitialAdController"

    const-string v3, "Cannot get wifi info, currently use sim card network or don\'t have ACCESS_WIFI_STATE Permission"

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 551
    :cond_17
    const-string v1, "fake_secret"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method static synthetic a(Lvpadn/ah;)Lvpadn/ao;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    return-object v0
.end method

.method static synthetic a(Lvpadn/ah;Lvpadn/ax;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lvpadn/ah;->a(Lvpadn/ax;)V

    return-void
.end method

.method private a(Lvpadn/ax;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 742
    const-string v0, "VponInterstitialAdController"

    const-string v1, "------> prepareInterstitialAd()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 745
    iput-object p1, p0, Lvpadn/ah;->x:Lvpadn/ax;

    .line 746
    iget-object v0, p0, Lvpadn/ah;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->a()Ljava/lang/String;

    move-result-object v0

    .line 751
    iput-object v0, p0, Lvpadn/ah;->G:Ljava/lang/String;

    .line 752
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real get Interstitial Html:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lvpadn/ah;->G:Ljava/lang/String;

    invoke-direct {p0, v0}, Lvpadn/ah;->e(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lvpadn/ah;->K:Lvpadn/dd;

    if-nez v0, :cond_0

    .line 757
    :try_start_0
    new-instance v0, Lvpadn/dd;

    iget-object v1, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const-string v2, "vpadn_video_cache"

    const v3, 0x1c9c380

    invoke-direct {v0, v1, v2, v3}, Lvpadn/dd;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lvpadn/ah;->K:Lvpadn/dd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_0
    :goto_0
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 764
    const-string v1, "inst_no_cache_android"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 765
    if-eq v0, v4, :cond_2

    .line 766
    invoke-direct {p0}, Lvpadn/ah;->p()V

    .line 771
    :goto_1
    iget-boolean v0, p0, Lvpadn/ah;->M:Z

    if-nez v0, :cond_1

    .line 772
    iput-boolean v4, p0, Lvpadn/ah;->I:Z

    .line 773
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponAdReceived()V

    .line 778
    :cond_1
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Unable to create VpadnDiskLruCache."

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 768
    :cond_2
    const-string v0, "VponInterstitialAdController"

    const-string v1, "disable interstitial cache."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lvpadn/ah;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lvpadn/ah;->I:Z

    return p1
.end method

.method static synthetic b(Lvpadn/ah;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/ah;->y:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lvpadn/ah;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/ah;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lvpadn/ah;->t()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 668
    :try_start_0
    const-string v0, "VponInterstitialAdController"

    const-string v1, "call parseHtmlMIConfig"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v0, "MI_CONFIG_START"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 670
    const-string v1, "MI_CONFIG_START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 671
    const-string v2, "MI_CONFIG_END"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 672
    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 673
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get MI Config from interstitial html: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    .line 677
    const-string v0, "inst_lock_back_key"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    const-string v0, "inst_lock_back_key"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 680
    :cond_0
    const-string v3, "inst_lock_back_key"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    const-string v3, "VponInterstitialAdController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] general interstitial lock back key: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_lock_back_key"

    .line 682
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_1
    :goto_0
    const-string v0, "inst_close_button_size"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    const-string v0, "inst_close_button_size"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    const-string v3, "close_btn_small"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "close_btn_big"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 691
    :cond_2
    const-string v3, "inst_close_button_size"

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    const-string v3, "VponInterstitialAdController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] general interstitial close button size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_close_button_size"

    .line 693
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3
    :goto_1
    const-string v0, "inst_send_imp_policy"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    const-string v0, "inst_send_imp_policy"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    const-string v3, "call_show_func"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "page_finished"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "js_side"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 702
    :cond_4
    const-string v3, "inst_send_imp_policy"

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    const-string v3, "VponInterstitialAdController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] general interstitial send impression url policy: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_send_imp_policy"

    .line 704
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_5
    :goto_2
    const-string v0, "inst_no_cache_android"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 711
    const-string v0, "inst_no_cache_android"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 713
    :cond_6
    const-string v3, "inst_no_cache_android"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    const-string v3, "VponInterstitialAdController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] interstitial no cache: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_no_cache_android"

    .line 715
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_7
    :goto_3
    const-string v0, "inst_close_button_delay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 722
    const-string v0, "inst_close_button_delay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_d

    .line 724
    const-string v1, "inst_close_button_delay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    const-string v1, "VponInterstitialAdController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[special inst] general interstitial close button delay: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "inst_close_button_delay"

    .line 726
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_8
    :goto_4
    return-void

    .line 684
    :cond_9
    const-string v3, "VponInterstitialAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] general interstitial lock back key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this value is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIConfig throw JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 695
    :cond_a
    :try_start_1
    const-string v3, "VponInterstitialAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] general interstitial close button size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this size is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 733
    :catch_1
    move-exception v0

    .line 734
    const-string v0, "VponInterstitialAdController"

    const-string v1, "do not receive MIConfig parameter."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 706
    :cond_b
    :try_start_2
    const-string v3, "VponInterstitialAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] general interstitial send impression url policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this policy is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 735
    :catch_2
    move-exception v0

    .line 736
    const-string v1, "VponInterstitialAdController"

    const-string v2, "parseHtmlMIConfig throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 717
    :cond_c
    :try_start_3
    const-string v3, "VponInterstitialAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] interstitial no cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this value is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 728
    :cond_d
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[special inst] general interstitial close button delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(this value is not supported by SDK)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4
.end method

.method static synthetic e(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lvpadn/ah;->q()V

    return-void
.end method

.method static synthetic f(Lvpadn/ah;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/ah;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lvpadn/ah;)Lvpadn/df;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    return-object v0
.end method

.method static synthetic h(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lvpadn/ah;->r()V

    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    .line 291
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lvpadn/ah;->x:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ah;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lvpadn/ah;->g:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    if-eqz v0, :cond_2

    .line 295
    const-string v1, "&policy=call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------->>>[interstitial] Send impression to server impressionUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    new-instance v1, Lvpadn/am;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lvpadn/ah;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Lvpadn/am;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 300
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lvpadn/am;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lvpadn/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string v1, "VponInterstitialAdController"

    const-string v2, "sendImpressionToServer throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 308
    :cond_2
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Cannot get interstitial impression URL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponPresent()V

    .line 340
    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 782
    const-string v0, "VponInterstitialAdController"

    const-string v1, "call doWebViewCache"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 785
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 786
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    .line 789
    :cond_0
    new-instance v0, Lvpadn/df;

    const-string v1, "InterstitialAdWebViewCache"

    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    .line 790
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/df;->setAcceptThirdPartyCookiesEnable(Z)V

    .line 792
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 793
    new-instance v1, Lvpadn/ah$3;

    invoke-direct {v1, p0}, Lvpadn/ah$3;-><init>(Lvpadn/ah;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 797
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 800
    iget-boolean v0, p0, Lvpadn/ah;->M:Z

    if-nez v0, :cond_0

    .line 801
    iget-boolean v0, p0, Lvpadn/ah;->I:Z

    if-nez v0, :cond_0

    .line 802
    const-string v0, "VponInterstitialAdController"

    const-string v1, "We discover that you loaded an interstitial ad then displayed it immediately. Loading the ad in advance before you intend to call show() can ensure that your app has a fully loaded interstitial ad at the ready when the time comes to display one.\n"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_0
    return-void

    .line 808
    :cond_0
    const-string v0, "VponInterstitialAdController"

    const-string v1, "---> CALL asyncLoadHtmlToWebViewByUrl()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :try_start_0
    new-instance v1, Lvpadn/ah$4;

    invoke-direct {v1, p0}, Lvpadn/ah$4;-><init>(Lvpadn/ah;)V

    .line 827
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 828
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    const-string v1, "VponInterstitialAdController"

    const-string v2, "asyncLoadHtmlToWebViewByUrl throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 830
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private r()V
    .locals 5

    .prologue
    .line 838
    iget-object v0, p0, Lvpadn/ah;->b:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const-string v0, "VponInterstitialAdController"

    const-string v1, "[Interstitial] bannerId is blank"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 845
    :cond_0
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/br;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 847
    iget-object v0, p0, Lvpadn/ah;->g:Ljava/util/Map;

    const-string v1, "url_type_banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 848
    if-eqz v0, :cond_3

    .line 850
    :try_start_0
    new-instance v1, Lvpadn/an;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lvpadn/ah;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Lvpadn/an;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 852
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lvpadn/an;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 874
    :cond_1
    :goto_0
    return-void

    .line 854
    :cond_2
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lvpadn/an;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    const-string v1, "VponInterstitialAdController"

    const-string v2, "sendRequestToServer : VponRequestAsyncTask throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 860
    :cond_3
    const-string v0, "VponInterstitialAdController"

    const-string v1, "[Interstitial] mUrlMap.get(VponControllerInterface.URL_TYPE_BANNER) return null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0

    .line 868
    :cond_4
    const-string v0, "VponInterstitialAdController"

    const-string v1, "[Interstitial] permission-checking is failed!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lvpadn/ah;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ah;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvpadn/ah;->A:Z

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/ah$5;

    invoke-direct {v1, p0}, Lvpadn/ah$5;-><init>(Lvpadn/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 896
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 899
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Cannot call createCloseButton."

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 1028
    iget-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 1029
    iget-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 1030
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    .line 1032
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponLeaveApplication()V

    .line 1092
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 8

    .prologue
    .line 345
    :try_start_0
    invoke-virtual {p0}, Lvpadn/ah;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    const-string v0, "VponInterstitialAdController"

    const-string v1, "[Interstitial] Device is not on-line"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NETWORK_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-object p1, p0, Lvpadn/ah;->q:Lcom/vpadn/ads/VpadnAdRequest;

    .line 355
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 357
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lvpadn/au;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 360
    const-string v1, "pf"

    iget-object v3, p0, Lvpadn/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v1, "pf"

    iget-object v3, p0, Lvpadn/ah;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    invoke-virtual {p0}, Lvpadn/ah;->d()V

    .line 364
    iget-wide v4, p0, Lvpadn/ah;->k:J

    .line 365
    iget-wide v6, p0, Lvpadn/ah;->l:J

    move-object v1, p0

    move-object v3, p1

    .line 366
    invoke-direct/range {v1 .. v7}, Lvpadn/ah;->a(Lorg/json/JSONObject;Lcom/vpadn/ads/VpadnAdRequest;JJ)Lorg/json/JSONObject;

    move-result-object v1

    .line 372
    const-string v2, "build"

    const-string v3, "71707102"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v2, "<!doctype html> <html> <head> <meta charset=\'utf-8\'/>\n<script type=\'text/javascript\' charset=\'utf-8\' src=\'http://m.vpon.com/sdk/vpadn-sdk-core-v1.js\'></script>\n<script type=\'text/javascript\' charset=\'utf-8\'>\nVPSDK_LoadSdkConstants( JSON_REPLACE1 );\nVPSDK_BuildAdReqUrl( JSON_REPLACE2 );\n</script><body></body></html>"

    .line 381
    const-string v3, "JSON_REPLACE1"

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v2, "JSON_REPLACE2"

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    const-string v0, "VponInterstitialAdController"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Lvpadn/df;

    const-string v1, "init"

    iget-object v3, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v3, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    .line 386
    iget-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    const-string v1, "file:///android_asset/www/vpon"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Interstitial]loadInitHtmlTemplate throw Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1054
    invoke-direct {p0}, Lvpadn/ah;->u()V

    .line 1055
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/ah$6;

    invoke-direct {v1, p0}, Lvpadn/ah$6;-><init>(Lvpadn/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1061
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1172
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0, p1, p2, p3}, Lvpadn/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VponInterstitialController.testSendJsonToVponCordovaPlugin return string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_0
    return-void

    .line 1176
    :cond_0
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Cannot call VponBannerController.testSendJsonToVponCordovaPlugin "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1067
    invoke-direct {p0}, Lvpadn/ah;->u()V

    .line 1068
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/ah$7;

    invoke-direct {v1, p0, p1}, Lvpadn/ah$7;-><init>(Lvpadn/ah;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1081
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/ah$1;

    invoke-direct {v1, p0, p1}, Lvpadn/ah$1;-><init>(Lvpadn/ah;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public cacheVideoByUrl(Lvpadn/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1107
    invoke-virtual {p1}, Lvpadn/p;->c()V

    .line 1108
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1109
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1111
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Call cacheVideoByUrl but can not use non-wifi environment"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lvpadn/ah;->K:Lvpadn/dd;

    invoke-virtual {v0, p2}, Lvpadn/dd;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_2

    .line 1116
    const-string v0, "VponInterstitialAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached Video already video url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-boolean v0, p0, Lvpadn/ah;->M:Z

    if-eqz v0, :cond_0

    .line 1118
    invoke-virtual {p0}, Lvpadn/ah;->l()V

    goto :goto_0

    .line 1121
    :cond_2
    iget-boolean v0, p0, Lvpadn/ah;->M:Z

    if-eqz v0, :cond_3

    .line 1122
    iget-object v0, p0, Lvpadn/ah;->K:Lvpadn/dd;

    invoke-static {p0, v0}, Lvpadn/dc;->a(Lvpadn/db$a;Lvpadn/dd;)Lvpadn/db;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ah;->L:Lvpadn/db;

    .line 1127
    :goto_1
    :try_start_0
    iget-object v0, p0, Lvpadn/ah;->L:Lvpadn/db;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lvpadn/db;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    const-string v1, "VponInterstitialAdController"

    const-string v2, "cacheVideoByUrl : mVideoDownloadTask.execute throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1124
    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lvpadn/ah;->K:Lvpadn/dd;

    invoke-static {v0, v1}, Lvpadn/dc;->a(Lvpadn/db$a;Lvpadn/dd;)Lvpadn/db;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ah;->L:Lvpadn/db;

    goto :goto_1
.end method

.method public controlNativeVideoPlayer(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 1137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "intersitial controller cannot call controlNativeVideoPlayer "

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    const-string v0, "VponInterstitialAdController"

    const-string v1, "intersitial controller cannot call controlNativeVideoPlayer "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void

    .line 1138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dismissScreen(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lvpadn/ah;->B:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponDismiss()V

    .line 955
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/ah;->M:Z

    .line 127
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lvpadn/ah;->I:Z

    return v0
.end method

.method public j()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 564
    :try_start_0
    const-string v0, "VponInterstitialAdController"

    const-string v1, "------> showInterstitialAd()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-boolean v0, p0, Lvpadn/ah;->I:Z

    if-eqz v0, :cond_6

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ah;->I:Z

    .line 572
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 573
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 574
    const-string v0, "inst_send_imp_policy"

    invoke-virtual {v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    const-string v2, "call_show_func"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    const/4 v2, 0x1

    iput-boolean v2, p0, Lvpadn/ah;->u:Z

    .line 578
    :cond_0
    invoke-direct {p0}, Lvpadn/ah;->o()V

    .line 580
    new-instance v8, Landroid/content/Intent;

    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    const-class v3, Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v8, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    const/high16 v2, 0x10000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 582
    const/high16 v2, 0x10000000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 585
    const-string v2, "adType"

    const-string v3, "interstitial"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v2, "html"

    iget-object v3, p0, Lvpadn/ah;->G:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v2, "isMraidAd"

    iget-boolean v3, p0, Lvpadn/ah;->H:Z

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 588
    const-string v2, "isUseCustomClose"

    iget-boolean v3, p0, Lvpadn/ah;->A:Z

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 589
    const-string v2, "mIsSentImpToServer"

    iget-boolean v3, p0, Lvpadn/ah;->u:Z

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    const-string v3, "getControllerKey"

    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v1, v2, p0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    iget-object v1, p0, Lvpadn/ah;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lvpadn/ah;->D:I

    .line 596
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lvpadn/ah;->C:I

    .line 598
    const-string v1, "originalRequestedOrientation"

    iget v2, p0, Lvpadn/ah;->D:I

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    const-string v1, "beforeActivityOrientation"

    iget v2, p0, Lvpadn/ah;->C:I

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    const-string v1, "forceOrientation"

    iget-object v2, p0, Lvpadn/ah;->F:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v1, "isAllowOrientationChange"

    iget-boolean v2, p0, Lvpadn/ah;->E:Z

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 605
    const-string v2, "click_url"

    iget-object v1, p0, Lvpadn/ah;->g:Ljava/util/Map;

    const-string v3, "url_type_click"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v1, "call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    iget-object v0, p0, Lvpadn/ah;->g:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    if-eqz v0, :cond_7

    .line 610
    const-string v1, "impression_url"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_1
    :goto_0
    const-string v1, "url"

    iget-object v0, p0, Lvpadn/ah;->g:Ljava/util/Map;

    const-string v2, "url_type_banner"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lvpadn/ah;->x:Lvpadn/ax;

    if-eqz v0, :cond_2

    .line 620
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v4

    .line 621
    if-eqz v4, :cond_2

    .line 622
    iget-object v0, p0, Lvpadn/ah;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->c()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lvpadn/ah;->x:Lvpadn/ax;

    invoke-virtual {v1}, Lvpadn/ax;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lvpadn/br;->a(Ljava/lang/Double;Ljava/lang/Double;DD)I

    move-result v0

    .line 623
    const-string v1, "distance"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    :cond_2
    const-string v0, "session_id"

    invoke-virtual {p0}, Lvpadn/ah;->e()J

    move-result-wide v2

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 628
    const-string v0, "sequence_number"

    invoke-virtual {p0}, Lvpadn/ah;->f()J

    move-result-wide v2

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 630
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move v0, v6

    .line 632
    :goto_1
    const-string v1, "isFullScreen"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    invoke-virtual {v8, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 640
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 642
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 643
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->destroy()V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    .line 647
    :cond_3
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :cond_4
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 657
    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    iget-boolean v1, p0, Lvpadn/ah;->J:Z

    if-eqz v1, :cond_5

    const-string v1, "call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 659
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current send imp policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lvpadn/ah;->n()V

    .line 664
    :cond_5
    :goto_2
    return-void

    .line 568
    :cond_6
    :try_start_1
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Interstitial Banner is not ready, cannot call showInterstitial"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 657
    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    iget-boolean v1, p0, Lvpadn/ah;->J:Z

    if-eqz v1, :cond_5

    const-string v1, "call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 659
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current send imp policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lvpadn/ah;->n()V

    goto :goto_2

    .line 612
    :cond_7
    :try_start_2
    const-string v0, "VponInterstitialAdController"

    const-string v1, "[something wrong] !policy.equals(\"call_show_func\") && impressionUrl == null"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lvpadn/ah;->J:Z

    .line 652
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Don\'t add com.vpadn.widget.VpadnActivity to your AndroidManifest.xml"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 656
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 657
    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    iget-boolean v1, p0, Lvpadn/ah;->J:Z

    if-eqz v1, :cond_5

    const-string v1, "call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 659
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current send imp policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lvpadn/ah;->n()V

    goto/16 :goto_2

    :cond_8
    move v0, v7

    .line 630
    goto/16 :goto_1

    .line 653
    :catch_1
    move-exception v0

    .line 654
    :try_start_4
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInterstitialAd throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 656
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 657
    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    iget-boolean v1, p0, Lvpadn/ah;->J:Z

    if-eqz v1, :cond_5

    const-string v1, "call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 659
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current send imp policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lvpadn/ah;->n()V

    goto/16 :goto_2

    .line 656
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 657
    const-string v2, "inst_send_imp_policy"

    invoke-virtual {v0, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    iget-boolean v2, p0, Lvpadn/ah;->J:Z

    if-eqz v2, :cond_9

    const-string v2, "call_show_func"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 659
    const-string v2, "VponInterstitialAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current send imp policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lvpadn/ah;->n()V

    .line 662
    :cond_9
    throw v1
.end method

.method public k()V
    .locals 2

    .prologue
    .line 1036
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Call webViewHandleDestroy()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-direct {p0}, Lvpadn/ah;->u()V

    .line 1039
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 1041
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 1042
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 1043
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    .line 1046
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/ah;->f:Z

    .line 1048
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/ah$8;

    invoke-direct {v1, p0}, Lvpadn/ah$8;-><init>(Lvpadn/ah;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1155
    return-void
.end method

.method public leaveApplicationFromVponActivity()V
    .locals 0

    .prologue
    .line 1085
    invoke-direct {p0}, Lvpadn/ah;->v()V

    .line 1086
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/ah$2;

    invoke-direct {v1, p0}, Lvpadn/ah$2;-><init>(Lvpadn/ah;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1168
    return-void
.end method

.method public notifyClickFailed()V
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->clickFailed()V

    .line 1193
    :cond_0
    return-void
.end method

.method public notifyClickOk()V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->clickOK()V

    .line 1186
    :cond_0
    return-void
.end method

.method public notifyImpressionFailed()V
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impFailed()V

    .line 1207
    :cond_0
    return-void
.end method

.method public notifyImpressionOk()V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impOk()V

    .line 1200
    :cond_0
    return-void
.end method

.method public onExpandModePressBackKey()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method public onVideoTrackComplete(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_COMPLETE(Ljava/lang/String;I)V

    .line 1242
    :cond_0
    return-void
.end method

.method public onVideoTrackFirstQuartile(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_4_1(Ljava/lang/String;I)V

    .line 1221
    :cond_0
    return-void
.end method

.method public onVideoTrackMidpoint(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_2_1(Ljava/lang/String;I)V

    .line 1228
    :cond_0
    return-void
.end method

.method public onVideoTrackProgressTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vpadn/ads/DebugListener;->VT_PROGRESSTIME(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1256
    :cond_0
    return-void
.end method

.method public onVideoTrackReplay(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_REPLAY(Ljava/lang/String;I)V

    .line 1249
    :cond_0
    return-void
.end method

.method public onVideoTrackStart(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_START(Ljava/lang/String;I)V

    .line 1214
    :cond_0
    return-void
.end method

.method public onVideoTrackThirdQuartile(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_4_3(Ljava/lang/String;I)V

    .line 1235
    :cond_0
    return-void
.end method

.method public onVponBannerImpression(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 144
    const-string v0, "VponInterstitialAdController"

    const-string v1, "call onVponBannerImpression SUCCESS"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lvpadn/ah;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->e()V

    .line 146
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impOk()V

    .line 147
    :cond_0
    return-void
.end method

.method public onVponBannerImpressionFailed(Lvpadn/aj;)V
    .locals 2

    .prologue
    .line 151
    const-string v0, "VponInterstitialAdController"

    const-string v1, "call onVponBannerImpression Failed"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lvpadn/ah;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->e()V

    .line 153
    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ah;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impFailed()V

    .line 154
    :cond_0
    return-void
.end method

.method public onWebViewChangeToInvisible()V
    .locals 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lvpadn/ah;->h:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ah;->h:Z

    .line 211
    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/ah;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onWebViewChangeToVisible()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lvpadn/ah;->h:Z

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/ah;->h:Z

    .line 200
    const-string v0, "onshow"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/ah;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onWebViewLayoutChanged(IIII)V
    .locals 7

    .prologue
    .line 254
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 257
    iget-object v1, p0, Lvpadn/ah;->w:Lvpadn/df;

    invoke-virtual {v1, v0}, Lvpadn/df;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 258
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 259
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 260
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 261
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    iget-object v4, p0, Lvpadn/ah;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 262
    const-string v4, "VponInterstitialAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wDip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hDip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    iget-object v4, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v5, "x"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v4, "y"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v2, "w"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    const-string v2, "h"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string v0, "ad_pos_change"

    iget-object v1, p0, Lvpadn/ah;->j:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lvpadn/ah;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    const-string v0, "VponInterstitialAdController"

    const-string v1, "onWebViewLayoutChanged throw exception"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWebViewLoadPageFinish(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    const-string v0, "VponInterstitialAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebViewLoadPageFinish vponWebViewId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    if-eqz v0, :cond_1

    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lvpadn/ah;->v:Lvpadn/df;

    const-string v1, "init-finish"

    invoke-virtual {v0, v1}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 221
    const-string v0, "VponInterstitialAdController"

    const-string v1, "Load init html template finish"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    const-string v0, "InterstitialAdWebViewCache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 224
    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    const-string v1, "VponInterstitialAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current send imp policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", current webview: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "InterstitialAdWebViewCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ah;->I:Z

    .line 279
    return-void
.end method

.method public onWebViewSizeChanged(II)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lvpadn/ah;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ah;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 244
    iget-boolean v0, p0, Lvpadn/ah;->A:Z

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lvpadn/ah;->s()V

    .line 250
    :cond_0
    return-void
.end method

.method public playVideoOnNativePlayer(Lvpadn/p;Lvpadn/cr;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1102
    const-string v0, "VponInterstitialAdController"

    const-string v1, "VponInterstitialAdController.playVideoOnNativePlayer is not support"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
