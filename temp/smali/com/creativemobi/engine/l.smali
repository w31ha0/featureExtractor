.class public final Lcom/creativemobi/engine/l;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field public a:Landroid/graphics/Bitmap$Config;

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Bitmap;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/graphics/BitmapFactory$Options;

.field private r:F

.field private s:F

.field private t:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x7fc00000    # NaNf

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->b:Z

    .line 23
    iput v0, p0, Lcom/creativemobi/engine/l;->c:F

    .line 24
    iput v0, p0, Lcom/creativemobi/engine/l;->d:F

    .line 25
    iput v0, p0, Lcom/creativemobi/engine/l;->e:F

    .line 27
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->f:Z

    .line 28
    iput v0, p0, Lcom/creativemobi/engine/l;->g:F

    .line 29
    iput v0, p0, Lcom/creativemobi/engine/l;->h:F

    .line 30
    iput v0, p0, Lcom/creativemobi/engine/l;->i:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/l;->j:Z

    .line 36
    iput v1, p0, Lcom/creativemobi/engine/l;->m:F

    .line 37
    iput v1, p0, Lcom/creativemobi/engine/l;->n:F

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    .line 43
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 49
    iput v1, p0, Lcom/creativemobi/engine/l;->t:F

    .line 107
    iput-object p1, p0, Lcom/creativemobi/engine/l;->k:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/creativemobi/engine/l;->o:I

    .line 109
    iput v2, p0, Lcom/creativemobi/engine/l;->p:I

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x7fc00000    # NaNf

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->b:Z

    .line 23
    iput v0, p0, Lcom/creativemobi/engine/l;->c:F

    .line 24
    iput v0, p0, Lcom/creativemobi/engine/l;->d:F

    .line 25
    iput v0, p0, Lcom/creativemobi/engine/l;->e:F

    .line 27
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->f:Z

    .line 28
    iput v0, p0, Lcom/creativemobi/engine/l;->g:F

    .line 29
    iput v0, p0, Lcom/creativemobi/engine/l;->h:F

    .line 30
    iput v0, p0, Lcom/creativemobi/engine/l;->i:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/l;->j:Z

    .line 36
    iput v1, p0, Lcom/creativemobi/engine/l;->m:F

    .line 37
    iput v1, p0, Lcom/creativemobi/engine/l;->n:F

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    .line 43
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 49
    iput v1, p0, Lcom/creativemobi/engine/l;->t:F

    .line 100
    iput-object p1, p0, Lcom/creativemobi/engine/l;->k:Ljava/lang/String;

    .line 101
    iput v2, p0, Lcom/creativemobi/engine/l;->o:I

    .line 102
    iput v2, p0, Lcom/creativemobi/engine/l;->p:I

    .line 103
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/creativemobi/engine/l;->t:F

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x7fc00000    # NaNf

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->b:Z

    .line 23
    iput v0, p0, Lcom/creativemobi/engine/l;->c:F

    .line 24
    iput v0, p0, Lcom/creativemobi/engine/l;->d:F

    .line 25
    iput v0, p0, Lcom/creativemobi/engine/l;->e:F

    .line 27
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->f:Z

    .line 28
    iput v0, p0, Lcom/creativemobi/engine/l;->g:F

    .line 29
    iput v0, p0, Lcom/creativemobi/engine/l;->h:F

    .line 30
    iput v0, p0, Lcom/creativemobi/engine/l;->i:F

    .line 32
    iput-boolean v4, p0, Lcom/creativemobi/engine/l;->j:Z

    .line 36
    iput v1, p0, Lcom/creativemobi/engine/l;->m:F

    .line 37
    iput v1, p0, Lcom/creativemobi/engine/l;->n:F

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    .line 43
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 49
    iput v1, p0, Lcom/creativemobi/engine/l;->t:F

    .line 76
    iput-object p1, p0, Lcom/creativemobi/engine/l;->k:Ljava/lang/String;

    .line 77
    iput v2, p0, Lcom/creativemobi/engine/l;->o:I

    .line 78
    iput v2, p0, Lcom/creativemobi/engine/l;->p:I

    .line 80
    iput p2, p0, Lcom/creativemobi/engine/l;->c:F

    .line 81
    iput p3, p0, Lcom/creativemobi/engine/l;->d:F

    .line 82
    iput p4, p0, Lcom/creativemobi/engine/l;->e:F

    .line 84
    iput-boolean v4, p0, Lcom/creativemobi/engine/l;->b:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x7fc00000    # NaNf

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->b:Z

    .line 23
    iput v0, p0, Lcom/creativemobi/engine/l;->c:F

    .line 24
    iput v0, p0, Lcom/creativemobi/engine/l;->d:F

    .line 25
    iput v0, p0, Lcom/creativemobi/engine/l;->e:F

    .line 27
    iput-boolean v3, p0, Lcom/creativemobi/engine/l;->f:Z

    .line 28
    iput v0, p0, Lcom/creativemobi/engine/l;->g:F

    .line 29
    iput v0, p0, Lcom/creativemobi/engine/l;->h:F

    .line 30
    iput v0, p0, Lcom/creativemobi/engine/l;->i:F

    .line 32
    iput-boolean v4, p0, Lcom/creativemobi/engine/l;->j:Z

    .line 36
    iput v1, p0, Lcom/creativemobi/engine/l;->m:F

    .line 37
    iput v1, p0, Lcom/creativemobi/engine/l;->n:F

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    .line 43
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 49
    iput v1, p0, Lcom/creativemobi/engine/l;->t:F

    .line 88
    iput-object p1, p0, Lcom/creativemobi/engine/l;->k:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/creativemobi/engine/l;->o:I

    .line 90
    iput v2, p0, Lcom/creativemobi/engine/l;->p:I

    .line 91
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/creativemobi/engine/l;->t:F

    .line 93
    iput p3, p0, Lcom/creativemobi/engine/l;->c:F

    .line 94
    iput p4, p0, Lcom/creativemobi/engine/l;->d:F

    .line 95
    iput p5, p0, Lcom/creativemobi/engine/l;->e:F

    .line 96
    iput-boolean v4, p0, Lcom/creativemobi/engine/l;->b:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x7fc00000    # NaNf

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/creativemobi/engine/l;->b:Z

    .line 23
    iput v0, p0, Lcom/creativemobi/engine/l;->c:F

    .line 24
    iput v0, p0, Lcom/creativemobi/engine/l;->d:F

    .line 25
    iput v0, p0, Lcom/creativemobi/engine/l;->e:F

    .line 27
    iput-boolean v2, p0, Lcom/creativemobi/engine/l;->f:Z

    .line 28
    iput v0, p0, Lcom/creativemobi/engine/l;->g:F

    .line 29
    iput v0, p0, Lcom/creativemobi/engine/l;->h:F

    .line 30
    iput v0, p0, Lcom/creativemobi/engine/l;->i:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/l;->j:Z

    .line 36
    iput v1, p0, Lcom/creativemobi/engine/l;->m:F

    .line 37
    iput v1, p0, Lcom/creativemobi/engine/l;->n:F

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    .line 43
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 49
    iput v1, p0, Lcom/creativemobi/engine/l;->t:F

    .line 119
    iput-object p1, p0, Lcom/creativemobi/engine/l;->k:Ljava/lang/String;

    .line 120
    iput p2, p0, Lcom/creativemobi/engine/l;->o:I

    .line 121
    iput p3, p0, Lcom/creativemobi/engine/l;->p:I

    .line 122
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 343
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 344
    int-to-float v0, v3

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    int-to-float v0, v4

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 357
    :goto_0
    return-object v0

    .line 345
    :cond_0
    int-to-float v0, v3

    div-float v0, p1, v0

    .line 346
    int-to-float v1, v4

    div-float v1, p2, v1

    .line 348
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 350
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 352
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p0

    .line 357
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 287
    iget-object v0, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, p0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 288
    iget-object v0, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    sget v1, Lcom/creativemobi/engine/w;->a:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 291
    const/high16 v0, 0x43f00000    # 480.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 292
    const/high16 v1, 0x44480000    # 800.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 294
    iget-boolean v2, p0, Lcom/creativemobi/engine/l;->j:Z

    if-nez v2, :cond_5

    .line 295
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    move v1, v0

    .line 299
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/l;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/creativemobi/engine/l;->q:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 301
    if-eqz p2, :cond_3

    .line 302
    iget v3, p0, Lcom/creativemobi/engine/l;->o:I

    if-ne v3, v8, :cond_1

    iget v3, p0, Lcom/creativemobi/engine/l;->p:I

    if-ne v3, v8, :cond_1

    .line 303
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/creativemobi/engine/l;->o:I

    .line 304
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/creativemobi/engine/l;->p:I

    .line 307
    :cond_1
    iget v3, p0, Lcom/creativemobi/engine/l;->o:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/creativemobi/engine/l;->p:I

    if-ne v3, v8, :cond_2

    .line 308
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/creativemobi/engine/l;->o:I

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    iput v3, p0, Lcom/creativemobi/engine/l;->p:I

    .line 311
    :cond_2
    iget v3, p0, Lcom/creativemobi/engine/l;->o:I

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/l;->t:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/creativemobi/engine/l;->o:I

    .line 312
    iget v3, p0, Lcom/creativemobi/engine/l;->p:I

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/l;->t:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/creativemobi/engine/l;->p:I

    .line 315
    :cond_3
    iget v3, p0, Lcom/creativemobi/engine/l;->o:I

    int-to-float v3, v3

    div-float v0, v3, v0

    iget v3, p0, Lcom/creativemobi/engine/l;->p:I

    int-to-float v3, v3

    div-float v1, v3, v1

    invoke-static {v2, v0, v1}, Lcom/creativemobi/engine/l;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    .line 317
    iget-boolean v0, p0, Lcom/creativemobi/engine/l;->b:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 319
    iget-object v0, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 324
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 325
    const/16 v4, 0x14

    new-array v4, v4, [F

    iget v5, p0, Lcom/creativemobi/engine/l;->c:F

    aput v5, v4, v10

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    aput v9, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/creativemobi/engine/l;->d:F

    aput v6, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    const/16 v5, 0x8

    aput v7, v4, v5

    const/16 v5, 0x9

    aput v9, v4, v5

    const/16 v5, 0xa

    aput v7, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    const/16 v5, 0xc

    iget v6, p0, Lcom/creativemobi/engine/l;->e:F

    aput v6, v4, v5

    const/16 v5, 0xd

    aput v7, v4, v5

    const/16 v5, 0xe

    aput v9, v4, v5

    const/16 v5, 0xf

    aput v7, v4, v5

    const/16 v5, 0x10

    aput v7, v4, v5

    const/16 v5, 0x11

    aput v7, v4, v5

    const/16 v5, 0x12

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/16 v5, 0x13

    aput v7, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 328
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 333
    iget-object v3, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 334
    iget-object v1, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    iput-object v0, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    .line 337
    :cond_4
    return-void

    :cond_5
    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/creativemobi/engine/l;->o:I

    return v0
.end method

.method public final a(FF)V
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/creativemobi/engine/l;->o:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/l;->m:F

    .line 271
    iget v0, p0, Lcom/creativemobi/engine/l;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/l;->n:F

    .line 273
    iget v0, p0, Lcom/creativemobi/engine/l;->m:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/l;->r:F

    .line 274
    iget v0, p0, Lcom/creativemobi/engine/l;->n:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/l;->s:F

    .line 276
    iget-boolean v0, p0, Lcom/creativemobi/engine/l;->j:Z

    if-nez v0, :cond_0

    .line 277
    iget v0, p0, Lcom/creativemobi/engine/l;->r:F

    iget v1, p0, Lcom/creativemobi/engine/l;->s:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/l;->r:F

    :goto_0
    iput v0, p0, Lcom/creativemobi/engine/l;->r:F

    .line 278
    iget v0, p0, Lcom/creativemobi/engine/l;->r:F

    iput v0, p0, Lcom/creativemobi/engine/l;->s:F

    .line 280
    :cond_0
    return-void

    .line 277
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/l;->s:F

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;Z)V

    .line 284
    return-void
.end method

.method public final a(Landroid/content/Context;FFF)V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/creativemobi/engine/l;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/l;->f:Z

    .line 203
    iput p2, p0, Lcom/creativemobi/engine/l;->g:F

    .line 204
    iput p3, p0, Lcom/creativemobi/engine/l;->h:F

    .line 205
    iput p4, p0, Lcom/creativemobi/engine/l;->i:F

    .line 206
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFFF)V
    .locals 6

    .prologue
    .line 157
    .line 158
    iget-boolean v0, p0, Lcom/creativemobi/engine/l;->f:Z

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 160
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 161
    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/creativemobi/engine/l;->g:F

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/creativemobi/engine/l;->h:F

    aput v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v2, v3

    const/16 v3, 0xa

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0xb

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0xc

    iget v4, p0, Lcom/creativemobi/engine/l;->i:F

    aput v4, v2, v3

    const/16 v3, 0xd

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v2, v3

    const/16 v3, 0xf

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0x11

    const/4 v4, 0x0

    aput v4, v2, v3

    const/16 v3, 0x12

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    const/16 v3, 0x13

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 164
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 170
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget v1, p0, Lcom/creativemobi/engine/l;->r:F

    mul-float/2addr v1, p7

    iget v2, p0, Lcom/creativemobi/engine/l;->s:F

    mul-float/2addr v2, p7

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 176
    int-to-float v1, p3

    iget v2, p0, Lcom/creativemobi/engine/l;->r:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p5

    div-float/2addr v1, p7

    .line 177
    int-to-float v2, p4

    iget v3, p0, Lcom/creativemobi/engine/l;->s:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p6

    div-float/2addr v2, p7

    .line 179
    const/4 v3, 0x0

    cmpl-float v3, p8, v3

    if-eqz v3, :cond_0

    .line 180
    iget v3, p0, Lcom/creativemobi/engine/l;->o:I

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/l;->m:F

    div-float/2addr v3, v4

    .line 181
    iget v4, p0, Lcom/creativemobi/engine/l;->p:I

    int-to-float v4, v4

    iget v5, p0, Lcom/creativemobi/engine/l;->n:F

    div-float/2addr v4, v5

    .line 182
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    invoke-virtual {p1, p8, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    return-void

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFFFLandroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    iget v0, p0, Lcom/creativemobi/engine/l;->r:F

    mul-float/2addr v0, p7

    iget v1, p0, Lcom/creativemobi/engine/l;->s:F

    mul-float/2addr v1, p7

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 215
    int-to-float v0, p3

    iget v1, p0, Lcom/creativemobi/engine/l;->r:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p5

    div-float/2addr v0, p7

    .line 216
    int-to-float v1, p4

    iget v2, p0, Lcom/creativemobi/engine/l;->s:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p6

    div-float/2addr v1, p7

    .line 218
    iget v2, p9, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/l;->r:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p5

    div-float/2addr v2, p7

    float-to-int v2, v2

    iput v2, p9, Landroid/graphics/Point;->x:I

    .line 219
    iget v2, p9, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/l;->s:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p6

    div-float/2addr v2, p7

    float-to-int v2, v2

    iput v2, p9, Landroid/graphics/Point;->y:I

    .line 221
    const/4 v2, 0x0

    cmpl-float v2, p8, v2

    if-eqz v2, :cond_0

    .line 222
    iget v2, p9, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p9, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p1, p8, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 227
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFFIIII)V
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 232
    int-to-float v0, p8

    mul-float/2addr v0, p5

    int-to-float v1, p9

    mul-float/2addr v1, p6

    int-to-float v2, p10

    mul-float/2addr v2, p5

    int-to-float v3, p11

    mul-float/2addr v3, p6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 233
    iget v0, p0, Lcom/creativemobi/engine/l;->r:F

    mul-float/2addr v0, p7

    iget v1, p0, Lcom/creativemobi/engine/l;->s:F

    mul-float/2addr v1, p7

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 238
    int-to-float v0, p3

    iget v1, p0, Lcom/creativemobi/engine/l;->r:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p5

    div-float/2addr v0, p7

    .line 239
    int-to-float v1, p4

    iget v2, p0, Lcom/creativemobi/engine/l;->s:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p6

    div-float/2addr v1, p7

    .line 241
    iget-object v2, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 243
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFIIIF)V
    .locals 7

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 249
    iget v0, p0, Lcom/creativemobi/engine/l;->o:I

    int-to-float v0, v0

    int-to-float v1, p7

    div-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/l;->m:F

    div-float/2addr v0, v1

    div-float v0, v0, p10

    .line 253
    iget v1, p0, Lcom/creativemobi/engine/l;->p:I

    int-to-float v1, v1

    int-to-float v2, p8

    div-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/l;->n:F

    div-float/2addr v1, v2

    div-float v1, v1, p10

    .line 255
    iget v2, p0, Lcom/creativemobi/engine/l;->r:F

    mul-float v2, v2, p10

    iget v3, p0, Lcom/creativemobi/engine/l;->s:F

    mul-float v3, v3, p10

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 257
    int-to-float v2, p3

    iget v3, p0, Lcom/creativemobi/engine/l;->r:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p5

    div-float v2, v2, p10

    .line 258
    int-to-float v3, p4

    iget v4, p0, Lcom/creativemobi/engine/l;->s:F

    div-float/2addr v3, v4

    mul-float/2addr v3, p6

    div-float v3, v3, p10

    .line 260
    add-float v4, v2, v0

    add-float v5, v3, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 262
    rem-int v4, p9, p7

    .line 263
    div-int v5, p9, p7

    .line 265
    iget-object v6, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    int-to-float v2, v5

    mul-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {p1, v6, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 267
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/creativemobi/engine/l;->p:I

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/l;->j:Z

    .line 65
    return-void
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/creativemobi/engine/l;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method
