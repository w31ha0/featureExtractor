.class public Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;
.super Lcom/netflix/mediaclient/android/widget/advisor/Advisor;
.source "TwoLineAdvisor.java"


# static fields
.field private static final ANIMATION_IN_DURATION_MILLIS:I = 0x294

.field private static final ANIMATION_START_DELAY_MILLIS:I = 0x64

.field private static final BAR_ANIMATION_OUT_DURATION_MILLIS:I = 0x190

.field private static final CONTAINER_ANIMATE_OUT_DURATION_MILLIS:I = 0x341

.field private static final HIDE:F = 0.0f

.field private static final SHOW:F = 1.0f

.field private static final SUBTITLE_ANIMATE_OUT_DURATION_MILLIS:I = 0x1f4


# instance fields
.field private animateInInterpolator:Landroid/view/animation/Interpolator;

.field private animateOutInterpolator:Landroid/view/animation/Interpolator;

.field private final container:Landroid/view/View;

.field private mHideAnimatorEndListener:Landroid/animation/Animator$AnimatorListener;

.field private final netflixBarView:Landroid/view/View;

.field private final translationY:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V

    .line 38
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateInInterpolator:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateOutInterpolator:Landroid/view/animation/Interpolator;

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor$1;-><init>(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->mHideAnimatorEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 47
    const v1, 0x7f1003b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    .line 48
    const v1, 0x7f1003b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->resetViews()V

    return-void
.end method

.method static synthetic access$201(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismiss()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 132
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->hasSecondMessage:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->secondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 136
    return-void
.end method

.method private resetViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 120
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->hasSecondMessage:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->secondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 124
    return-void
.end method

.method private setTranslationYForAnimation()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->messageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 108
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->hasSecondMessage:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->secondaryMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 112
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x0

    .line 91
    const-string/jumbo v0, "AdvisorToast"

    const-string/jumbo v1, "dismiss -- two line advisor"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 95
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->hasSecondMessage:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->secondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x341

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->mHideAnimatorEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 100
    :cond_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f030110

    return v0
.end method

.method public getMessageViewId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f1003b3

    return v0
.end method

.method public getSecondaryMessageViewId()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f1003b4

    return v0
.end method

.method protected showInternal()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x294

    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showInternal()V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->setTranslationYForAnimation()V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->netflixBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x341

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 80
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->hasSecondMessage:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->secondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->translationY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->animateInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 85
    :cond_1
    return-void
.end method
