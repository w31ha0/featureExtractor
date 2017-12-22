.class public Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "PrefetchVideoListDetailsTask.java"


# instance fields
.field private final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/CachedModelProxy;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p3}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 26
    iput-object p2, p0, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    .line 27
    return-void
.end method

.method private handleDetailsResponse()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 86
    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->removeFromPendingDetailsRequest(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->decrementPrefetchCounter()I

    .line 94
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->prefetchVideoDetailsFromQueue()V

    goto :goto_0
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 7
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
    const/4 v3, 0x1

    .line 52
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 58
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v6, :cond_3

    .line 63
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 69
    invoke-static {p1, v2}, Lcom/netflix/falkor/task/CmpUtils;->buildMovieDetailsPQLs(Ljava/util/List;Ljava/util/List;)V

    .line 71
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v2, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v4

    move-object v0, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/netflix/falkor/task/CmpUtils;->buildShowDetailsPQL(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->handleDetailsResponse()V

    .line 101
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
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->handleDetailsResponse()V

    .line 79
    return-void
.end method

.method protected getPriorityOverride()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected getTagOverride()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->getRequestTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onTaskStarted()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/netflix/falkor/task/CmpTask;->onTaskStarted()V

    .line 37
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 38
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->addToPendingDetailsRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method
