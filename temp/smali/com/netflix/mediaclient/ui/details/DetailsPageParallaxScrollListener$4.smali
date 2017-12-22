.class Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;
.super Ljava/lang/Object;
.source "DetailsPageParallaxScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field final synthetic val$seasonNumber:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;I)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    iput p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->val$seasonNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->access$300(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->val$seasonNumber:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->tryGetSeasonIndexBySeasonNumber(I)I

    move-result v0

    .line 501
    if-gez v0, :cond_0

    .line 502
    const-string/jumbo v0, "DetailsPageParallaxScrollListener"

    const-string/jumbo v1, "No valid season index found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->access$300(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setSelection(IZ)V

    goto :goto_0
.end method
