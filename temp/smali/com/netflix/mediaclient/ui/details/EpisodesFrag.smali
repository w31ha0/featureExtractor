.class public Lcom/netflix/mediaclient/ui/details/EpisodesFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "EpisodesFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;
.implements Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;
.implements Lcom/netflix/mediaclient/ui/mdx/CastPlayerHelper$CastPlayerDialog;
.implements Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# static fields
.field protected static final EXTRA_EPISODE_ID:Ljava/lang/String; = "extra_episode_id"

.field private static final EXTRA_EPISODE_INDEX:Ljava/lang/String; = "extra_episode_index"

.field private static final EXTRA_FORCE_SHOW_SEASONS_SELECTOR:Ljava/lang/String; = "extra_show_episodes_selector"

.field private static final EXTRA_SEASON_INDEX:Ljava/lang/String; = "extra_season_index"

.field protected static final EXTRA_SHOW_DETAILS:Ljava/lang/String; = "extra_show_details"

.field protected static final EXTRA_SHOW_ID:Ljava/lang/String; = "extra_show_id"

.field private static final TAG:Ljava/lang/String; = "EpisodesFrag"


# instance fields
.field private addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field private agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

.field private currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

.field protected currSeasonIndex:I

.field protected detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field protected episodeId:Ljava/lang/String;

.field private final episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

.field protected episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field protected handler:Landroid/os/Handler;

.field protected isLoading:Z

.field private isShowDAB:Z

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected requestId:J

.field private restoredEpisodeIndex:I

.field protected seasonsRequestId:J

.field public selectedEpisodeIndex:I

.field protected showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

.field protected showDetailsOnLaunch:Z

.field protected showId:Ljava/lang/String;

.field protected spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

.field protected spinnerViewGroup:Landroid/view/ViewGroup;

.field protected final viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    .line 99
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 100
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    .line 101
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isShowDAB:Z

    .line 207
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    .line 1010
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 1048
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$7;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setItemChecked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->hasSeasons(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->fetchUpdatedSeasonsDetails()V

    return-void
.end method

.method private addSpinnerAsHeader()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 523
    :cond_0
    return-void
.end method

.method protected static applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string/jumbo v1, "extra_show_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "extra_show_episodes_selector"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const-string/jumbo v1, "extra_show_details"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setArguments(Landroid/os/Bundle;)V

    .line 148
    return-object p0
.end method

.method private completeInitIfPossible()V
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 673
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - activity is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 678
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - manager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-nez v0, :cond_2

    .line 683
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - details view is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 688
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - showId is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_3
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "All clear - completing init process..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showLoadingView()V

    .line 695
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->fetchShowDetailsAndSeasons()V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;-><init>()V

    .line 125
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 126
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method public static createEpisodes(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;-><init>()V

    .line 131
    const v1, 0x7f0b0116

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 132
    invoke-static {v0, p0, p1, p2, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method private fetchUpdatedSeasonsDetails()V
    .locals 9

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 801
    if-nez v0, :cond_0

    .line 802
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Manager is null - can\'t get season details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 807
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "show ID is null - can\'t get season details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    .line 812
    :cond_2
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Spinner is null - can\'t get season details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->seasonsRequestId:J

    .line 822
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    sget-object v8, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    .line 823
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 824
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->seasonsRequestId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;IIJ)V

    .line 822
    invoke-interface {v6, v7, v8, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private getCheckedItemPosition()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->getCheckedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method private getSeasonsSpinnerStyle()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SPINNER:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->shouldTextBeForcedLight(Landroid/content/Context;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0199

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0193

    goto :goto_0
.end method

.method private hasSeasons(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1280
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateCachedEpisodesIfDAB()V
    .locals 3

    .prologue
    .line 1301
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isShowDAB:Z

    if-eqz v0, :cond_0

    .line 1302
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Show is \'Day After Broadcast\' (DAB), invalidating episode cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/DataUtil;->invalidateCachedEpisodes(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    .line 1305
    :cond_0
    return-void
.end method

.method private notifyDataLoadingComplete()V
    .locals 1

    .prologue
    .line 895
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 896
    return-void
.end method

.method private registerEpisodeRefreshReceiver()V
    .locals 4

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.BA_EPISODE_REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1005
    return-void
.end method

.method private removeOfflineAgentListener()V
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    .line 449
    :cond_0
    return-void
.end method

.method private setItemChecked(I)V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItemChecked(I)V

    .line 905
    :cond_0
    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .prologue
    .line 756
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing loading view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 760
    :cond_0
    return-void
.end method


# virtual methods
.method protected addOfflineAgentListener(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->removeOfflineAgentListener()V

    .line 435
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    .line 437
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    .line 438
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 440
    :cond_0
    return-void
.end method

.method protected addSpinnerToDetailsGroup()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    .line 515
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 552
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    .line 556
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getSeasonsSpinnerStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    .line 558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupSeasonsSpinnerAdapter()V

    .line 559
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupSeasonsSpinnerListener()V

    .line 561
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0f0100

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800013

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method protected fetchShowDetailsAndSeasons()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 778
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 779
    if-nez v0, :cond_0

    .line 780
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Manager is null - can\'t get show details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 785
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "show ID is null - can\'t get show details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :cond_1
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 790
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->requestId:J

    .line 794
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 795
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v3

    new-instance v5, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->requestId:J

    invoke-direct {v5, p0, v6, v7}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;J)V

    .line 794
    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 182
    return-void
.end method

.method protected getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected getSeasonSpinner()Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 177
    const v0, 0x7f0300ea

    return v0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    .prologue
    .line 526
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 527
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 528
    return-void
.end method

.method protected initDetailsViewGroupAsHeader()V
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->initDetailsViewGroup()V

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 481
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setDetailViewGroupVisibility(I)V

    .line 482
    return-void

    .line 481
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected isListVisible()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoadingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 634
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onActivityCreated(Landroid/os/Bundle;)V

    .line 637
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->completeInitIfPossible()V

    .line 638
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1285
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 1286
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1287
    instance-of v1, v0, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;

    if-eqz v1, :cond_0

    .line 1288
    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;->getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    move-result-object v0

    .line 1289
    if-eqz v0, :cond_0

    .line 1290
    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;->onDialogCanceled(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;)V

    .line 1293
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->handler:Landroid/os/Handler;

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetailsOnLaunch:Z

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const-string/jumbo v0, "extra_season_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 161
    const-string/jumbo v0, "extra_episode_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    .line 168
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->registerEpisodeRefreshReceiver()V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 457
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "onCreateView called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getlayoutId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 459
    new-instance v1, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 461
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->findViews(Landroid/view/View;)V

    .line 462
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerView()V

    .line 464
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->initDetailsViewGroupAsHeader()V

    .line 465
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupSeasonsSpinnerGroup()V

    .line 467
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 475
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 700
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onDestroy()V

    .line 702
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->invalidateCachedEpisodesIfDAB()V

    .line 712
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 713
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 428
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onDestroyView()V

    .line 429
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->removeOfflineAgentListener()V

    .line 430
    return-void
.end method

.method public onEpisodesUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    if-eqz p1, :cond_0

    .line 881
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 883
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->showTutorialForVideoWithScroll(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 667
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 668
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->completeInitIfPossible()V

    .line 669
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 642
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onResume()V

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->notifyDataSetChanged()V

    .line 645
    :cond_0
    return-void
.end method

.method public onRetryRequested()V
    .locals 2

    .prologue
    .line 717
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Retry requested"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showLoadingView()V

    .line 721
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->fetchShowDetailsAndSeasons()V

    .line 723
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 652
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getCheckedItemPosition()I

    move-result v1

    .line 656
    const-string/jumbo v2, "extra_season_index"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    const-string/jumbo v0, "extra_episode_index"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 659
    :cond_0
    return-void
.end method

.method protected postSetSpinnerSelectionRunnable()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$5;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 967
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 727
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "reload()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->fetchShowDetailsAndSeasons()V

    .line 729
    return-void
.end method

.method public setAsDAB(Z)V
    .locals 0

    .prologue
    .line 1308
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isShowDAB:Z

    .line 1309
    return-void
.end method

.method public setDetailViewGroupVisibility(I)V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setVisibility(I)V

    .line 741
    return-void
.end method

.method protected setSeasonIndex()V
    .locals 2

    .prologue
    .line 989
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 991
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentSeasonNumber()I

    move-result v1

    .line 990
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->tryGetSeasonIndexBySeasonNumber(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 993
    :cond_0
    return-void
.end method

.method protected setSpinnerSelection()V
    .locals 2

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setSeasonIndex()V

    .line 976
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    if-gez v0, :cond_0

    .line 977
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "No valid season index found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setNonTouchSelection(I)V

    goto :goto_0
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    .line 1046
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 486
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-object v0

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 497
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 499
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v5

    aput-object v5, v3, v4

    .line 498
    invoke-static {v1, v2, v3, v0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method protected setupRecyclerView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 191
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Setting recyclerView to invisible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerViewLayoutManager()V

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerViewAdapter()V

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerViewItemDecoration()V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setBackgroundIfApplicable(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 4

    .prologue
    .line 410
    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-direct {v1, v0, p0, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    .line 413
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->addHeaderView(Landroid/view/View;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->addFooterView(Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 421
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->shouldRenderDPWithBifs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setSingleChoiceMode(Z)V

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addOfflineAgentListener(Landroid/view/ViewGroup;)V

    .line 424
    return-void

    .line 421
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 453
    return-void
.end method

.method protected setupSeasonsSpinnerAdapter()V
    .locals 3

    .prologue
    .line 619
    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$4;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;)V

    .line 628
    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setItemBackgroundColor(I)V

    .line 629
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 630
    return-void
.end method

.method protected setupSeasonsSpinnerGroup()V
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    .line 541
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_episodes_selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 543
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addSpinnerAsHeader()V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addSpinnerToDetailsGroup()V

    goto :goto_0
.end method

.method protected setupSeasonsSpinnerListener()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$3;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 589
    return-void
.end method

.method public setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f1000b4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->buildDownloadButtonTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    goto :goto_0
.end method

.method protected showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 748
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing error view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 753
    :cond_0
    return-void
.end method

.method protected showStandardViews()V
    .locals 2

    .prologue
    .line 763
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing standard views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 774
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->postSetSpinnerSelectionRunnable()V

    .line 775
    return-void
.end method

.method public switchSeason(IZ)V
    .locals 2

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->invalidateCachedEpisodesIfDAB()V

    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 602
    iput p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    if-nez v0, :cond_0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 611
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateSeasonDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    .line 614
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 615
    return-void
.end method

.method public updateEpisodeSelection()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 829
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    if-eq v0, v4, :cond_0

    .line 830
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 831
    iput v4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    .line 834
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    if-ne v0, v4, :cond_3

    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 840
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 841
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v3

    .line 842
    if-nez v3, :cond_2

    .line 840
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_2
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    goto :goto_1

    .line 857
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    if-ne v0, v4, :cond_4

    .line 858
    iput v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 865
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 866
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->notifyDataLoadingComplete()V

    .line 868
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setItemChecked(I)V

    .line 870
    return-void
.end method

.method protected updateSeasonData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->updateSeasonData(Ljava/util/List;)V

    .line 957
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showStandardViews()V

    .line 958
    return-void
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 4

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 914
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 918
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    new-instance v2, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;

    invoke-direct {v2, v0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    invoke-virtual {v1, p1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 919
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setCopyright(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 921
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 922
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 929
    :cond_2
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToMyListWrapper(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 931
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setupDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 932
    const-string/jumbo v1, "EpisodesFrag"

    const-string/jumbo v2, "EpisodeFag updateShowDetails"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    if-eqz v1, :cond_0

    .line 934
    check-cast v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->dataReady(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    goto :goto_0
.end method

.method protected updateVolatileDataInView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 6

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    const-string/jumbo v1, "EpisodesFrag"

    const-string/jumbo v2, "Volatile data update rating: %d, inQ: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getUserThumbRating()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isInQueue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 951
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateRating(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 952
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isInQueue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    goto :goto_0
.end method
