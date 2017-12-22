.class Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$1;
.super Ljava/lang/Object;
.source "BarkerMovieDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setToolbarColor(I)V

    .line 221
    :cond_0
    return-void
.end method
