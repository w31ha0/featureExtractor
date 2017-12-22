.class public Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;
.super Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
.source "ScalePressedStateHandler.java"


# static fields
.field private static final ANIM_DURATION_COMPLETE_MS:J = 0x4bL

.field private static final ANIM_DURATION_START_MS:J = 0x96L

.field private static final PRESSED_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PRESSED_SCALE_FACTOR:F = 0.93f

.field private static final RESET_SCALE_FACTOR:F = 1.0f

.field private static final UNPRESSED_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private shouldPerformCompleteAnimation:Z

.field private viewScaleX:F

.field private viewScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 19
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->PRESSED_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 20
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->UNPRESSED_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;-><init>(Landroid/view/View;)V

    .line 28
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleX:F

    .line 29
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleY:F

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->shouldPerformCompleteAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Z)Z
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->shouldPerformCompleteAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->performResetAnimation(Landroid/view/View;)V

    return-void
.end method

.method private performResetAnimation(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 85
    const-string/jumbo v0, "Performing reset animation"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->log(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleX:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleY:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4b

    .line 87
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->UNPRESSED_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$EndAnimationCompleteListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$EndAnimationCompleteListener;-><init>(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$1;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 90
    return-void
.end method

.method private resetView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->shouldPerformCompleteAnimation:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->performResetAnimation(Landroid/view/View;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string/jumbo v0, "Skipping reset view for now - setting flag to complete later"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->log(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->shouldPerformCompleteAnimation:Z

    goto :goto_0
.end method


# virtual methods
.method protected handlePressCancelled(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->resetView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method protected handlePressComplete(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->resetView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method protected handlePressStarted(Landroid/view/View;)V
    .locals 4

    .prologue
    const v2, 0x3f6e147b    # 0.93f

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->shouldPerformCompleteAnimation:Z

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleX:F

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleY:F

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleX:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->viewScaleY:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->PRESSED_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;-><init>(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Landroid/view/View;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 44
    return-void
.end method
