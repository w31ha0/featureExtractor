.class public Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchEpisodeDetailsTask.java"


# instance fields
.field private final episodeId:Ljava/lang/String;

.field private final scene:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p4}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 23
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->episodeId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->scene:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 7
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
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->episodeId:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v3

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v5

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "rating"

    aput-object v3, v1, v2

    .line 32
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    .line 31
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->scene:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->episodeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->scene:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/falkor/task/CmpUtils;->buildScenePql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 51
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "episodes"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->episodeId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 41
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netflix/model/branches/FalkorVideo;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 42
    check-cast v1, Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorVideo;->getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;->episodeId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/netflix/falkor/CachedModelProxy;->updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Video$Bookmark;)V

    .line 45
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 46
    return-void
.end method
