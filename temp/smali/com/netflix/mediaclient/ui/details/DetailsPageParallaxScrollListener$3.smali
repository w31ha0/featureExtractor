.class Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;
.super Ljava/lang/Object;
.source "DetailsPageParallaxScrollListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field final synthetic val$animationActions:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->val$animationActions:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->access$202(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;Z)Z

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 310
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getTrackerViewLatchFadeinDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3$1;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;)V

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->val$animationActions:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;->onAnimationEnd()V

    .line 323
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->access$202(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;Z)Z

    .line 300
    return-void
.end method
