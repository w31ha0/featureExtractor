.class public Lcom/netflix/falkor/task/FetchShowDetailsTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchShowDetailsTask.java"


# instance fields
.field private final currentEpisodeId:Ljava/lang/String;

.field private final includeKubrick:Z

.field private final includeSeasonEpisodes:Z

.field private final includeSeasons:Z

.field private seasonsPql:Lcom/netflix/falkor/PQL;

.field private final showId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p7}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 29
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->showId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->currentEpisodeId:Ljava/lang/String;

    .line 31
    iput-boolean p4, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeSeasons:Z

    .line 32
    iput-boolean p5, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeKubrick:Z

    .line 33
    iput-boolean p6, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeSeasonEpisodes:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->showId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->latchToPendingRequestsIfExists(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->showId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->currentEpisodeId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeSeasons:Z

    iget-boolean v4, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeKubrick:Z

    iget-boolean v5, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeSeasonEpisodes:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/falkor/task/CmpUtils;->buildShowDetailsPQL(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V

    .line 41
    invoke-static {v1}, Lcom/netflix/falkor/task/CmpUtils;->getSeasonsPQL(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->seasonsPql:Lcom/netflix/falkor/PQL;

    .line 42
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-boolean v0, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeSeasons:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p1, v1, v1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-interface {p1, v1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "shows"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->showId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 52
    iget-boolean v1, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->includeSeasons:Z

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchShowDetailsTask;->seasonsPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/netflix/falkor/task/FetchShowDetailsTask;->isAllDataLocalToCache()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/netflix/falkor/task/FetchShowDetailsTask;->isAllDataLocalToCache()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method protected shouldCollapseMissingPql(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
