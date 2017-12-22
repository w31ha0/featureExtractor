.class public Lcom/netflix/falkor/task/FetchCwVideosTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchCwVideosTask.java"


# instance fields
.field private final fromVideo:I

.field private final taskMode:Lcom/netflix/falkor/task/CmpTaskMode;

.field private final toVideo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p5}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 21
    iput p2, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->fromVideo:I

    .line 22
    iput p3, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->toVideo:I

    .line 23
    iput-object p4, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->taskMode:Lcom/netflix/falkor/task/CmpTaskMode;

    .line 24
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
    .line 28
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->fromVideo:I

    iget v2, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->toVideo:I

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/falkor/task/CmpUtils;->buildCwPql(Ljava/util/List;Ljava/lang/String;II)V

    .line 30
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 42
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
    .locals 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "lolomo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "continueWatching"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->fromVideo:I

    iget v4, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->toVideo:I

    invoke-static {v3, v4}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 36
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->onCWVideosFetched(Ljava/util/List;)V

    .line 37
    return-void
.end method

.method protected shouldSkipCache()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->taskMode:Lcom/netflix/falkor/task/CmpTaskMode;

    sget-object v1, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchCwVideosTask;->taskMode:Lcom/netflix/falkor/task/CmpTaskMode;

    sget-object v1, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/task/CmpTaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
