.class public Lcom/mopub/common/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/util/DeviceUtils$IP;,
        Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    }
.end annotation


# static fields
.field private static final MAX_DISK_CACHE_SIZE:I = 0x6400000

.field private static final MAX_MEMORY_CACHE_SIZE:I = 0x1e00000

.field private static final MIN_DISK_CACHE_SIZE:I = 0x1e00000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diskCacheSizeBytes(Ljava/io/File;)J
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 127
    const-wide/32 v0, 0x1e00000

    invoke-static {p0, v0, v1}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static diskCacheSizeBytes(Ljava/io/File;J)J
    .locals 11
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minSize"    # J

    .prologue
    .line 113
    move-wide v4, p1

    .line 115
    .local v4, "size":J
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v0, v6, v8

    .line 117
    .local v0, "availableBytes":J
    const-wide/16 v6, 0x32

    div-long v4, v0, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "availableBytes":J
    .end local v3    # "statFs":Landroid/os/StatFs;
    :goto_0
    const-wide/32 v6, 0x6400000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const-wide/32 v8, 0x1e00000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    return-wide v6

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Unable to calculate 2% of available disk space, defaulting to minimum"

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "bestWidthPixels":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 216
    .local v1, "bestHeightPixels":Ljava/lang/Integer;
    const-string v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 218
    .local v7, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 219
    .local v3, "display":Landroid/view/Display;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_2

    .line 220
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 221
    .local v6, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v3, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 222
    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 223
    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 237
    .end local v6    # "screenSize":Landroid/graphics/Point;
    :goto_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 239
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 240
    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 243
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    return-object v8

    .line 226
    :cond_2
    :try_start_0
    new-instance v8, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v9, "getRawWidth"

    invoke-direct {v8, v3, v9}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v8}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 228
    new-instance v8, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v9, "getRawHeight"

    invoke-direct {v8, v3, v9}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v8}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v5

    .line 233
    .local v5, "e":Ljava/lang/Exception;
    const-string v8, "Display#getRawWidth/Height failed."

    invoke-static {v8, v5}, Lcom/mopub/common/logging/MoPubLog;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getHashedUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIpAddress(Lcom/mopub/common/util/DeviceUtils$IP;)Ljava/lang/String;
    .locals 1
    .param p0, "ip"    # Lcom/mopub/common/util/DeviceUtils$IP;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenOrientation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 132
    .local v1, "rotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 134
    .local v0, "deviceOrientation":I
    invoke-static {v1, v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientationFromRotationAndOrientation(II)I

    move-result v2

    return v2
.end method

.method static getScreenOrientationFromRotationAndOrientation(II)I
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "orientation"    # I

    .prologue
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 138
    if-ne v1, p1, :cond_0

    .line 139
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 162
    :goto_0
    :pswitch_0
    return v0

    .line 149
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 150
    packed-switch p0, :pswitch_data_1

    .line 158
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 161
    :cond_1
    const-string v1, "Unknown screen orientation. Defaulting to portrait."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    const-string v4, "android.permission.INTERNET"

    invoke-static {p0, v4}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v4}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    const/4 v3, 0x1

    goto :goto_0

    .line 86
    :cond_2
    :try_start_0
    const-string v4, "connectivity"

    .line 87
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    .local v0, "connnectionManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 89
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 90
    .end local v0    # "connnectionManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "creativeOrientation"    # Lcom/mopub/common/CreativeOrientation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 177
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 178
    .local v1, "currentRotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 180
    .local v2, "deviceOrientation":I
    invoke-static {v1, v2}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientationFromRotationAndOrientation(II)I

    move-result v0

    .line 184
    .local v0, "currentOrientation":I
    sget-object v5, Lcom/mopub/common/CreativeOrientation;->PORTRAIT:Lcom/mopub/common/CreativeOrientation;

    if-ne v5, p1, :cond_3

    .line 185
    const/16 v5, 0x9

    if-ne v5, v0, :cond_2

    .line 186
    const/16 v4, 0x9

    .line 201
    .local v4, "requestedOrientation":I
    :goto_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 188
    .end local v4    # "requestedOrientation":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "requestedOrientation":I
    goto :goto_1

    .line 190
    .end local v4    # "requestedOrientation":I
    :cond_3
    sget-object v5, Lcom/mopub/common/CreativeOrientation;->LANDSCAPE:Lcom/mopub/common/CreativeOrientation;

    if-ne v5, p1, :cond_0

    .line 191
    const/16 v5, 0x8

    if-ne v5, v0, :cond_4

    .line 192
    const/16 v4, 0x8

    .restart local v4    # "requestedOrientation":I
    goto :goto_1

    .line 194
    .end local v4    # "requestedOrientation":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "requestedOrientation":I
    goto :goto_1
.end method

.method public static memoryCacheSizeBytes(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0x400

    .line 96
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    int-to-long v4, v3

    .line 100
    .local v4, "memoryClass":J
    :try_start_0
    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string v8, "FLAG_LARGE_HEAP"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 101
    .local v2, "flagLargeHeap":I
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v2}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v8, "getLargeMemoryClass"

    invoke-direct {v3, v0, v8}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v4, v3

    .line 108
    .end local v2    # "flagLargeHeap":I
    :cond_0
    :goto_0
    const-wide/32 v8, 0x1e00000

    const-wide/16 v10, 0x8

    div-long v10, v4, v10

    mul-long/2addr v10, v12

    mul-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 109
    .local v6, "result":J
    long-to-int v3, v6

    return v3

    .line 104
    .end local v6    # "result":J
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unable to reflectively determine large heap size."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
