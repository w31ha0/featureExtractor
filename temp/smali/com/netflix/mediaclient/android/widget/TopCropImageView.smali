.class public Lcom/netflix/mediaclient/android/widget/TopCropImageView;
.super Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.source "TopCropImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TopCropImageView"


# instance fields
.field private centerHorizontally:Z

.field private cropPointYOffset:I

.field private isTopCropEnabled:Z

.field private lastScaleType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->centerHorizontally:Z

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->init(Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->centerHorizontally:Z

    .line 27
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->init(Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->centerHorizontally:Z

    .line 32
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->init(Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "scaleType"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/R$styleable;->TopCropImageView:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->cropPointYOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void

    .line 63
    :cond_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->lastScaleType:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->onLayout(ZIIII)V

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    .line 90
    return-void
.end method

.method public recomputeImgMatrix()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 94
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingRight()I

    move-result v3

    sub-int v3, v0, v3

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 104
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    .line 106
    :goto_2
    mul-int v5, v0, v4

    mul-int v6, v1, v3

    if-le v5, v6, :cond_4

    .line 107
    int-to-float v4, v4

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 117
    :goto_3
    iget v4, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->cropPointYOffset:I

    int-to-float v4, v4

    invoke-virtual {v2, v1, v1, v7, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 119
    iget-boolean v4, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->centerHorizontally:Z

    if-eqz v4, :cond_1

    .line 120
    int-to-float v4, v0

    mul-float/2addr v4, v1

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 121
    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float v1, v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    .line 122
    invoke-virtual {v2, v0, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 125
    :cond_1
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_2

    .line 109
    :cond_4
    int-to-float v1, v3

    int-to-float v4, v0

    div-float/2addr v1, v4

    goto :goto_3
.end method

.method public setCenterHorizontally(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->centerHorizontally:Z

    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    .line 54
    return-void
.end method

.method public setCropPointYOffsetPx(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->cropPointYOffset:I

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    .line 78
    return-void
.end method

.method public setCutomCroppingEnabled(Z)V
    .locals 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->isTopCropEnabled:Z

    .line 43
    if-eqz p1, :cond_1

    .line 44
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->lastScaleType:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->lastScaleType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->recomputeImgMatrix()V

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
