.class final Lcom/wooboo/adlib_android/b;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 510
    iput p1, p0, Lcom/wooboo/adlib_android/b;->a:F

    .line 511
    iput p2, p0, Lcom/wooboo/adlib_android/b;->b:F

    .line 512
    iput p3, p0, Lcom/wooboo/adlib_android/b;->c:F

    .line 513
    iput p4, p0, Lcom/wooboo/adlib_android/b;->d:F

    .line 514
    iput p5, p0, Lcom/wooboo/adlib_android/b;->e:F

    .line 515
    iput-boolean p6, p0, Lcom/wooboo/adlib_android/b;->f:Z

    .line 516
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 527
    iget v0, p0, Lcom/wooboo/adlib_android/b;->a:F

    .line 529
    iget v1, p0, Lcom/wooboo/adlib_android/b;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 528
    add-float/2addr v0, v1

    .line 531
    iget v1, p0, Lcom/wooboo/adlib_android/b;->c:F

    .line 532
    iget v2, p0, Lcom/wooboo/adlib_android/b;->d:F

    .line 533
    iget-object v3, p0, Lcom/wooboo/adlib_android/b;->g:Landroid/graphics/Camera;

    .line 535
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 537
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 538
    iget-boolean v5, p0, Lcom/wooboo/adlib_android/b;->f:Z

    if-eqz v5, :cond_0

    .line 539
    iget v5, p0, Lcom/wooboo/adlib_android/b;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 543
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 544
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 545
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 547
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 548
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 549
    return-void

    .line 541
    :cond_0
    iget v5, p0, Lcom/wooboo/adlib_android/b;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public final initialize(IIII)V
    .locals 1

    .prologue
    .line 521
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 522
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/wooboo/adlib_android/b;->g:Landroid/graphics/Camera;

    .line 523
    return-void
.end method
