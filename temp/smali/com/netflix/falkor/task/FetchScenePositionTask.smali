.class public Lcom/netflix/falkor/task/FetchScenePositionTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchScenePositionTask.java"


# instance fields
.field private final playableId:Ljava/lang/String;

.field private final scene:Ljava/lang/String;

.field private final videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p5}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 22
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 23
    iput-object p3, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->playableId:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->scene:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 3
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
    .line 29
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->playableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->scene:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/falkor/task/CmpUtils;->buildScenePql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 44
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->playableId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/falkor/task/FetchScenePositionTask;->scene:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/netflix/falkor/task/CmpUtils;->buildScenePql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorScene;

    .line 36
    if-nez v0, :cond_0

    move v1, v2

    .line 37
    :goto_0
    const-string/jumbo v3, "CachedModelProxy"

    const-string/jumbo v4, "FetchScenePositionTask rtn: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 39
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorScene;->getScenePosition()I

    move-result v1

    goto :goto_0
.end method
