.class public Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;
.super Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;
.source "MovieDetailsFrag_Ab7994.java"


# instance fields
.field private details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

.field private gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

.field private mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

.field private viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;-><init>()V

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method

.method private setupRecyclerViewItemDecorationForSims()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->numColumns:I

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected restoreLayoutManagerState()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TrailerUtils;->shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->restoreLayoutManagerState()V

    .line 83
    :cond_0
    return-void
.end method

.method protected setTrackId(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 4

    .prologue
    .line 94
    invoke-static {p1}, Lcom/netflix/mediaclient/util/TrailerUtils;->shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setTrackId(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    .line 99
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getTrailersRequestId()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getTrailersTrackId()I

    move-result v2

    .line 101
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getTrailersListPos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;-><init>(Ljava/lang/String;II)V

    .line 103
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setTrackable(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    goto :goto_0
.end method

.method protected setupRecyclerView()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerView()V

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->setupRecyclerViewAdapterForTrailers()V

    .line 36
    return-void
.end method

.method protected setupRecyclerViewAdapterForTrailers()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TrailerUtils;->generateAdapterForTrailers(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    .line 120
    :cond_0
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected setupRecyclerViewLayoutManagerForTrailers()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/TrailerUtils;->generateGridViewLayoutManagerForTrailers(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 113
    return-void
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 4

    .prologue
    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    .line 46
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 49
    invoke-static {p1}, Lcom/netflix/mediaclient/util/TrailerUtils;->shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->setupRecyclerViewLayoutManagerForTrailers()V

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->setupRecyclerViewAdapterForTrailers()V

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->setClipToCompleteRows(Z)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getTrailers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->setupRecyclerViewItemDecorationForSims()V

    goto :goto_0
.end method

.method protected bridge synthetic showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag_Ab7994;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    return-void
.end method

.method protected showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/netflix/mediaclient/util/TrailerUtils;->shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 90
    :cond_0
    return-void
.end method
