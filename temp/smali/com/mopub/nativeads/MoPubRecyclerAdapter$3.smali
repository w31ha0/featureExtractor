.class Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "MoPubRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/VisibilityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 101
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v3

    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v1

    .line 102
    .local v1, "adjustedEndPosition":I
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v2

    .line 103
    .local v2, "adjustedStartPosition":I
    sub-int v3, v1, v2

    add-int/lit8 v0, v3, 0x1

    .line 104
    .local v0, "adjustedCount":I
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v3, v2, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeChanged(II)V

    .line 105
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 109
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v1

    .line 110
    .local v1, "adjustedStartPosition":I
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    .line 111
    .local v3, "newOriginalCount":I
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 112
    add-int v4, p1, p2

    if-lt v4, v3, :cond_1

    const/4 v0, 0x1

    .line 113
    .local v0, "addingToEnd":Z
    :goto_0
    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v5}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 114
    invoke-static {v5}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v5

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_2

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 124
    :goto_1
    return-void

    .line 112
    .end local v0    # "addingToEnd":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    .restart local v0    # "addingToEnd":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p2, :cond_3

    .line 120
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->insertItem(I)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    :cond_3
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v4, v1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeInserted(II)V

    goto :goto_1
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 8
    .param p1, "positionStart"    # I
    .param p2, "itemsRemoved"    # I

    .prologue
    .line 128
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v6}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    .line 129
    .local v0, "adjustedStartPosition":I
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v6}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    .line 130
    .local v3, "newOriginalCount":I
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v6}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 131
    add-int v6, p1, p2

    if-lt v6, v3, :cond_1

    const/4 v5, 0x1

    .line 132
    .local v5, "removingFromEnd":Z
    :goto_0
    sget-object v6, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v7, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v7}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v7

    if-eq v6, v7, :cond_0

    sget-object v6, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v7, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 133
    invoke-static {v7}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v7

    if-ne v6, v7, :cond_2

    if-eqz v5, :cond_2

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v6}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 148
    :goto_1
    return-void

    .line 131
    .end local v5    # "removingFromEnd":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 137
    .restart local v5    # "removingFromEnd":Z
    :cond_2
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v6}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v6

    add-int v7, v3, p2

    invoke-virtual {v6, v7}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v4

    .line 138
    .local v4, "oldAdjustedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_3

    .line 140
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v6}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeItem(I)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_3
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v6}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v6

    sub-int v2, v4, v6

    .line 145
    .local v2, "itemsRemovedIncludingAds":I
    sub-int v6, v2, p2

    sub-int/2addr v0, v6

    .line 146
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v6, v0, v2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_1
.end method
