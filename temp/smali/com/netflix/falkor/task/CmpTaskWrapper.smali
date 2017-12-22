.class public final Lcom/netflix/falkor/task/CmpTaskWrapper;
.super Lcom/netflix/falkor/task/CmpTask;
.source "CmpTaskWrapper.java"


# instance fields
.field private final taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p3}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 18
    iput-object p2, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    .line 19
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 1
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
    .line 23
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0, p1}, Lcom/netflix/falkor/task/CmpTaskDetails;->buildPqlList(Ljava/util/List;)V

    .line 24
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0, p1, p2}, Lcom/netflix/falkor/task/CmpTaskDetails;->callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 34
    return-void
.end method

.method protected customHandleResponse(Lcom/google/gson/JsonObject;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0, p1}, Lcom/netflix/falkor/task/CmpTaskDetails;->customHandleResponse(Lcom/google/gson/JsonObject;)V

    .line 73
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/falkor/task/CmpTaskDetails;->fetchResultsAndCallbackForSuccess(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V

    .line 29
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/task/CmpTaskDetails;->getOptionalRequestParams()Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 43
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0, p1}, Lcom/netflix/falkor/task/CmpTaskDetails;->shouldCollapseMissingPql(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected shouldCustomHandleResponse()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/task/CmpTaskDetails;->shouldCustomHandleResponse()Z

    move-result v0

    return v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/task/CmpTaskDetails;->shouldSkipCache()Z

    move-result v0

    return v0
.end method

.method protected shouldUseAuthorization()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/task/CmpTaskDetails;->shouldUseAuthorization()Z

    move-result v0

    return v0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/task/CmpTaskDetails;->shouldUseCacheOnly()Z

    move-result v0

    return v0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTaskWrapper;->taskDetails:Lcom/netflix/falkor/task/CmpTaskDetails;

    invoke-interface {v0}, Lcom/netflix/falkor/task/CmpTaskDetails;->shouldUseCallMethod()Z

    move-result v0

    return v0
.end method
