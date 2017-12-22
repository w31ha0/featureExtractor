.class Landroid/support/transition/VisibilityIcs$VisibilityWrapper;
.super Landroid/support/transition/VisibilityPort;
.source "VisibilityIcs.java"


# instance fields
.field private mVisibility:Landroid/support/transition/VisibilityInterface;


# direct methods
.method constructor <init>(Landroid/support/transition/VisibilityInterface;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/transition/VisibilityPort;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    .line 63
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 73
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 68
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/transition/VisibilityInterface;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->isVisible(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
