.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "MovieDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    .line 313
    :goto_0
    return v0

    .line 310
    :cond_0
    if-nez p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
