.class public Lcom/netflix/falkor/task/FetchGenresTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchGenresTask.java"


# instance fields
.field private final fromLomo:I

.field private final genreListId:Ljava/lang/String;

.field private final toLomo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p5}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 23
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchGenresTask;->genreListId:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/netflix/falkor/task/FetchGenresTask;->fromLomo:I

    .line 25
    iput p4, p0, Lcom/netflix/falkor/task/FetchGenresTask;->toLomo:I

    .line 26
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 8
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
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "topGenres"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchGenresTask;->genreListId:Ljava/lang/String;

    aput-object v1, v0, v4

    iget v1, p0, Lcom/netflix/falkor/task/FetchGenresTask;->fromLomo:I

    iget v2, p0, Lcom/netflix/falkor/task/FetchGenresTask;->toLomo:I

    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "topGenres"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchGenresTask;->genreListId:Ljava/lang/String;

    aput-object v1, v0, v4

    iget v1, p0, Lcom/netflix/falkor/task/FetchGenresTask;->fromLomo:I

    iget v2, p0, Lcom/netflix/falkor/task/FetchGenresTask;->toLomo:I

    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchGenresTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    .line 32
    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v7

    .line 31
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 44
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchGenresTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget v1, p0, Lcom/netflix/falkor/task/FetchGenresTask;->fromLomo:I

    iget-object v2, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getLists(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 39
    return-void
.end method
