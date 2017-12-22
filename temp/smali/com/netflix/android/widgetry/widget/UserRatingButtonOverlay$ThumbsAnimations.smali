.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;
.super Ljava/lang/Object;
.source "UserRatingButtonOverlay.java"


# instance fields
.field private final mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

.field private final mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

.field private mClickCallback:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

.field private mClickedDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

.field private mClosing:Z

.field private final mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeCloseAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeExternalAnimator:Landroid/animation/ValueAnimator;

.field private mLongDuration:J

.field private mMidDuration:J

.field private mOnDismissed:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

.field private final mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mShortDuration:J

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;


# direct methods
.method private constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 549
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 470
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    .line 473
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    .line 476
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    .line 479
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    .line 482
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    .line 497
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 550
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 551
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 554
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 555
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 582
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 583
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 584
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$3;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 593
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2700()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 594
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 595
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 619
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 620
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 621
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 622
    return-void

    .line 554
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 583
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->getScaleValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;I)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->show(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickedDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickCallback:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mOnDismissed:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->click(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;)V

    return-void
.end method

.method private varargs cancel([Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 662
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 663
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 662
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    return-void
.end method

.method private click(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;)V
    .locals 3

    .prologue
    .line 682
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickedDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    .line 683
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 688
    :cond_0
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->cancel([Landroid/animation/ValueAnimator;)V

    .line 689
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickedDrawable:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setAlpha(I)V

    .line 690
    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickCallback:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    .line 691
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 692
    return-void

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method private getScaleValue()F
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private show(I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 626
    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mOnDismissed:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    .line 627
    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickCallback:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    .line 629
    int-to-long v0, p1

    mul-long/2addr v0, v8

    iput-wide v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mMidDuration:J

    .line 630
    const-wide/16 v0, 0x96

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mShortDuration:J

    .line 631
    const-wide/16 v0, 0x12c

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mLongDuration:J

    .line 633
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeIn:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x32

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 634
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClickAnimatorFeedbackFadeOut:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    mul-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 635
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mMidDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 636
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mShortDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 637
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mLongDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 638
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mLongDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 640
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 641
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setAlpha(I)V

    .line 642
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setAlpha(I)V

    .line 643
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setAlpha(I)V

    .line 645
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 647
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mLongDuration:J

    iget-wide v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mShortDuration:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 649
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->start(F[Landroid/animation/ValueAnimator;)V

    .line 650
    iput-boolean v6, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClosing:Z

    .line 651
    return-void
.end method

.method private varargs start(F[Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->cancel([Landroid/animation/ValueAnimator;)V

    .line 655
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p2, v1

    .line 656
    const/4 v0, 0x2

    new-array v5, v0, [F

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v2

    const/4 v0, 0x1

    aput p1, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 657
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 655
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method


# virtual methods
.method public close(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 671
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mLongDuration:J

    iget-wide v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mMidDuration:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 673
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 675
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeExternalAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeCloseAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v8

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mFadeButtonsAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->start(F[Landroid/animation/ValueAnimator;)V

    .line 677
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mOnDismissed:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    .line 678
    iput-boolean v8, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClosing:Z

    .line 679
    return-void
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mClosing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method
