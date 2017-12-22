.class public Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;
.super Lcom/netflix/falkor/task/BaseCmpTask;
.source "FetchVideoVolatileNodesTask.java"


# instance fields
.field private final isMovie:Z

.field private final rootBranchName:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/falkor/task/BaseCmpTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->videoId:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->isMovie:Z

    .line 23
    if-eqz p2, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    iput-object v0, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->rootBranchName:Ljava/lang/String;

    .line 24
    return-void

    .line 23
    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method


# virtual methods
.method public buildPqlList(Ljava/util/List;)V
    .locals 2
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
    .line 35
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->videoId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->isMovie:Z

    invoke-static {p1, v0, v1}, Lcom/netflix/falkor/task/CmpUtils;->buildVolatileVideoPQLs(Ljava/util/List;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-boolean v0, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->isMovie:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p1, v1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-interface {p1, v1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public fetchResultsAndCallbackForSuccess(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->rootBranchName:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->videoId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 43
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-12098: FetchVideoVolatileNodesTask bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->rootBranchName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id. Requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string/jumbo v0, "rtn=null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/netflix/falkor/CachedModelProxy;->logHandledException(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p2, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 56
    :goto_1
    return-void

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->videoId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Video$Bookmark;)V

    .line 50
    iget-boolean v1, p0, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;->isMovie:Z

    if-eqz v1, :cond_3

    .line 51
    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p2, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 53
    :cond_3
    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p2, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1
.end method

.method public shouldSkipCache()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
