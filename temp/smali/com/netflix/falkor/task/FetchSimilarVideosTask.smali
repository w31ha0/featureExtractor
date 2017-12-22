.class public Lcom/netflix/falkor/task/FetchSimilarVideosTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchSimilarVideosTask.java"


# instance fields
.field private final id:Ljava/lang/String;

.field private final numSims:I

.field private final query:Ljava/lang/String;

.field private simsListPql:Lcom/netflix/falkor/PQL;

.field private simsSummaryPql:Lcom/netflix/falkor/PQL;

.field private final type:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p6}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 30
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->type:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    .line 31
    iput-object p3, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->id:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->numSims:I

    .line 33
    iput-object p5, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->query:Ljava/lang/String;

    .line 34
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
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->type:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->value:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->query:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string/jumbo v1, "standard"

    aput-object v1, v0, v7

    const-string/jumbo v1, "relatedVideos"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->numSims:I

    .line 39
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v4

    const-string/jumbo v3, "searchTitle"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->simsListPql:Lcom/netflix/falkor/PQL;

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->type:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->value:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->query:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string/jumbo v1, "standard"

    aput-object v1, v0, v7

    const-string/jumbo v1, "relatedVideos"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->simsSummaryPql:Lcom/netflix/falkor/PQL;

    .line 42
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->simsListPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->simsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Lcom/netflix/model/branches/SearchVideoListWrapper;

    invoke-direct {v0, v1, v1}, Lcom/netflix/model/branches/SearchVideoListWrapper;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V

    .line 58
    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 59
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->simsListPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    .line 49
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;->simsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 51
    new-instance v2, Lcom/netflix/model/branches/SearchVideoListWrapper;

    invoke-direct {v2, v1, v0}, Lcom/netflix/model/branches/SearchVideoListWrapper;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v2, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 53
    return-void
.end method
