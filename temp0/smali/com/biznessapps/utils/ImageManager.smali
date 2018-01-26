.class public Lcom/biznessapps/utils/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/ImageManager$FlushedInputStream;,
        Lcom/biznessapps/utils/ImageManager$CustomButtonData;,
        Lcom/biznessapps/utils/ImageManager$TintContainer;,
        Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;,
        Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    }
.end annotation


# static fields
.field private static final LOAD_FACTOR:F = 0.75f

.field private static final LOG_TAG:Ljava/lang/String; = "ImageManager"

.field private static final MAX_LIGTH_CACHER_CAPACITY:I = 0x1e

.field private static final MAX_MAIN_CACHER_CAPACITY:I = 0xa

.field private static final VIEW_TASK_MAP_CAPACITY:I = 0xa


# instance fields
.field private customButtonData:Lcom/biznessapps/utils/ImageManager$CustomButtonData;

.field private lightHardRefCacher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private loadTasksQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/biznessapps/utils/ImageManager$ImageLoadTask;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainWeakRefCacher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private runningTasksQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/biznessapps/utils/ImageManager$ImageLoadTask;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useReflection:Z

.field private viewTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/utils/ImageManager$ImageLoadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/biznessapps/utils/ImageManager$1;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/biznessapps/utils/ImageManager$1;-><init>(Lcom/biznessapps/utils/ImageManager;IFZ)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager;->lightHardRefCacher:Ljava/util/Map;

    .line 99
    new-instance v0, Lcom/biznessapps/utils/ImageManager$2;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/biznessapps/utils/ImageManager$2;-><init>(Lcom/biznessapps/utils/ImageManager;IFZ)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager;->mainWeakRefCacher:Ljava/util/Map;

    .line 127
    new-instance v0, Lcom/biznessapps/utils/ImageManager$3;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/biznessapps/utils/ImageManager$3;-><init>(Lcom/biznessapps/utils/ImageManager;IFZ)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager;->viewTaskMap:Ljava/util/Map;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/utils/ImageManager;->useReflection:Z

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager;->loadTasksQueue:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager;->runningTasksQueue:Ljava/util/Map;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/utils/ImageManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/ImageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->lightHardRefCacher:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/utils/ImageManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/ImageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->mainWeakRefCacher:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/utils/ImageManager;Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/utils/ImageManager;
    .param p1, "x1"    # Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/utils/ImageManager;->saveOrRun(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/ImageManager$TintContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p1, "x1"    # Lcom/biznessapps/utils/ImageManager$TintContainer;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/biznessapps/utils/ImageManager;->composeDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/ImageManager$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/utils/ImageManager;Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/utils/ImageManager;
    .param p1, "x1"    # Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/utils/ImageManager;->launchNewTaskIfNeeded(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V

    return-void
.end method

.method private checkViewsTopicality(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 400
    if-eqz p1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager;->viewTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;

    .line 402
    .local v0, "task":Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    if-eqz v0, :cond_0

    .line 403
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->setHasLosedView(Z)V

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager;->viewTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v0    # "task":Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    :cond_1
    return-void
.end method

.method private static composeDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/ImageManager$TintContainer;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "level1"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Lcom/biznessapps/utils/ImageManager$TintContainer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 483
    const/4 v2, 0x2

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 484
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    aput-object p0, v1, v4

    .line 485
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/biznessapps/utils/ImageManager$TintContainer;->getTintColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v5

    .line 486
    aget-object v2, v1, v5

    invoke-virtual {p1}, Lcom/biznessapps/utils/ImageManager$TintContainer;->getTintOpacity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 487
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 488
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private static composeDrawable(Lcom/biznessapps/utils/ImageManager$TintContainer;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "tint"    # Lcom/biznessapps/utils/ImageManager$TintContainer;

    .prologue
    const/4 v4, 0x0

    .line 492
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 493
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/biznessapps/utils/ImageManager$TintContainer;->getTintColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v4

    .line 494
    aget-object v2, v1, v4

    invoke-virtual {p0}, Lcom/biznessapps/utils/ImageManager$TintContainer;->getTintOpacity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 495
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 496
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "originalImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    const/16 v16, 0x0

    .line 360
    :goto_0
    return-object v16

    .line 336
    :cond_0
    const/high16 v20, 0x3f000000    # 0.5f

    .line 337
    .local v20, "imageReflectionRatio":F
    const/16 v22, 0x4

    .line 338
    .local v22, "reflectionGap":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 339
    .local v5, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 340
    .local v19, "height":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 341
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 342
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

    .line 345
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

    .line 347
    .local v16, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 350
    .local v18, "deafaultPaint":Landroid/graphics/Paint;
    const v2, 0x106000d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    const/4 v2, 0x0

    add-int v3, v19, v22

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 352
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 353
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

    .line 355
    .local v8, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 356
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 357
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

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private launchNewTaskIfNeeded(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V
    .locals 8
    .param p1, "taskToRemove"    # Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v4, p0, Lcom/biznessapps/utils/ImageManager;->runningTasksQueue:Ljava/util/Map;

    monitor-enter v4

    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/biznessapps/utils/ImageManager;->runningTasksQueue:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v3, p0, Lcom/biznessapps/utils/ImageManager;->loadTasksQueue:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 379
    .local v2, "storedTasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/biznessapps/utils/ImageManager$ImageLoadTask;>;"
    iget-object v5, p0, Lcom/biznessapps/utils/ImageManager;->loadTasksQueue:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    :try_start_1
    iget-object v3, p0, Lcom/biznessapps/utils/ImageManager;->loadTasksQueue:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;

    .line 382
    .local v1, "newTask":Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    invoke-virtual {v1}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v6, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v6, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/biznessapps/utils/ImageManager;->loadTasksQueue:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-virtual {v1, v6}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    invoke-direct {p0, v1}, Lcom/biznessapps/utils/ImageManager;->storeImageLoadTask(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;)V

    .line 388
    .end local v1    # "newTask":Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    return-void

    .line 388
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 389
    .end local v2    # "storedTasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/biznessapps/utils/ImageManager$ImageLoadTask;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method private saveOrRun(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageLoadTask"    # Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 364
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->runningTasksQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->runningTasksQueue:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/ImageManager;->storeImageLoadTask(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->loadTasksQueue:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private storeImageLoadTask(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;)V
    .locals 3
    .param p1, "task"    # Lcom/biznessapps/utils/ImageManager$ImageLoadTask;

    .prologue
    .line 393
    invoke-virtual {p1}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->getView()Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager;->viewTaskMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->mainWeakRefCacher:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->lightHardRefCacher:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 251
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->loadTasksQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 252
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->runningTasksQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager;->customButtonData:Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .line 254
    return-void
.end method

.method public defineDrawableStructure(Ljava/lang/String;)Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    .locals 4
    .param p1, "buttomImage"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    if-nez p1, :cond_0

    .line 641
    const/4 v1, 0x0

    .line 712
    :goto_0
    return-object v1

    .line 643
    :cond_0
    const-string v1, "IOTmdMgAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_gray_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    :cond_1
    :goto_1
    move-object v1, v0

    .line 712
    goto :goto_0

    .line 645
    :cond_2
    const-string v1, "6OIX1gAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 646
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_blue_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto :goto_1

    .line 647
    :cond_3
    const-string v1, "Hi2+x6AAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 648
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_green_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto :goto_1

    .line 649
    :cond_4
    const-string v1, "OweKgAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 650
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_green_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto :goto_1

    .line 651
    :cond_5
    const-string v1, "bDLs+QAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 652
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_blue_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto :goto_1

    .line 653
    :cond_6
    const-string v1, "7wo+kAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 654
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_blue_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto :goto_1

    .line 655
    :cond_7
    const-string v1, "KlTeXW6gAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 656
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_purple_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto :goto_1

    .line 657
    :cond_8
    const-string v1, "X73BbwEGAAiwWzbf/TokAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 658
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_orange_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto :goto_1

    .line 659
    :cond_9
    const-string v1, "+8CDACMseYJGAH4fwAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 660
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_blue_turquoise_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 661
    :cond_a
    const-string v1, "ADUXgBOozxYZQAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 662
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_turquoise_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 663
    :cond_b
    const-string v1, "4IsAAVi10QtNWoUYAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 664
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_white_gray_src:I

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(IIZ)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 665
    :cond_c
    const-string v1, "PwUYAIXg5w17P5dCAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 666
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_gray_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 667
    :cond_d
    const-string v1, "cFPAQYA4aeuzu4JEkUAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 668
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_dark_blue_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 669
    :cond_e
    const-string v1, "7ghwADACN3Mm5BI/5wAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 670
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_pink_red_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 671
    :cond_f
    const-string v1, "f4IcAAJvF/WWrFyAEAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 672
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_dark_green_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 673
    :cond_10
    const-string v1, "EGAAF4Hu7F/OFIAAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 674
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_bright_green_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 675
    :cond_11
    const-string v1, "AfYVHUm3ZDfAAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 676
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_dark_blue_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 677
    :cond_12
    const-string v1, "gjwAAygVj5tPK8KAAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 678
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_drak_orange_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 679
    :cond_13
    const-string v1, "AAwD23VzxkcobXAAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 680
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_yellow_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 681
    :cond_14
    const-string v1, "4MfAgwAlvBaRNN5LLAAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 682
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_red_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 683
    :cond_15
    const-string v1, "43AJXtmVNzLWzTAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 684
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_bright_pink_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 685
    :cond_16
    const-string v1, "fBTgAEAds9aDVOX220AAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 686
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_bright_pink_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 687
    :cond_17
    const-string v1, "Wk72zwS4ABAKaCjYgOczy1AAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 688
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_bright_light_dark_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 689
    :cond_18
    const-string v1, "spmbvp/wswAB4hrpJtrLrXAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 690
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon1_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 691
    :cond_19
    const-string v1, "1Y9W62/wUYAO/rWvIpTePSAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 692
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon2_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 693
    :cond_1a
    const-string v1, "6Lr0v8CDAArgqZvk9gFAAAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 694
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon3_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 695
    :cond_1b
    const-string v1, "9rJsJ0DvtPwIMAJouqsqC4IooAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 696
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon4_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 697
    :cond_1c
    const-string v1, "CFxlqRr/nwADAMDebinjdAtkAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 698
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon5_src:I

    invoke-direct {v0, v2, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 699
    :cond_1d
    const-string v1, "XKrzvpPgAEAcXYLfE1qh/sAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 700
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon6_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 701
    :cond_1e
    const-string v1, "N9k8O/AgwAxUpWx1Brd3oAAAAASUVORK5CYII="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 702
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon7_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 703
    :cond_1f
    const-string v1, "MmDA/4TYAD4DlmFi17FNAAAAABJRU5ErkJggg=="

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 704
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon8_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 705
    :cond_20
    const-string v1, "0pxIbCz6V4ABAKsWznFslKLnAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 706
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon9_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 707
    :cond_21
    const-string v1, "okj0sX+R4ABALPOID8OTn/lAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 708
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon10_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1

    .line 709
    :cond_22
    const-string v1, "8Vzx0hfwUYAI8Ee5ushPHrAAAAAElFTkSuQmCC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    new-instance v0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    sget v1, Lcom/biznessapps/layout/R$drawable;->button_icon11_src:I

    invoke-direct {v0, v3, v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .restart local v0    # "resultData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    goto/16 :goto_1
.end method

.method public download(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;Z)V

    .line 179
    return-void
.end method

.method public download(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/ImageManager$TintContainer;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tint"    # Lcom/biznessapps/utils/ImageManager$TintContainer;

    .prologue
    .line 212
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    if-eqz p3, :cond_0

    .line 214
    invoke-static {p3}, Lcom/biznessapps/utils/ImageManager;->composeDrawable(Lcom/biznessapps/utils/ImageManager$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 220
    invoke-direct {p0, p2}, Lcom/biznessapps/utils/ImageManager;->checkViewsTopicality(Landroid/view/View;)V

    .line 221
    new-instance v1, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;-><init>(Lcom/biznessapps/utils/ImageManager;Landroid/view/View;Lcom/biznessapps/utils/ImageManager$TintContainer;Z)V

    invoke-direct {p0, v1, p1}, Lcom/biznessapps/utils/ImageManager;->saveOrRun(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    if-eqz p3, :cond_3

    .line 224
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, p3}, Lcom/biznessapps/utils/ImageManager;->composeDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/ImageManager$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 226
    :cond_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Landroid/view/View;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isLightWeight"    # Z

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;ZZ)V

    .line 192
    return-void
.end method

.method public download(Ljava/lang/String;Landroid/view/View;ZZ)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "useImageReflection"    # Z
    .param p4, "isLightWeight"    # Z

    .prologue
    .line 196
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-boolean p3, p0, Lcom/biznessapps/utils/ImageManager;->useReflection:Z

    .line 200
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 202
    invoke-direct {p0, p2}, Lcom/biznessapps/utils/ImageManager;->checkViewsTopicality(Landroid/view/View;)V

    .line 203
    new-instance v1, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2, p4}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;-><init>(Lcom/biznessapps/utils/ImageManager;Landroid/view/View;Lcom/biznessapps/utils/ImageManager$TintContainer;Z)V

    invoke-direct {p0, v1, p1}, Lcom/biznessapps/utils/ImageManager;->saveOrRun(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "loadCallback"    # Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 239
    new-instance v1, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;

    invoke-direct {v1, p0, p2}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;-><init>(Lcom/biznessapps/utils/ImageManager;Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;)V

    invoke-direct {p0, v1, p1}, Lcom/biznessapps/utils/ImageManager;->saveOrRun(Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-interface {p2, p1, v0}, Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;->onPostImageLoading(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "primaryUrl"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 182
    move-object v0, p1

    .line 183
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;Z)V

    .line 188
    return-void
.end method

.method public downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 277
    .local v10, "storedBitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 328
    .end local v10    # "storedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v10

    .line 281
    .restart local v10    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 282
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 284
    .local v4, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 285
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 286
    .local v9, "statusCode":I
    const/16 v11, 0xc8

    if-eq v9, v11, :cond_1

    .line 287
    const-string v11, "ImageDownloader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while retrieving bitmap from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v10, 0x0

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 292
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_5

    .line 293
    const/4 v5, 0x0

    .line 295
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 296
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 297
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v11, Lcom/biznessapps/utils/ImageManager$FlushedInputStream;

    invoke-direct {v11, v5}, Lcom/biznessapps/utils/ImageManager$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v12, 0x0

    invoke-static {v11, v12, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v11, p0, Lcom/biznessapps/utils/ImageManager;->useReflection:Z

    if-eqz v11, :cond_3

    .line 300
    invoke-direct {p0, v0}, Lcom/biznessapps/utils/ImageManager;->createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 301
    .local v8, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :goto_1
    if-eqz v5, :cond_2

    .line 308
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 310
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    move-object v10, v8

    goto :goto_0

    .line 303
    .end local v8    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object v8, v0

    .restart local v8    # "resultBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 307
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "resultBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_4

    .line 308
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 310
    :cond_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 313
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "statusCode":I
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 315
    const-string v11, "ImageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "I/O error while retrieving bitmap from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :cond_5
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 316
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 318
    const-string v11, "ImageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Incorrect URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 323
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 319
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_3
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 321
    const-string v11, "ImageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while retrieving bitmap from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 325
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v2

    .line 326
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public downloadImageToCache(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isLightWeight"    # Z

    .prologue
    .line 161
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/biznessapps/api/UIHandler;->get()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/utils/ImageManager$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/biznessapps/utils/ImageManager$4;-><init>(Lcom/biznessapps/utils/ImageManager;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager;->lightHardRefCacher:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 261
    .local v0, "storedBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager;->mainWeakRefCacher:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "storedBitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 264
    .restart local v0    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public getCustomButtonData()Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->customButtonData:Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    return-object v0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isLightWeight"    # Z

    .prologue
    .line 268
    if-eqz p3, :cond_0

    .line 269
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->lightHardRefCacher:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager;->mainWeakRefCacher:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCustomButtonData(Lcom/biznessapps/utils/ImageManager$CustomButtonData;)V
    .locals 0
    .param p1, "customButtonData"    # Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager;->customButtonData:Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .line 158
    return-void
.end method
