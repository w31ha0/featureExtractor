.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserRatingButtonOverlay.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

.field final synthetic val$this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->val$this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 559
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 561
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setApplyAlphaAlsoToIcon(Z)V

    .line 563
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v3, v3, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 565
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setApplyAlphaAlsoToIcon(Z)V

    .line 566
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v3, v3, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->isSelected()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setSelected(Z)V

    .line 567
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v1, v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1100(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setRating(I)V

    .line 568
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 569
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 580
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 566
    goto :goto_0

    .line 572
    :cond_3
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setApplyAlphaAlsoToIcon(Z)V

    .line 573
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v3, v3, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->isSelected()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setSelected(Z)V

    .line 574
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v1, v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)I

    move-result v1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setRating(I)V

    .line 575
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 576
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$2;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 573
    goto :goto_2
.end method
