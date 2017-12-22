.class public final Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;
.super Ljava/lang/Object;
.source "DPPrefetchABTestUtils.java"


# static fields
.field private static final CELL_FIVE_PREFETCH_COUNT:I = 0x3

.field private static final CELL_FOUR_PREFETCH_COUNT:I = 0x1

.field public static final DP_PREFETCH_REQUEST_LATCH_TIMEOUT_MS:I = 0x4e20

.field public static final MAX_PARALLEL_PREFETCH_REQUEST_COUNT:I = 0x2

.field public static final PARAM_KEY_IS_FROM_CACHE:Ljava/lang/String; = "isFromCache"

.field public static final PARAM_KEY_REASON:Ljava/lang/String; = "reason"

.field private static final REQUEST_TAG:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DPPrefetchABTestUtils"

.field private static volatile pendingDetailsRequestsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile pendingDetailsRequestsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static prefetchCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static prefetchDPCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static prefetchDPQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->REQUEST_TAG:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPCallbackMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static addToPendingDetailsRequest(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 167
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    .line 170
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public static addToQueue(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 289
    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 291
    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 294
    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method public static cancelPrefetchDPRequests(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    .prologue
    .line 280
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->getRequestTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->cancelRequests(Ljava/lang/Object;)V

    .line 283
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 284
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 285
    return-void
.end method

.method public static decrementPrefetchCounter()I
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    return v0
.end method

.method public static getNextPrefetchVideo()Lcom/netflix/mediaclient/servicemgr/interface_/Video;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 311
    :goto_0
    return-object v0

    .line 305
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 311
    goto :goto_0
.end method

.method public static getPrefetchCounter()I
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getRequestTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->REQUEST_TAG:Ljava/lang/Object;

    return-object v0
.end method

.method public static incrementPrefetchCounter()I
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 79
    if-eqz p0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 348
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    :cond_0
    const-string/jumbo v1, "DPPrefetchABTestUtils"

    const-string/jumbo v2, "isInputValid: videos list is empty"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return v0

    .line 353
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 354
    :cond_2
    const-string/jumbo v1, "DPPrefetchABTestUtils"

    const-string/jumbo v2, "isInputValid: manager not ready or not in AB test"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPrefetchDPRequestInFlight(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrefetchQueueEmpty()Z
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static latchToPendingRequestsIfExists(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 207
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isPrefetchDPRequestInFlight(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 211
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    .line 214
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    if-nez v0, :cond_2

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_PREFETCH_REQUEST_IN_FLIGHT_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 230
    const-wide/16 v2, 0x4e20

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 231
    const-string/jumbo v0, "DPPrefetchABTestUtils"

    const-string/jumbo v1, "latchToPendingRequestsIfExists: latch timed out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_1
    const-string/jumbo v0, "DPPrefetchABTestUtils"

    const-string/jumbo v1, "latchToPendingRequestsIfExists: latch interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public static prefetchDPForLomoRow(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    const-string/jumbo v0, "DPPrefetchABTestUtils"

    const-string/jumbo v1, "Lomo is null or type characters"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$2;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 111
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-eq v1, v2, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v1, v2, :cond_3

    :cond_2
    move v0, p3

    .line 115
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    invoke-static {p0, p2, v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V

    goto :goto_0

    .line 101
    :pswitch_0
    const/4 v0, 0x1

    .line 102
    goto :goto_1

    .line 104
    :pswitch_1
    const/4 v0, 0x3

    .line 105
    goto :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static prefetchDPForSearch(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public static prefetchDPForSimilars(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 146
    sget-object v1, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$2;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    const-class v2, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V

    goto :goto_0

    .line 148
    :pswitch_0
    const/4 v0, 0x1

    .line 149
    goto :goto_1

    .line 151
    :pswitch_1
    const/4 v0, 0x3

    .line 152
    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static prefetchVideoListDetails(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInputValid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    return-void

    .line 336
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 338
    :goto_0
    if-lez v0, :cond_0

    .line 339
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 343
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$1;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils$1;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static removeFromPendingDetailsRequest(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 178
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 187
    if-eqz v0, :cond_3

    .line 188
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 190
    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 188
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 195
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->pendingDetailsRequestsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static removePrefetchDPCallback(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    return-object v0
.end method

.method public static reportDPMetadataFetchedEvent(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    instance-of v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v1, :cond_0

    .line 261
    check-cast p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache()Z

    move-result v0

    .line 263
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v3, "isFromCache"

    .line 264
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 263
    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 265
    return-void
.end method
