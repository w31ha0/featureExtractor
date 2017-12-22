.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserRatingButtonOverlay.java"


# instance fields
.field private targetWhenStarted:Lcom/netflix/android/widgetry/widget/UserRatingButton;

.field final synthetic this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

.field final synthetic val$this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V
    .locals 1

    .prologue
    .line 595
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->val$this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->targetWhenStarted:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->targetWhenStarted:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2100(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 608
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/android/widgetry/utils/FloatUtils;->floatsEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;->onAnimationEnded()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$700(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->targetWhenStarted:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-interface {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onDismissed(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V

    .line 615
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$4;->targetWhenStarted:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    .line 602
    return-void
.end method
