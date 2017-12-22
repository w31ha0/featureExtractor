.class public Lcom/netflix/falkor/task/PrefetchLoLoMoTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "PrefetchLoLoMoTask.java"


# instance fields
.field private final includeExtraCharacters:Z

.field private final includeKubrick:Z

.field private final skipCache:Z

.field private final toBBVideo:I

.field private final toCWVideo:I

.field private final toLomo:I

.field private final toVideo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IIIIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p9}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 31
    iput p2, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toLomo:I

    .line 32
    iput p3, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toVideo:I

    .line 33
    iput p4, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toCWVideo:I

    .line 34
    iput p5, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toBBVideo:I

    .line 35
    iput-boolean p6, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->includeExtraCharacters:Z

    .line 36
    iput-boolean p7, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->includeKubrick:Z

    .line 37
    iput-boolean p8, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->skipCache:Z

    .line 38
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
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getSummaryNodeKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toLomo:I

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toLomo:I

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toVideo:I

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    iget-boolean v2, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->includeKubrick:Z

    if-eqz v2, :cond_0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string/jumbo v0, "kubrick"

    aput-object v0, v2, v5

    const-string/jumbo v0, "rating"

    aput-object v0, v2, v6

    .line 57
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    aput-object v0, v1, v7

    .line 56
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v0, 0x0

    iget v1, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toCWVideo:I

    invoke-static {p1, v0, v4, v1}, Lcom/netflix/falkor/task/CmpUtils;->buildCwPql(Ljava/util/List;Ljava/lang/String;II)V

    .line 60
    const/4 v0, 0x0

    iget v1, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toBBVideo:I

    invoke-static {p1, v0, v4, v1}, Lcom/netflix/falkor/task/CmpUtils;->buildBillboardPql(Ljava/util/List;Ljava/lang/String;II)V

    .line 62
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v4

    const-string/jumbo v1, "queue"

    aput-object v1, v0, v5

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-boolean v0, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->includeExtraCharacters:Z

    if-eqz v0, :cond_1

    .line 65
    iget v0, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toVideo:I

    add-int/lit8 v0, v0, 0x1

    .line 66
    iget v1, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->toVideo:I

    add-int/2addr v1, v0

    .line 67
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "lolomo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "characters"

    aput-object v3, v2, v5

    invoke-static {v0, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v2, v6

    const-string/jumbo v0, "summary"

    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 102
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 103
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
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->isAllDataLocalToCache()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->sendDetailPageReloadBroadcast()V

    .line 98
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 4
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
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->getOnRampLatch()Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;->getValueAndLatch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "isFirstLolomoAfterOnRamp"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "isKidsParity"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    return-object v0
.end method

.method public getPriorityOverride()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTagOverride()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE_PREFETCH:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected shouldCollapseMissingPql(Ljava/util/List;)Z
    .locals 2
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
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;->skipCache:Z

    return v0
.end method
