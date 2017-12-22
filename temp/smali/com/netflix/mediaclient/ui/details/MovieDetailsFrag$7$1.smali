.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7$1;
.super Ljava/lang/Object;
.source "MovieDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7$1;->this$1:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Resetting parallax views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7$1;->this$1:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setToolbarColor()V

    .line 484
    return-void
.end method
