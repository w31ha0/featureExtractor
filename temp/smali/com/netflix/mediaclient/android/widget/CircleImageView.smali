.class public Lcom/netflix/mediaclient/android/widget/CircleImageView;
.super Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.source "CircleImageView.java"


# static fields
.field private static final SHADOW_COLOR:I = -0x1000000

.field private static final SHADOW_ENABLED:Z = false

.field private static final SHADOW_RADIUS:F = 1.0f

.field private static final SHADOW_X:F = 0.0f

.field private static final SHADOW_Y:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "CircleImageView"


# instance fields
.field private mBorderWidth:I

.field private mCanvasSize:I

.field private mHasBorder:Z

.field private mHasSelector:Z

.field private mImage:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field private mPaintSelectorBorder:Landroid/graphics/Paint;

.field private mSelected:Z

.field private mSelectorFilter:Landroid/graphics/ColorFilter;

.field private mSelectorStrokeWidth:I

.field private mShader:Landroid/graphics/BitmapShader;

.field private mShadowColor:I

.field private mShadowEnabled:Z

.field private mShadowRadius:F

.field private mShadowX:F

.field private mShadowY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 126
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasBorder:Z

    .line 130
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasSelector:Z

    .line 131
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    .line 134
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasBorder:Z

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 136
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setBorderWidth(I)V

    .line 137
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setBorderColor(I)V

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasSelector:Z

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 143
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setSelectorColor(I)V

    .line 144
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setSelectorStrokeWidth(I)V

    .line 145
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setSelectorStrokeColor(I)V

    .line 149
    :cond_2
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    if-eqz v1, :cond_3

    .line 150
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowRadius:F

    .line 151
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    .line 152
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    .line 153
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    .line 154
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setShadowEnabled(Z)V

    .line 158
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    .prologue
    .line 393
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 394
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 396
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x2

    return v0

    .line 399
    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 404
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 3

    .prologue
    .line 372
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 373
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 375
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 385
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    goto :goto_0
.end method

.method private updateShadow()V
    .locals 5

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowRadius:F

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 413
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 414
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    .line 302
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 320
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    .line 320
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 308
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    goto :goto_1

    .line 314
    :pswitch_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    goto :goto_1

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 422
    if-nez p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 424
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 425
    const-string/jumbo v0, "CircleImageView"

    const-string/jumbo v1, "Bitmap drawable!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 430
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 432
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 437
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 438
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 439
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 440
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 441
    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 444
    const-string/jumbo v1, "CircleImageView"

    const-string/jumbo v2, "Encountered OutOfMemoryError while generating bitmap!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    .line 260
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getWidth()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    .line 261
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-eq v1, v0, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 271
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    div-int/lit8 v0, v0, 0x2

    .line 274
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasSelector:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelected:Z

    if-eqz v1, :cond_4

    .line 275
    iget v4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorStrokeWidth:I

    .line 276
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 279
    add-int v1, v0, v4

    int-to-float v1, v1

    add-int v2, v0, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 294
    :goto_2
    add-int v1, v0, v4

    int-to-float v1, v1

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v3, v4, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getHeight()I

    move-result v0

    goto :goto_1

    .line 281
    :cond_4
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mHasBorder:Z

    if-eqz v1, :cond_5

    .line 283
    iget v7, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mBorderWidth:I

    .line 284
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    mul-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 287
    new-instance v1, Landroid/graphics/RectF;

    div-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    div-int/lit8 v3, v7, 0x2

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    div-int/lit8 v8, v7, 0x2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget v8, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v1, v0, v3, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 288
    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v0, v6

    move v4, v7

    .line 290
    goto :goto_2

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->measureWidth(I)I

    move-result v0

    .line 366
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->measureHeight(I)I

    move-result v1

    .line 367
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setMeasuredDimension(II)V

    .line 368
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    .line 185
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 2

    .prologue
    .line 167
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mBorderWidth:I

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintBorder:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->requestLayout()V

    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    .line 173
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 358
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    .line 359
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    .line 361
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    .line 349
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    .line 351
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageResource(I)V

    .line 338
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    .line 339
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    .line 341
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageURI(Landroid/net/Uri;)V

    .line 328
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    .line 329
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    if-lez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateBitmapShader()V

    .line 331
    :cond_0
    return-void
.end method

.method public setSelectorColor(I)V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorFilter:Landroid/graphics/ColorFilter;

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    .line 196
    return-void
.end method

.method public setSelectorStrokeColor(I)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mPaintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    .line 220
    return-void
.end method

.method public setSelectorStrokeWidth(I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mSelectorStrokeWidth:I

    .line 206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->requestLayout()V

    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->invalidate()V

    .line 208
    return-void
.end method

.method public setShadow(FFFI)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowRadius:F

    .line 242
    iput p2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowX:F

    .line 243
    iput p3, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowY:F

    .line 244
    iput p4, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowColor:I

    .line 245
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateShadow()V

    .line 246
    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShadowEnabled:Z

    .line 229
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->updateShadow()V

    .line 230
    return-void
.end method

.method public updateBitmapShader()V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShader:Landroid/graphics/BitmapShader;

    .line 459
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 460
    :cond_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 461
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mCanvasSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 462
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 463
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/CircleImageView;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
