.class public Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "PrefetchGenreLoLoMoTask.java"


# instance fields
.field private final genreId:Ljava/lang/String;

.field private final includeKubrick:Z

.field private final toLomo:I

.field private final toVideo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p6}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 21
    iput-object p2, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->genreId:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->toLomo:I

    .line 23
    iput p4, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->toVideo:I

    .line 24
    iput-boolean p5, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->includeKubrick:Z

    .line 25
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

    .line 29
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getSummaryNodeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "topGenres"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->genreId:Ljava/lang/String;

    aput-object v2, v1, v4

    iget v2, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->toLomo:I

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "topGenres"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->genreId:Ljava/lang/String;

    aput-object v2, v1, v4

    iget v2, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->toLomo:I

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->toVideo:I

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    iget-boolean v2, p0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;->includeKubrick:Z

    if-eqz v2, :cond_0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string/jumbo v0, "kubrick"

    aput-object v0, v2, v4

    const-string/jumbo v0, "rating"

    aput-object v0, v2, v5

    .line 32
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    aput-object v0, v1, v7

    .line 31
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 42
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 43
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 38
    return-void
.end method
