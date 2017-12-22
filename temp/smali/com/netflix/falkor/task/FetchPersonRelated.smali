.class public Lcom/netflix/falkor/task/FetchPersonRelated;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchPersonRelated.java"


# instance fields
.field private final actorId:Ljava/lang/String;

.field detailPQL:Lcom/netflix/falkor/PQL;

.field maxItems:I

.field relatedPQL:Lcom/netflix/falkor/PQL;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p3}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 21
    const/4 v0, 0x7

    iput v0, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->maxItems:I

    .line 25
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->actorId:Ljava/lang/String;

    .line 26
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
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "people"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->actorId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "detail"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->detailPQL:Lcom/netflix/falkor/PQL;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "people"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->actorId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "videoListForPerson"

    aput-object v1, v0, v2

    iget v1, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->maxItems:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v4, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v4

    const-string/jumbo v3, "detail"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->relatedPQL:Lcom/netflix/falkor/PQL;

    .line 33
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->relatedPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-interface {p1, v0, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 67
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
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 43
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->detailPQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorPerson;

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, v0, Lcom/netflix/model/branches/FalkorPerson;->videos:Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    iget-object v1, v1, Lcom/netflix/model/branches/FalkorPerson$PersonVideos;->videoIds:Ljava/util/List;

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "shows"

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 50
    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/netflix/falkor/task/FetchPersonRelated;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "movies"

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    .line 55
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v3, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 62
    return-void
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method
