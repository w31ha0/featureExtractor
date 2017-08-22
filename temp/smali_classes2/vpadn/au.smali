.class public Lvpadn/au;
.super Ljava/lang/Object;
.source "DeviceDataCollector.java"


# static fields
.field private static a:Lvpadn/au;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lvpadn/au;

    invoke-direct {v0}, Lvpadn/au;-><init>()V

    sput-object v0, Lvpadn/au;->a:Lvpadn/au;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "00000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lvpadn/au;->b:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/au;->c:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lvpadn/au;->d:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private A(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 907
    if-nez p1, :cond_1

    .line 908
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 915
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentApiVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 917
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 918
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 919
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 920
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 921
    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 927
    :goto_1
    int-to-float v2, v2

    invoke-static {v2, p2}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 928
    int-to-float v0, v0

    invoke-static {v0, p2}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 930
    const-string v3, "s_w"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 931
    const-string v2, "s_h"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v0, v1

    .line 937
    :goto_2
    return-object v0

    .line 923
    :cond_0
    invoke-static {p2}, Lvpadn/bm;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 924
    invoke-static {p2}, Lvpadn/bm;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 932
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 933
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 934
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addScreenWidthAndHeight throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 932
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_1
    move-object v1, p1

    goto/16 :goto_0
.end method

.method private B(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 942
    if-nez p1, :cond_0

    .line 943
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 947
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 948
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lvpadn/au;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " metrics.densityDpi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " metrics.density:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v2, "u_sd"

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 955
    :goto_1
    return-object v0

    .line 951
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 952
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 953
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDensity throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 951
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 372
    if-nez p2, :cond_0

    .line 373
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    :try_start_1
    const-string v1, "advertising_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    :goto_1
    return-object v0

    .line 382
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    .line 383
    :goto_2
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdvertisingId throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 382
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static a()Lvpadn/au;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lvpadn/au;->a:Lvpadn/au;

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    const-string v0, "DeviceDataCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set advertisingId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-object p1, p0, Lvpadn/au;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1024
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1025
    :cond_0
    const-string p1, ""

    .line 1031
    :cond_1
    :goto_0
    return-object p1

    .line 1027
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1028
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 993
    check-cast p1, Landroid/app/Activity;

    .line 994
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 995
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 997
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 998
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 999
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1003
    :goto_0
    return v0

    .line 1001
    :cond_0
    const-string v0, "DeviceDataCollector"

    const-string v1, "getStatusBarHeight ERROR (w != null && w.getDecorView() != null) is false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 1007
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 1008
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 1009
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1010
    invoke-direct {p0, p1}, Lvpadn/au;->d(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private declared-synchronized g()V
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lvpadn/au;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lvpadn/au;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()Z
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvpadn/au;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v1

    .line 348
    const-string v2, "advertising_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :goto_1
    return-object v0

    .line 349
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 350
    :goto_2
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdvertisingId throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 349
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private n(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v1

    .line 362
    const-string v2, "gaid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :goto_1
    return-object v0

    .line 363
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 364
    :goto_2
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addGaid throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 363
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private o(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    :try_start_1
    const-string v1, "limit_ad_tracking"

    invoke-direct {p0}, Lvpadn/au;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    :goto_1
    return-object v0

    .line 395
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 396
    :goto_2
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLimitAdTracking throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 395
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private p(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 416
    const-string v2, "lac"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    :goto_1
    return-object v0

    .line 418
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 419
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLac throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 418
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private q(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    :try_start_1
    const-string v1, "output"

    const-string v2, "html"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    :goto_1
    return-object v0

    .line 434
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 435
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAcceptAdFormat throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 434
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private r(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bp;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v2, "cell_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    :goto_1
    return-object v0

    .line 451
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 452
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCellId throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 451
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private s(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 462
    if-nez p1, :cond_1

    .line 463
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 465
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_0

    .line 467
    const-string v2, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 468
    const-string v2, "lon"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 469
    const-string v2, "loc_acc"

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 470
    const-string v2, "latlon_age"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 481
    :goto_1
    return-object v0

    .line 472
    :cond_0
    const-string v1, "DeviceDataCollector"

    const-string v2, "VponLocation.instance(context).getLocation() return null"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 476
    :catch_0
    move-exception v1

    .line 477
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLatLonAccuracy throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 476
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private t(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 486
    if-nez p1, :cond_1

    .line 487
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bm;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    .line 491
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 494
    const-string v2, "bssid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    :cond_0
    :goto_1
    return-object v0

    .line 497
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 498
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBSSId throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 497
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private u(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 507
    if-nez p1, :cond_1

    .line 508
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bm;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_0

    .line 512
    const-string v2, "and_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :cond_0
    :goto_1
    return-object v0

    .line 516
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 517
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAndroidId throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 516
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private v(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 582
    if-nez p1, :cond_9

    .line 583
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 588
    const-string v1, "cal"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 589
    const-string v1, "m2"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 590
    const-string v1, "a"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 592
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v1, v3, :cond_8

    const/4 v1, 0x1

    .line 593
    :goto_1
    if-eqz v1, :cond_0

    .line 594
    const-string v1, "inv"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 598
    :cond_0
    invoke-static {p2}, Lvpadn/br;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    const-string v1, "locC"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 602
    :cond_1
    invoke-static {p2}, Lvpadn/br;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 603
    const-string v1, "locF"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 611
    :cond_2
    invoke-static {p2}, Lvpadn/bm;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    const-string v1, "cam"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 615
    :cond_3
    invoke-static {p2}, Lvpadn/bm;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    const-string v1, "ph"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 617
    const-string v1, "sms"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 620
    :cond_4
    invoke-static {p2}, Lvpadn/bm;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    const-string v1, "comp"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 624
    :cond_5
    invoke-static {p2}, Lvpadn/br;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 625
    const-string v1, "fw"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 629
    :cond_6
    const-string v1, "fr"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 631
    invoke-static {p2}, Lvpadn/bm;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 632
    const-string v1, "banInv"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 635
    :cond_7
    const-string v1, "vid"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 638
    const-string v1, "vid2"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 641
    const-string v1, "vid3"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 645
    const-string v1, "vid4"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 649
    const-string v1, "vid5"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 651
    const-string v1, "cap"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 658
    :goto_2
    return-object v0

    .line 592
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 653
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 654
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 655
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCapabilities throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 653
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_9
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private w(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bm;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvpadn/au;->d:Ljava/lang/String;

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".android."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/au;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    :goto_1
    return-object v0

    .line 700
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 701
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppName throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 700
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private x(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 715
    const-string v2, "msid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    :goto_1
    return-object v0

    .line 717
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 718
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageName throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 717
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private y(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 728
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    :try_start_1
    const-string v1, "format"

    const-string v2, "html"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    :goto_1
    return-object v0

    .line 733
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 734
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 735
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOutputFomat throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 733
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private z(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 743
    if-nez p1, :cond_0

    .line 744
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-static {p2}, Lvpadn/bp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 751
    const-string v3, "n_mnc"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    const-string v1, "n_mcc"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    :goto_1
    return-object v0

    .line 754
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 755
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMncMCC throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 754
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1073
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1074
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1075
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1076
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    const-string v1, "DeviceDataCollector"

    const-string v2, "encrypt String MD5 Error: MessageDigest.getInstance(\'MD5\')"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1081
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :cond_0
    invoke-direct {p0, p2, p1}, Lvpadn/au;->A(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->l(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0, p1}, Lvpadn/au;->B(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->k(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->i(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->j(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->h(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->g(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0, p1}, Lvpadn/au;->v(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->f(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0, p1}, Lvpadn/au;->n(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0, p1}, Lvpadn/au;->o(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 184
    if-nez p3, :cond_0

    .line 185
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :cond_0
    invoke-direct {p0, p3, p2}, Lvpadn/au;->s(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0, p2}, Lvpadn/au;->r(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    invoke-direct {p0, v0, p2}, Lvpadn/au;->p(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    invoke-direct {p0, p1, v0, p2}, Lvpadn/au;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0, p2}, Lvpadn/au;->o(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method a(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 527
    if-nez p1, :cond_1

    .line 528
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bm;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_0

    .line 532
    const-string v2, "open_udid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    :cond_0
    :goto_1
    return-object v0

    .line 535
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 536
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOpenUdid throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 535
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvpadn/au$1;

    invoke-direct {v1, p0, p1}, Lvpadn/au$1;-><init>(Lvpadn/au;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 280
    return-void
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/au;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 86
    if-nez p2, :cond_0

    .line 87
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 90
    :cond_0
    invoke-direct {p0, p2, p1}, Lvpadn/au;->A(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->l(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0, p1}, Lvpadn/au;->B(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->k(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->i(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->j(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->h(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->g(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->f(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0, p1}, Lvpadn/au;->z(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->e(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0, p1}, Lvpadn/au;->y(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0, p1}, Lvpadn/au;->x(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0, p1}, Lvpadn/au;->w(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->d(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0, p1}, Lvpadn/au;->v(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0, p1}, Lvpadn/au;->q(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method b(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 545
    if-nez p1, :cond_1

    .line 546
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 548
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_0

    .line 550
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string v2, "mac"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    :goto_1
    return-object v0

    .line 554
    :cond_0
    const-string v1, "DeviceDataCollector"

    const-string v2, " VponDevice.getMac(context) is null"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 556
    :catch_0
    move-exception v1

    .line 557
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMacAddress throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 556
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "DeviceDataCollector"

    const-string v1, "createThreadToGetAdvertisingId"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lvpadn/au;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const-string v0, "DeviceDataCollector"

    const-string v1, "isExistGooglePlayServiceClass return true"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "DeviceDataCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGooglePlayServicesAvailable return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    .line 301
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 319
    :goto_0
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvpadn/au;->b(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    .line 322
    if-eqz v0, :cond_2

    .line 323
    invoke-direct {p0}, Lvpadn/au;->g()V

    .line 340
    :cond_0
    :goto_1
    return-void

    .line 302
    :catch_0
    move-exception v1

    .line 303
    const-string v2, "DeviceDataCollector"

    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo return Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    const-string v1, "DeviceDataCollector"

    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo return NoClassDefFoundError"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    invoke-static {p1}, Lvpadn/bb;->a(Landroid/content/Context;)Lvpadn/bb$a;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lvpadn/bb$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvpadn/au;->b(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Lvpadn/bb$a;->b()Z

    move-result v0

    .line 312
    if-eqz v0, :cond_1

    .line 313
    invoke-direct {p0}, Lvpadn/au;->g()V

    goto :goto_1

    .line 315
    :cond_1
    invoke-direct {p0}, Lvpadn/au;->h()V

    goto :goto_1

    .line 325
    :cond_2
    invoke-direct {p0}, Lvpadn/au;->h()V

    goto :goto_1

    .line 329
    :cond_3
    const-string v0, "DeviceDataCollector"

    const-string v1, "isExistGooglePlayServiceClass return false"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Lvpadn/bb;->a(Landroid/content/Context;)Lvpadn/bb$a;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lvpadn/bb$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvpadn/au;->b(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lvpadn/bb$a;->b()Z

    move-result v0

    .line 334
    if-eqz v0, :cond_4

    .line 335
    invoke-direct {p0}, Lvpadn/au;->g()V

    goto :goto_1

    .line 337
    :cond_4
    invoke-direct {p0}, Lvpadn/au;->h()V

    goto :goto_1
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/au;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lvpadn/au;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 124
    :cond_0
    :try_start_0
    const-string v0, "account"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 126
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 128
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 129
    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "DeviceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountsJSONData throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_1
    return-object p2
.end method

.method c(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 567
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    :try_start_1
    const-string v1, "imei"

    invoke-static {p2}, Lvpadn/bm;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v1, "DeviceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMEI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_1
    return-object v0

    .line 572
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 573
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIMEI throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 572
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1037
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 1038
    if-nez v1, :cond_0

    .line 1039
    const-string v1, "DeviceDataCollector"

    const-string v2, "isGooglePlayServicesAvailable == ConnectionResult.SUCCESS"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v0, 0x1

    .line 1048
    :goto_0
    return v0

    .line 1042
    :cond_0
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGooglePlayServicesAvailable result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    const-string v1, "DeviceDataCollector"

    const-string v2, "isGooglePlayServicesAvailable throw Exception"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/au;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lvpadn/au;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 161
    if-nez p2, :cond_0

    .line 162
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lvpadn/au;->a(Landroid/content/Context;)V

    .line 166
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0, p2, p1}, Lvpadn/au;->c(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->b(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    invoke-direct {p0, v0, p1}, Lvpadn/au;->u(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0, p1}, Lvpadn/au;->t(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 173
    :cond_1
    invoke-direct {p0, p2, p1}, Lvpadn/au;->s(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0, p1}, Lvpadn/au;->r(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0, p1}, Lvpadn/au;->p(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0, p1}, Lvpadn/au;->m(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0, p1}, Lvpadn/au;->o(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    return-object v0
.end method

.method d(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 665
    if-nez p1, :cond_2

    .line 666
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 669
    :goto_0
    :try_start_1
    const-string v1, "DeviceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.os.Build.PRODUCT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "google_sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    .line 671
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    :cond_0
    const-string v1, "simulator"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 682
    :goto_1
    return-object v0

    .line 674
    :cond_1
    const-string v1, "simulator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 677
    :catch_0
    move-exception v1

    .line 678
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIsRunInSimulator throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 677
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public e(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 218
    if-nez p2, :cond_0

    .line 219
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lvpadn/au;->a(Landroid/content/Context;)V

    .line 223
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0, p2, p1}, Lvpadn/au;->c(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->b(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0, p1}, Lvpadn/au;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    invoke-direct {p0, v0, p1}, Lvpadn/au;->u(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 228
    invoke-direct {p0, v0, p1}, Lvpadn/au;->t(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 230
    :cond_1
    invoke-direct {p0, p2, p1}, Lvpadn/au;->m(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 231
    invoke-direct {p0, v0, p1}, Lvpadn/au;->o(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method e(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 764
    if-nez p1, :cond_0

    .line 765
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bp;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-static {p2}, Lvpadn/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 773
    const-string v3, "mnc"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string v1, "mcc"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    :goto_1
    return-object v0

    .line 776
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 777
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 778
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSimMncMCC throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 776
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 283
    const/4 v0, 0x1

    .line 285
    :try_start_0
    const-string v1, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1014
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1015
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1016
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    invoke-direct {p0, v1}, Lvpadn/au;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lvpadn/au;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method f(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 786
    if-nez p1, :cond_0

    .line 787
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bm;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 791
    const-string v2, "os_v"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 798
    :goto_1
    return-object v0

    .line 793
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 794
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 795
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOsVersion throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 793
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method g(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v2, 0x2

    .line 803
    if-nez p1, :cond_1

    .line 804
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 807
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bm;->l(Landroid/content/Context;)I

    move-result v1

    .line 808
    if-ne v2, v1, :cond_0

    .line 809
    const-string v1, "u_o"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 819
    :goto_1
    return-object v0

    .line 811
    :cond_0
    const-string v1, "u_o"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 814
    :catch_0
    move-exception v1

    .line 815
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 816
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDeviceOrientation throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 814
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method h(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 824
    if-nez p1, :cond_0

    .line 825
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    :try_start_1
    const-string v1, "sdk"

    const-string v2, "vpadn-sdk-a-v4.6.5"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 835
    :goto_1
    return-object v0

    .line 830
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 831
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSDKVersion throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 830
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method i(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 840
    if-nez p1, :cond_0

    .line 841
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    :try_start_1
    invoke-static {p2}, Lvpadn/bp;->g(Landroid/content/Context;)I

    move-result v1

    .line 845
    const-string v2, "ni"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 852
    :goto_1
    return-object v0

    .line 847
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 848
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 849
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNetworkType throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 847
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method j(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 857
    :try_start_0
    invoke-static {p2}, Lvpadn/bp;->g(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 873
    :goto_0
    return-object p1

    .line 861
    :cond_0
    if-nez p1, :cond_1

    .line 862
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_1
    :try_start_1
    invoke-static {p2}, Lvpadn/bp;->h(Landroid/content/Context;)I

    move-result v1

    .line 866
    const-string v2, "nis"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object p1, v0

    .line 873
    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 869
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 870
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTelephoneSimNetworkType throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 868
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method k(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 878
    if-nez p1, :cond_3

    .line 879
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 882
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 883
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 884
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 885
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 886
    :cond_0
    const-string v1, "lang"

    const-string v2, "zh_TW"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    :goto_1
    return-object v0

    .line 887
    :cond_1
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    const-string v1, "lang"

    const-string v2, "zh_CN"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 896
    :catch_0
    move-exception v1

    .line 897
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 898
    const-string v2, "DeviceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDeviceLanguage throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 893
    :cond_2
    :try_start_2
    const-string v1, "lang"

    const-string v2, "en_US"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 896
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public l(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 959
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 961
    if-nez p1, :cond_0

    .line 962
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object p1, v0

    .line 966
    :cond_0
    invoke-static {p2}, Lvpadn/bm;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 967
    invoke-static {p2}, Lvpadn/bm;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 968
    invoke-direct {p0, p2}, Lvpadn/au;->d(Landroid/content/Context;)I

    move-result v2

    .line 969
    invoke-direct {p0, p2}, Lvpadn/au;->e(Landroid/content/Context;)I

    move-result v3

    .line 973
    int-to-float v0, v0

    invoke-static {v0, p2}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 975
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v1, p2}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 978
    const-string v2, "u_w"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 979
    const-string v0, "u_h"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_0
    return-object p1

    .line 981
    :catch_0
    move-exception v0

    .line 982
    const-string v1, "DeviceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUnitWidthAndHeight throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 985
    :cond_1
    const-string v0, "DeviceDataCollector"

    const-string v1, "!(context instanceof Activity) can not add UnitWidthAndHeight to Device-JSONObject"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
