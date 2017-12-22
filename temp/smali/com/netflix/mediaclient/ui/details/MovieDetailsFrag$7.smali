.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;
.super Ljava/lang/Object;
.source "MovieDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 475
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Resetting parallax views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->resetDynamicViewsYPosition()V

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7$1;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_0
    return-void
.end method
