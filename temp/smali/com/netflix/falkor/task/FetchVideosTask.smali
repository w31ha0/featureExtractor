.class public Lcom/netflix/falkor/task/FetchVideosTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchVideosTask.java"


# instance fields
.field private final fetchByLomoType:Z

.field private final fromVideo:I

.field private final includeKubrick:Z

.field private final includePreApp:Z

.field private final lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field private final toVideo:I

.field private final useCacheOnly:Z


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p9}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 31
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 32
    iput p3, p0, Lcom/netflix/falkor/task/FetchVideosTask;->fromVideo:I

    .line 33
    iput p4, p0, Lcom/netflix/falkor/task/FetchVideosTask;->toVideo:I

    .line 34
    iput-boolean p5, p0, Lcom/netflix/falkor/task/FetchVideosTask;->useCacheOnly:Z

    .line 35
    iput-boolean p6, p0, Lcom/netflix/falkor/task/FetchVideosTask;->includeKubrick:Z

    .line 36
    iput-boolean p7, p0, Lcom/netflix/falkor/task/FetchVideosTask;->fetchByLomoType:Z

    .line 37
    iput-boolean p8, p0, Lcom/netflix/falkor/task/FetchVideosTask;->includePreApp:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 5
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
    .line 47
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-boolean v1, p0, Lcom/netflix/falkor/task/FetchVideosTask;->fetchByLomoType:Z

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 54
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "flatGenre"

    .line 63
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const-string/jumbo v3, "summary"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-boolean v3, p0, Lcom/netflix/falkor/task/FetchVideosTask;->includeKubrick:Z

    if-eqz v3, :cond_1

    .line 66
    const-string/jumbo v3, "kubrick"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v3, "rating"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    iget-boolean v3, p0, Lcom/netflix/falkor/task/FetchVideosTask;->includePreApp:Z

    if-eqz v3, :cond_2

    .line 70
    const-string/jumbo v3, "detail"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    iget v1, p0, Lcom/netflix/falkor/task/FetchVideosTask;->fromVideo:I

    iget v4, p0, Lcom/netflix/falkor/task/FetchVideosTask;->toVideo:I

    invoke-static {v1, v4}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void

    .line 61
    :cond_3
    const-string/jumbo v1, "lists"

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 84
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 79
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
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/netflix/falkor/task/FetchVideosTask;->useCacheOnly:Z

    return v0
.end method
