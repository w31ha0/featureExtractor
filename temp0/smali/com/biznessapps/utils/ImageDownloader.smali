.class public Lcom/biznessapps/utils/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;,
        Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;,
        Lcom/biznessapps/utils/ImageDownloader$FlushedInputStream;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_PURGE:I = 0x2710

.field private static final HARD_CACHE_CAPACITY:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "ImageDownloader"

.field private static final sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final purgeHandler:Landroid/os/Handler;

.field private final purger:Ljava/lang/Runnable;

.field private final sHardBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/biznessapps/utils/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lcom/biznessapps/utils/ImageDownloader$1;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/biznessapps/utils/ImageDownloader$1;-><init>(Lcom/biznessapps/utils/ImageDownloader;IFZ)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    .line 326
    new-instance v0, Lcom/biznessapps/utils/ImageDownloader$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/ImageDownloader$2;-><init>(Lcom/biznessapps/utils/ImageDownloader;)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageDownloader;->purger:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/utils/ImageDownloader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/ImageDownloader;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/ImageDownloader;->createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/utils/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/utils/ImageDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/utils/ImageDownloader;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ImageView;)Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/biznessapps/utils/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/biznessapps/utils/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 337
    if-eqz p2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    monitor-exit v1

    .line 342
    :cond_0
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-static {p1}, Lcom/biznessapps/utils/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    .line 110
    .local v0, "bitmapDownloaderTask":Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
    if-eqz v0, :cond_1

    .line 111
    invoke-static {v0}, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->access$000(Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "bitmapUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    :cond_0
    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->cancel(Z)Z

    .line 119
    .end local v1    # "bitmapUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 116
    .restart local v1    # "bitmapUrl":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "originalImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    const/16 v16, 0x0

    .line 423
    :goto_0
    return-object v16

    .line 399
    :cond_0
    const/high16 v20, 0x3f000000    # 0.5f

    .line 400
    .local v20, "imageReflectionRatio":F
    const/16 v22, 0x4

    .line 401
    .local v22, "reflectionGap":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 402
    .local v5, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 403
    .local v19, "height":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 404
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 405
    const/4 v3, 0x0

    move/from16 v0, v19

    int-to-float v2, v0

    mul-float v2, v2, v20

    float-to-int v4, v2

    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v6, v0

    mul-float v6, v6, v20

    sub-float/2addr v2, v6

    float-to-int v6, v2

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 408
    .local v23, "reflectionImage":Landroid/graphics/Bitmap;
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float v3, v3, v20

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 410
    .local v16, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 411
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 412
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 413
    .local v18, "deafaultPaint":Landroid/graphics/Paint;
    const v2, 0x106000d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    const/4 v2, 0x0

    add-int v3, v19, v22

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 415
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 416
    .local v21, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v22

    int-to-float v12, v2

    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 418
    .local v8, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 419
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 420
    const/4 v10, 0x0

    move/from16 v0, v19

    int-to-float v11, v0

    int-to-float v12, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v22

    int-to-float v13, v2

    move-object/from16 v9, v17

    move-object/from16 v14, v21

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private forceDownload(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "useImageReflection"    # Z

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {p1, p2}, Lcom/biznessapps/utils/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v1, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    invoke-direct {v1, p0, p2, p3}, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;-><init>(Lcom/biznessapps/utils/ImageDownloader;Landroid/widget/ImageView;Z)V

    .line 94
    .local v1, "task":Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
    new-instance v0, Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;

    invoke-direct {v0, v1}, Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;-><init>(Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;)V

    .line 95
    .local v0, "downloadedDrawable":Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const/16 v2, 0x9c

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 97
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static getBitmapDownloaderTask(Landroid/widget/ImageView;)Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 131
    check-cast v0, Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;

    .line 132
    .local v0, "downloadedDrawable":Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;->getBitmapDownloaderTask()Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    move-result-object v2

    .line 135
    .end local v0    # "downloadedDrawable":Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v3, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 352
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 355
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    monitor-exit v3

    move-object v2, v0

    .line 374
    :goto_0
    return-object v2

    .line 359
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    sget-object v2, Lcom/biznessapps/utils/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 363
    .local v1, "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 365
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 367
    goto :goto_0

    .line 359
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 370
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    sget-object v2, Lcom/biznessapps/utils/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetPurgeTimer()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/biznessapps/utils/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/biznessapps/utils/ImageDownloader;->purger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    iget-object v0, p0, Lcom/biznessapps/utils/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/biznessapps/utils/ImageDownloader;->purger:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/biznessapps/utils/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 383
    sget-object v0, Lcom/biznessapps/utils/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 384
    return-void
.end method

.method public download(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 51
    return-void
.end method

.method public download(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "useImageReflection"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/utils/ImageDownloader;->resetPurgeTimer()V

    .line 63
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/ImageDownloader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/utils/ImageDownloader;->forceDownload(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p1, p2}, Lcom/biznessapps/utils/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 69
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 139
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 140
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const/4 v3, 0x0

    .line 142
    .local v3, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 143
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .local v4, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 144
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 145
    .local v7, "statusCode":I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_0

    .line 146
    const-string v9, "ImageDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " while retrieving bitmap from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 186
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v8

    .line 151
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    :cond_0
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 152
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_4

    .line 153
    const/4 v5, 0x0

    .line 155
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 157
    new-instance v9, Lcom/biznessapps/utils/ImageDownloader$FlushedInputStream;

    invoke-direct {v9, v5}, Lcom/biznessapps/utils/ImageDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 159
    if-eqz v5, :cond_1

    .line 160
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    move-object v8, v9

    goto :goto_0

    .line 159
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_2

    .line 160
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 165
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 166
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    if-eqz v3, :cond_3

    .line 167
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 169
    :cond_3
    const-string v9, "ImageDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect passed url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    :cond_4
    move-object v3, v4

    .line 185
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_0

    .line 170
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v3, :cond_5

    .line 172
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 174
    :cond_5
    const-string v9, "ImageDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I/O error while retrieving bitmap from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_3
    if-eqz v3, :cond_6

    .line 177
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 179
    :cond_6
    const-string v9, "ImageDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v3, :cond_7

    .line 182
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 184
    :cond_7
    const-string v9, "ImageDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while retrieving bitmap from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 175
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 170
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 165
    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method
