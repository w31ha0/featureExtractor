.class Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3$1;
.super Ljava/lang/Object;
.source "DetailsPageParallaxScrollListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3$1;->this$1:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3$1;->this$1:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->access$202(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;Z)Z

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3$1;->this$1:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 319
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
