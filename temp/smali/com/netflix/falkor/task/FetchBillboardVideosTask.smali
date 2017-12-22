.class public Lcom/netflix/falkor/task/FetchBillboardVideosTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchBillboardVideosTask.java"


# instance fields
.field private final fromVideo:I

.field private final toVideo:I

.field private final useCacheOnly:Z


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p5}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 26
    iput p2, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->fromVideo:I

    .line 27
    iput p3, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->toVideo:I

    .line 28
    iput-boolean p4, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->useCacheOnly:Z

    .line 29
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
    .line 33
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget v1, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->fromVideo:I

    iget v2, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->toVideo:I

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/falkor/task/CmpUtils;->buildBillboardPql(Ljava/util/List;Ljava/lang/String;II)V

    .line 35
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 74
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
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 39
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v5

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v6

    .line 40
    iget-object v2, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "lolomo"

    aput-object v4, v3, v0

    const-string/jumbo v4, "billboard"

    aput-object v4, v3, v5

    const-string/jumbo v4, "videoEvidence"

    aput-object v4, v3, v6

    iget v4, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->toVideo:I

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v3

    .line 42
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "lolomo"

    aput-object v4, v2, v0

    const-string/jumbo v4, "billboard"

    aput-object v4, v2, v5

    const-string/jumbo v4, "billboardData"

    aput-object v4, v2, v6

    iget v4, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->toVideo:I

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v7

    const-string/jumbo v4, "billboardSummary"

    aput-object v4, v2, v8

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v4

    move v2, v0

    .line 51
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 56
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/BillboardSummary;

    .line 59
    :cond_0
    if-eqz v1, :cond_2

    .line 60
    const-string/jumbo v5, "billboardSummary"

    invoke-virtual {v0, v5, v1}, Lcom/netflix/model/branches/FalkorVideo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 63
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v3, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 69
    return-void

    .line 51
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;->useCacheOnly:Z

    return v0
.end method
