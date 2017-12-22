.class final Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "LolomoRecyclerViewFrag_Ab7814.java"


# instance fields
.field totalY:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper$1;->totalY:I

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    .line 137
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 138
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 139
    check-cast v1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 140
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;

    .line 141
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v3

    .line 142
    instance-of v5, v3, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;

    if-eqz v5, :cond_0

    .line 143
    check-cast v3, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;

    .line 144
    if-nez p2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 146
    iget v5, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper$1;->totalY:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper$1;->totalY:I

    .line 148
    const/4 v5, 0x1

    if-lt v2, v5, :cond_1

    .line 149
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->hideBillBoard()V

    .line 154
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    .line 155
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper$1;->totalY:I

    div-int/lit8 v0, v0, 0x2

    if-le v2, v0, :cond_2

    .line 156
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setActionBarSolidBg_Ab7814()V

    .line 165
    :cond_0
    :goto_1
    return-void

    .line 151
    :cond_1
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->scrollBillBoard(F)V

    .line 152
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->showBillBoard()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setActionBarTransparent_Ab7814()V

    goto :goto_1
.end method
