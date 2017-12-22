.class public Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;
.super Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
.source "EpisodesAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus;


# static fields
.field private static final TAG:Ljava/lang/String; = "EpisodesAdapter"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

.field protected final episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

.field protected episodeStartIndex:I

.field protected hasMoreData:Z

.field protected isLoading:Z

.field protected mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

.field protected requestId:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;-><init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 47
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 49
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->initToLoadingState()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->onFetchError()V

    return-void
.end method

.method private onFetchError()V
    .locals 2

    .prologue
    .line 161
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "onFetchError()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->notifyDataSetChanged()V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    .line 164
    return-void
.end method


# virtual methods
.method public fetchMoreData()V
    .locals 10

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 113
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    :cond_1
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "Manager is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    if-nez v1, :cond_3

    .line 119
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "No season details yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    .line 127
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 128
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "nothing more to fetch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    goto :goto_0

    .line 133
    :cond_4
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    add-int/lit8 v1, v1, 0x28

    add-int/lit8 v5, v1, -0x1

    .line 134
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v1

    if-lt v5, v1, :cond_5

    .line 135
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    .line 138
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getId()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    goto :goto_0

    .line 148
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget v9, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    iget v4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;JII)V

    move-object v1, v7

    move-object v2, v6

    move-object v3, v8

    move v4, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method protected initToLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "initToLoadingState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoading:Z

    .line 169
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    .line 171
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->fetchMoreData()V

    .line 175
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoading:Z

    return v0
.end method

.method protected logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/netflix/mediaclient/util/LogUtils;->logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    .line 158
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method protected onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onPostItemViewBind(I)V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    if-ne p1, v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->fetchMoreData()V

    .line 67
    :cond_0
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    goto :goto_0
.end method

.method protected updateEpisodesData(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 178
    const-string/jumbo v0, "EpisodesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding episodes, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateItems(Ljava/util/Collection;I)V

    .line 181
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    .line 182
    return-void
.end method

.method public updateSeasonDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V
    .locals 0

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->initToLoadingState()V

    goto :goto_0
.end method
