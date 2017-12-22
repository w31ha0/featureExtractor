.class public Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;
.super Lcom/netflix/mediaclient/ui/details/EpisodesFrag;
.source "EpisodesFrag_Ab7994.java"


# static fields
.field private static final EPISODES:I = 0x0

.field private static final SAVED_STATE_ACTIVE_TAB:Ljava/lang/String; = "saved_state_active_tab"

.field private static final SIMS:I = 0x1

.field private static final TRAILERS:I = 0x2


# instance fields
.field private activeTab:I

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

.field private mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

.field private numColumns:I

.field private trackableForSims:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

.field private trackableForTrailers:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

.field private viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

.field private viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->numColumns:I

    return v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;-><init>()V

    .line 71
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 72
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method private removeRecyclerViewItemDecoration()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 370
    :cond_0
    return-void
.end method

.method private setupRecyclerViewItemDecorationForSims()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->numColumns:I

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->mItemDecorationForSims:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 364
    return-void
.end method

.method private setupTrackIds()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 171
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilarsRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 172
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilarsTrackId()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 173
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilarsListPos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->trackableForSims:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    .line 175
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 176
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getTrailersRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 177
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getTrailersTrackId()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 178
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getTrailersListPos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->trackableForTrailers:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    goto :goto_0
.end method

.method private updateRecyclerViewLayoutManager()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 307
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 329
    return-void

    .line 310
    :pswitch_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setupRecyclerViewLayoutManager()V

    .line 311
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->removeRecyclerViewItemDecoration()V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->initializeViewCreatorForSims()V

    .line 317
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setupRecyclerViewLayoutManagerForSims()V

    .line 318
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setupRecyclerViewItemDecorationForSims()V

    goto :goto_0

    .line 321
    :pswitch_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setupRecyclerViewLayoutManagerForTrailers()V

    .line 322
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->initializeViewCreatorForTrailers()V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setupSeasonsSpinnerAdapter()V

    .line 197
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setupSeasonsSpinnerListener()V

    .line 199
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0f0100

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800013

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 185
    return-void
.end method

.method protected initializeViewCreatorForSims()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    goto :goto_0
.end method

.method protected initializeViewCreatorForTrailers()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TrailerUtils;->generateAdapterForTrailers(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    .line 299
    :cond_0
    return-void
.end method

.method public isShowingEpisodes()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onCreate(Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_0

    .line 81
    const-string/jumbo v0, "saved_state_active_tab"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeStandardNumVideosPerPage(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->numColumns:I

    .line 85
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string/jumbo v0, "saved_state_active_tab"

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-direct {v1, v0, p0, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->addHeaderView(Landroid/view/View;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->addFooterView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setSingleChoiceMode(Z)V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->addOfflineAgentListener(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method protected setupRecyclerViewLayoutManagerForSims()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 237
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$1;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method protected setupRecyclerViewLayoutManagerForTrailers()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/TrailerUtils;->generateGridViewLayoutManagerForTrailers(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->gridLayoutManagerForTrailers:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 246
    return-void
.end method

.method public showEpisodes()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 373
    iput v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 378
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->updateRecyclerViewLayoutManager()V

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->getEpisodeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->getEpisodeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->getEpisodeList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v1, v0, v3, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 383
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setSpinnerSelection()V

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItemContentType(I)V

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->clearData()V

    .line 388
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->postSetSpinnerSelectionRunnable()V

    goto :goto_0
.end method

.method public showSims()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 332
    iput v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->updateRecyclerViewLayoutManager()V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->trackableForSims:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->trackableForSims:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setTrackable(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 351
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 353
    :cond_1
    return-void
.end method

.method protected showStandardViews()V
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    if-nez v0, :cond_0

    .line 131
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showStandardViews()V

    .line 133
    :cond_0
    return-void
.end method

.method public showTrailers()V
    .locals 4

    .prologue
    .line 393
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getTrailers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->updateRecyclerViewLayoutManager()V

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getTrailers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->viewCreatorTrailers:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->trackableForTrailers:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->trackableForTrailers:Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setTrackable(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 412
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 414
    :cond_1
    return-void
.end method

.method public switchSeason(IZ)V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->switchSeason(IZ)V

    .line 125
    :cond_0
    return-void
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 140
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->setupTrackIds()V

    .line 142
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 160
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->activeTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->setSecondTabAsSelected()V

    .line 163
    :cond_1
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showEpisodes()V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showSims()V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showTrailers()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
