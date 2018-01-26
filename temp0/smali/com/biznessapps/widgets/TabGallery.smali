.class public Lcom/biznessapps/widgets/TabGallery;
.super Landroid/widget/Gallery;
.source "TabGallery.java"


# instance fields
.field private final camera:Landroid/graphics/Camera;

.field private galleryCenter:I

.field private maxRotationAngle:I

.field private maxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    .line 19
    const/16 v0, -0x64

    iput v0, p0, Lcom/biznessapps/widgets/TabGallery;->maxZoom:I

    .line 20
    const/16 v0, 0x46

    iput v0, p0, Lcom/biznessapps/widgets/TabGallery;->maxRotationAngle:I

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/TabGallery;->setStaticTransformationsEnabled(Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/widgets/TabGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    .line 19
    const/16 v0, -0x64

    iput v0, p0, Lcom/biznessapps/widgets/TabGallery;->maxZoom:I

    .line 20
    const/16 v0, 0x46

    iput v0, p0, Lcom/biznessapps/widgets/TabGallery;->maxRotationAngle:I

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/TabGallery;->setStaticTransformationsEnabled(Z)V

    .line 35
    return-void
.end method

.method private getGalleryCenter()I
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TabGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/TabGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/biznessapps/widgets/TabGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/biznessapps/widgets/TabGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getViewCenter(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;
    .param p3, "rotationAngle"    # I

    .prologue
    .line 72
    iget-object v5, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 73
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 74
    .local v1, "imageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 75
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 76
    .local v3, "width":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 77
    .local v2, "rotation":I
    iget-object v5, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 79
    iget v5, p0, Lcom/biznessapps/widgets/TabGallery;->maxRotationAngle:I

    if-ge v2, v5, :cond_0

    .line 80
    iget v5, p0, Lcom/biznessapps/widgets/TabGallery;->maxZoom:I

    int-to-double v5, v5

    int-to-double v7, v2

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 81
    .local v4, "zoomAmount":F
    iget-object v5, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 83
    .end local v4    # "zoomAmount":F
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    int-to-float v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 84
    iget-object v5, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 85
    int-to-float v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 86
    int-to-float v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 87
    iget-object v5, p0, Lcom/biznessapps/widgets/TabGallery;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 88
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/biznessapps/widgets/TabGallery;->getViewCenter(Landroid/view/View;)I

    move-result v0

    .line 48
    .local v0, "childCenter":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 49
    .local v1, "childWidth":I
    const/4 v2, 0x0

    .line 51
    .local v2, "rotationAngle":I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 52
    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v3}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 53
    iget v3, p0, Lcom/biznessapps/widgets/TabGallery;->galleryCenter:I

    if-ne v0, v3, :cond_0

    .line 54
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/biznessapps/widgets/TabGallery;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    .line 62
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 56
    :cond_0
    iget v3, p0, Lcom/biznessapps/widgets/TabGallery;->galleryCenter:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/biznessapps/widgets/TabGallery;->maxRotationAngle:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 57
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/TabGallery;->maxRotationAngle:I

    if-le v3, v4, :cond_1

    .line 58
    if-gez v2, :cond_2

    iget v3, p0, Lcom/biznessapps/widgets/TabGallery;->maxRotationAngle:I

    neg-int v2, v3

    .line 60
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/biznessapps/widgets/TabGallery;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    goto :goto_0

    .line 58
    :cond_2
    iget v2, p0, Lcom/biznessapps/widgets/TabGallery;->maxRotationAngle:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/biznessapps/widgets/TabGallery;->getGalleryCenter()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/widgets/TabGallery;->galleryCenter:I

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 69
    return-void
.end method
