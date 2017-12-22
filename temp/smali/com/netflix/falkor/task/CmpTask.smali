.class abstract Lcom/netflix/falkor/task/CmpTask;
.super Ljava/lang/Object;
.source "CmpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final ENABLE_LOG_TIMING:Z = false

.field private static FORCE_CMP_TO_LOCAL_CACHE:Z = false

.field public static final JSON_VALUE:Ljava/lang/String; = "value"

.field protected static final MS_SUFFIX:Ljava/lang/String; = "ms"

.field static final REQUEST_PARAM_KEY:Ljava/lang/String; = "param"

.field static final REQUEST_PATH_SUFFIX_KEY:Ljava/lang/String; = "pathSuffix"

.field protected static final TAG:Ljava/lang/String; = "CachedModelProxy"

.field private static final TAG_TIMING:Ljava/lang/String; = "CachedModelProxy_Timing"


# instance fields
.field protected final callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

.field private getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

.field private isAllDataLocalToCache:Z

.field protected modelProxy:Lcom/netflix/falkor/CachedModelProxy;

.field protected final taskStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/netflix/falkor/CachedModelProxy;->FORCE_CMP_TO_LOCAL_CACHE:Z

    sput-boolean v0, Lcom/netflix/falkor/task/CmpTask;->FORCE_CMP_TO_LOCAL_CACHE:Z

    return-void
.end method

.method constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/falkor/task/CmpTask;->taskStartTime:J

    .line 86
    iput-object p2, p0, Lcom/netflix/falkor/task/CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    .line 87
    iput-object p1, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/task/CmpTask;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->mergeFalkorResponse(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/falkor/task/CmpTask;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/falkor/task/CmpTask;->handleSuccess()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/falkor/task/CmpTask;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/netflix/falkor/task/CmpTask;->handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private createDirectRequest(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/netflix/falkor/task/CmpTask$2;

    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    .line 486
    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netflix/falkor/task/CmpTask$2;-><init>(Lcom/netflix/falkor/task/CmpTask;Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;Ljava/util/List;)V

    .line 641
    return-object v0
.end method

.method private createMslRequest(Ljava/util/List;)Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lcom/netflix/falkor/task/CmpTask$1;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-direct {v0, p0, v1, p1}, Lcom/netflix/falkor/task/CmpTask$1;-><init>(Lcom/netflix/falkor/task/CmpTask;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;Ljava/util/List;)V

    .line 461
    return-object v0
.end method

.method private createRequest(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getServiceProvider()Lcom/netflix/falkor/ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->createMslRequest(Ljava/util/List;)Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->createDirectRequest(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;

    move-result-object v0

    goto :goto_0
.end method

.method private doTask()V
    .locals 2

    .prologue
    .line 111
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/task/CmpTask;->buildPqlList(Ljava/util/List;)V

    .line 123
    invoke-virtual {p0}, Lcom/netflix/falkor/task/CmpTask;->shouldSkipCache()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/falkor/task/CmpTask;->shouldUseCallMethod()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/falkor/task/CmpTask;->shouldCustomHandleResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/falkor/task/CmpTask;->createRequest(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    .line 170
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->get(Ljava/util/Collection;)Lcom/netflix/falkor/CachedModelProxy$GetResult;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    .line 136
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    const-string/jumbo v1, "CachedModelProxy"

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy$GetResult;->printPaths(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy$GetResult;->hasMissingPaths()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/falkor/task/CmpTask;->shouldUseCacheOnly()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/netflix/falkor/task/CmpTask;->FORCE_CMP_TO_LOCAL_CACHE:Z

    if-nez v0, :cond_3

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    iget-object v1, v1, Lcom/netflix/falkor/CachedModelProxy$GetResult;->missingPqls:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/task/CmpTask;->shouldCollapseMissingPql(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->collapse(Ljava/util/List;)V

    .line 160
    :cond_2
    invoke-direct {p0, v0}, Lcom/netflix/falkor/task/CmpTask;->createRequest(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    goto :goto_0

    .line 167
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask;->isAllDataLocalToCache:Z

    .line 168
    invoke-direct {p0}, Lcom/netflix/falkor/task/CmpTask;->handleSuccess()V

    goto :goto_0
.end method

.method private handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 674
    invoke-virtual {p0, p1, p2}, Lcom/netflix/falkor/task/CmpTask;->callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 684
    return-void
.end method

.method private handleSuccess()V
    .locals 3

    .prologue
    .line 645
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 647
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->createHandlerWrapper(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/falkor/task/CmpTask;->shouldUseCallMethod()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/falkor/task/CmpTask;->shouldCustomHandleResponse()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/falkor/task/CmpTask;->shouldSkipCache()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "GetResult is null - shouldn\'t happen - forcing failure"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_CMP_RESP_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, v0, v1}, Lcom/netflix/falkor/task/CmpTask;->handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 671
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask;->getResult:Lcom/netflix/falkor/CachedModelProxy$GetResult;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/falkor/task/CmpTask;->fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V

    goto :goto_0
.end method

.method private declared-synchronized merge(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;Ljava/util/ArrayList;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lcom/netflix/falkor/BranchNode;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    monitor-enter p0

    if-nez p1, :cond_2

    .line 749
    if-nez p3, :cond_1

    :try_start_0
    const-string/jumbo v1, "null"

    .line 750
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "json=null for path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :cond_0
    monitor-exit p0

    return-void

    .line 749
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 755
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 756
    invoke-interface {p2, v2}, Lcom/netflix/falkor/BranchNode;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 759
    if-nez p3, :cond_5

    .line 760
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v3

    .line 764
    :goto_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    instance-of v3, v4, Lcom/netflix/falkor/Sentinel;

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/JsonUtils;->isNull(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 770
    move-object v0, v4

    check-cast v0, Lcom/netflix/falkor/Sentinel;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 772
    if-eqz p4, :cond_4

    .line 773
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-interface {p4, v5, v3}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V

    :cond_4
    move-object v3, v4

    .line 781
    instance-of v4, v3, Lcom/netflix/falkor/BranchNode;

    if-eqz v4, :cond_6

    .line 783
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object v0, v3

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v1, v0

    invoke-direct {p0, v2, v1, v5, p4}, Lcom/netflix/falkor/task/CmpTask;->merge(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;Ljava/util/ArrayList;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 748
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 762
    :cond_5
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v3

    goto :goto_2

    .line 784
    :cond_6
    instance-of v4, v3, Lcom/netflix/falkor/Ref;

    if-eqz v4, :cond_a

    .line 785
    check-cast v3, Lcom/netflix/falkor/Ref;

    .line 786
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 790
    if-eqz p4, :cond_7

    .line 791
    invoke-interface {p4, v5, v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V

    .line 794
    :cond_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 795
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->fromJsonArray(Lcom/google/gson/JsonArray;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/falkor/Ref;->setRefPath(Lcom/netflix/falkor/PQL;)V

    goto/16 :goto_1

    .line 796
    :cond_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 797
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 798
    const-string/jumbo v3, "_sentinel"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 802
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 803
    :cond_9
    const-string/jumbo v1, "current"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 813
    :cond_a
    if-eqz v3, :cond_3

    .line 815
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 816
    if-eqz p4, :cond_b

    .line 817
    invoke-interface {p4, v5, v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V

    .line 821
    :cond_b
    instance-of v4, v3, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    if-eqz v4, :cond_c

    .line 822
    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    invoke-interface {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;->populate(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 827
    :cond_c
    const-string/jumbo v4, "CachedModelProxy"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->createObjectFromJson(Ljava/lang/String;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized mergeFalkorResponse(Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 716
    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory;->getHelper(Landroid/content/Context;Z)Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;

    move-result-object v1

    .line 722
    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->beginTransaction()V

    .line 723
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v2}, Lcom/netflix/falkor/CachedModelProxy;->getRoot()Lcom/netflix/falkor/BranchNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/falkor/task/CmpTask;->merge(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/BranchNode;Ljava/util/ArrayList;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V

    .line 724
    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    if-eqz v1, :cond_0

    .line 732
    :try_start_1
    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 735
    :cond_0
    monitor-exit p0

    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    if-eqz v1, :cond_1

    .line 727
    :try_start_2
    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->cancelTransaction()V

    .line 729
    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 732
    :try_start_3
    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 716
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract buildPqlList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected canHaveEmptyProfileGuidOverride()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method protected customHandleResponse(Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getServiceProvider()Lcom/netflix/falkor/ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 174
    return-void
.end method

.method protected abstract fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 1
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
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPriorityOverride()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTagOverride()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 3

    .prologue
    .line 691
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error found in json response - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CachedModelProxy"

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getErrorMessage(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected isAllDataLocalToCache()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask;->isAllDataLocalToCache:Z

    return v0
.end method

.method protected onTaskCompleted()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method protected onTaskStarted()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/falkor/task/CmpTask;->doTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 103
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_CMP:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDisplayMessage(Z)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/task/CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->createHandlerWrapper(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/falkor/task/CmpTask;->handleFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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
    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldCustomHandleResponse()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldDumpCacheToDiskUponMerge()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldDumpHttpResponseToDisk()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseAuthorization()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method
