.class public Lcom/netflix/falkor/task/FetchLoMosTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchLoMosTask.java"


# static fields
.field private static final FALLBACK_LOMO_VIDEOS_TO_RANGE:I = 0x9


# instance fields
.field private final fromLomo:I

.field private final toLomo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p4}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 27
    iput p2, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->fromLomo:I

    .line 28
    iput p3, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->toLomo:I

    .line 29
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 9
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
    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v5

    iget v1, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->fromLomo:I

    iget v2, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->toLomo:I

    .line 41
    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 44
    :goto_0
    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->append(Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getServiceProvider()Lcom/netflix/falkor/ServiceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "FetchLoMosTask.buildPqlList: service is null, using fallback range %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_1
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomos"

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    iget v0, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->fromLomo:I

    iget v2, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->toLomo:I

    .line 42
    invoke-static {v0, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 51
    invoke-static {v1, v3}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v2, v5

    const-string/jumbo v1, "summary"

    aput-object v1, v2, v6

    .line 50
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 65
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget v1, p0, Lcom/netflix/falkor/task/FetchLoMosTask;->fromLomo:I

    iget-object v2, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getLists(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 60
    return-void
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
    .line 33
    const/4 v0, 0x1

    return v0
.end method
