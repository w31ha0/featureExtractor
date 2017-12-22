.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserRatingButtonOverlay.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

.field final synthetic val$this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$3;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$3;->val$this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$3;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$3;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;->onAnimationEnded()V

    .line 590
    :cond_0
    return-void
.end method
