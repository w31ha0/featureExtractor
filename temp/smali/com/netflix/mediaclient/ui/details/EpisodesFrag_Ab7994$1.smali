.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "EpisodesFrag_Ab7994.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$1;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 228
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$1;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$1;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)I

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
