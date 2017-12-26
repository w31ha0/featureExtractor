.class public Lcom/wordloco/wordchallenge/a/d;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Camera;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wordloco/wordchallenge/a/d;->f:Z

    .line 30
    iput-object p1, p0, Lcom/wordloco/wordchallenge/a/d;->b:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/wordloco/wordchallenge/a/d;->c:Landroid/view/View;

    .line 33
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/wordloco/wordchallenge/a/d;->setDuration(J)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/a/d;->setFillAfter(Z)V

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/a/d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 58
    float-to-double v0, p1

    mul-double/2addr v0, v4

    .line 59
    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-float v0, v0

    .line 65
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 66
    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    .line 71
    :cond_0
    iget-boolean v1, p0, Lcom/wordloco/wordchallenge/a/d;->f:Z

    if-eqz v1, :cond_1

    .line 72
    neg-float v0, v0

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/wordloco/wordchallenge/a/d;->a:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 77
    iget-object v2, p0, Lcom/wordloco/wordchallenge/a/d;->a:Landroid/graphics/Camera;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    div-double/2addr v3, v5

    double-to-float v0, v3

    invoke-virtual {v2, v7, v7, v0}, Landroid/graphics/Camera;->translate(FFF)V

    .line 78
    iget-object v0, p0, Lcom/wordloco/wordchallenge/a/d;->a:Landroid/graphics/Camera;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 79
    iget-object v0, p0, Lcom/wordloco/wordchallenge/a/d;->a:Landroid/graphics/Camera;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 80
    iget-object v0, p0, Lcom/wordloco/wordchallenge/a/d;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 81
    iget v0, p0, Lcom/wordloco/wordchallenge/a/d;->d:F

    neg-float v0, v0

    iget v2, p0, Lcom/wordloco/wordchallenge/a/d;->e:F

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 82
    iget v0, p0, Lcom/wordloco/wordchallenge/a/d;->d:F

    iget v2, p0, Lcom/wordloco/wordchallenge/a/d;->e:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/a/d;->setRepeatCount(I)V

    .line 84
    return-void
.end method

.method public initialize(IIII)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 49
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/wordloco/wordchallenge/a/d;->d:F

    .line 50
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/wordloco/wordchallenge/a/d;->e:F

    .line 51
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/a/d;->a:Landroid/graphics/Camera;

    .line 52
    return-void
.end method
