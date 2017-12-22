.class public Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/DetailsFrag;
.source "MovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/ILayoutManager;
.implements Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/details/DetailsFrag",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;",
        ">;",
        "Lcom/netflix/mediaclient/ui/details/ILayoutManager;",
        "Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;"
    }
.end annotation


# static fields
.field private static final EXTRA_LAYOUT_MANAGER_STATE:Ljava/lang/String; = "layout_manager_state"

.field protected static final EXTRA_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final TAG:Ljava/lang/String; = "MovieDetailsFrag"


# instance fields
.field protected adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field protected isLoading:Z

.field private layoutManagerSavedState:Landroid/os/Parcelable;

.field protected numColumns:I

.field protected parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected requestId:J

.field private rootContainer:Landroid/view/View;

.field protected videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method private addFooter(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->create(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)Lcom/netflix/mediaclient/ui/details/CopyrightView;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setGravityAsCenter()V

    .line 282
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v2, "extra_model_view_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v0
.end method

.method private setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->rootContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method protected fetchMovieData()V
    .locals 6

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    .line 365
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->requestId:J

    .line 366
    const-string/jumbo v1, "MovieDetailsFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching data for movie ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->requestId:J

    invoke-direct {v3, p0, v4, v5}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;J)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->primaryView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 110
    const v0, 0x7f100209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->rootContainer:Landroid/view/View;

    .line 111
    return-void
.end method

.method protected getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    return-object v0
.end method

.method protected bridge synthetic getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f0300ea

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNumColumns()I
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeStandardNumVideosPerPage(Landroid/content/Context;Z)I

    move-result v0

    goto :goto_0
.end method

.method protected getPrimaryViewId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x102000a

    return v0
.end method

.method protected getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method protected handlePrefetchDPData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPForSimilars(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V

    .line 458
    return-void
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->shouldRenderTabs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showRelatedTitle()V

    .line 139
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setPadding(IIII)V

    .line 142
    :cond_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 105
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->findViews(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNumColumns()I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    .line 150
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->initDetailsViewGroup(Landroid/view/View;)V

    .line 152
    if-eqz p3, :cond_0

    .line 153
    const-string/jumbo v1, "layout_manager_state"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setLayoutManagerSavedState(Landroid/os/Parcelable;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerView()V

    .line 161
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 168
    return-object v0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 328
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->fetchMovieData()V

    .line 329
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 337
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onResume()V

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->refreshImagesIfNecessary(Landroid/support/v7/widget/RecyclerView;)V

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyDataSetChanged()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetails()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDownloadButtonIfExists(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 343
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "layout_manager_state"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected reloadData()V
    .locals 0

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->fetchMovieData()V

    .line 356
    return-void
.end method

.method protected restoreLayoutManagerState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 461
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "can\'t restore layout manager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/DataUtil;->areAnyNull(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 466
    :cond_0
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Restoring layout manager state: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    .line 471
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Posting message to reset parallax views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public scrollTop()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->setExitTransition(Landroid/transition/Transition;)V

    .line 174
    const v0, 0x7f0f0111

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setBackgroundResource(I)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 188
    :cond_0
    return-void
.end method

.method public setLayoutManagerSavedState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    .line 351
    return-void
.end method

.method protected setTrackId(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 4

    .prologue
    .line 437
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    .line 438
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilarsRequestId()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilarsTrackId()I

    move-result v2

    .line 440
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilarsListPos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;-><init>(Ljava/lang/String;II)V

    .line 442
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setTrackable(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 443
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :cond_2
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Attaching parallax scroll listener to recyclerView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 213
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 212
    invoke-static {v4, v0, v1, v4, v4}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method protected setupRecyclerView()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerViewItemDecoration()V

    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerViewLayoutManager()V

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerViewAdapter()V

    goto :goto_0
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    new-instance v3, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 271
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 294
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 296
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 319
    return-void
.end method

.method public setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    .line 494
    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f100195

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 497
    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->buildDownloadButtonTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    goto :goto_0
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 3

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 411
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setTrackId(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 412
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 416
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->showTutorialForVideoWithScroll(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 419
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->addFooter(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 421
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->restoreLayoutManagerState()V

    .line 423
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 424
    return-void
.end method

.method protected bridge synthetic showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    return-void
.end method

.method protected showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 2

    .prologue
    .line 446
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;)V

    .line 448
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->handlePrefetchDPData(Ljava/util/List;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hideRelatedTitle()V

    goto :goto_0
.end method

.method protected updateVolatileDataInView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 5

    .prologue
    .line 430
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Volatile data update rating: %d, inQ: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getUserThumbRating()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->isInQueue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateRating(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 433
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->updateMyListState()V

    .line 434
    return-void
.end method
