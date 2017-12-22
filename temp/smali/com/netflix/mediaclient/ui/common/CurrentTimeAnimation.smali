.class public Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;
.super Ljava/lang/Object;
.source "CurrentTimeAnimation.java"


# instance fields
.field private animY:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p2

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p3

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->animY:Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->animY:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->animY:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->animY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->animY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 45
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->animY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->animY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    return-void
.end method
