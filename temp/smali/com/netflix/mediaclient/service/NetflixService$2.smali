.class Lcom/netflix/mediaclient/service/NetflixService$2;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;


# instance fields
.field private final agentsToInitBatch1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/ServiceAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final agentsToInitBatch2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/ServiceAgent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;

.field final synthetic val$agentsToInitOnError:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->val$agentsToInitOnError:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$2$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$2$1;-><init>(Lcom/netflix/mediaclient/service/NetflixService$2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch1:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$2$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;-><init>(Lcom/netflix/mediaclient/service/NetflixService$2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 452
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NETFLIX_SERVICE_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 454
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->val$agentsToInitOnError:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, v1, p0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1200(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    return-void

    .line 460
    :cond_1
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService successfully initiated ServiceAgent %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/msl/MSLAgent;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 462
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Go for batch1!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    .line 466
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isInitCalled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/NetflixService;->access$1400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    goto :goto_0

    .line 469
    :cond_2
    const-string/jumbo v2, "NetflixService"

    const-string/jumbo v3, "Agent %s from batch1 already initialized!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 474
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Remove %s from batch1"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService successfully inited batch1 of ServiceAgents"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    .line 480
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isInitCalled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 481
    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/NetflixService;->access$1400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    goto :goto_1

    .line 483
    :cond_4
    const-string/jumbo v2, "NetflixService"

    const-string/jumbo v3, "Agent %s from batch2 already initialized!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 488
    :cond_5
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Remove %s from batch2"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService successfully inited all ServiceAgents "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/NetflixService;->access$1502(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isAppVersionObsolete()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$1502(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 496
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Current app is obsolete. It should not run!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1700(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 505
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitBatch2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    .line 506
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isReady()Z

    move-result v2

    if-nez v2, :cond_8

    .line 507
    const-string/jumbo v2, "NetflixService"

    const-string/jumbo v3, "NetflixService still waiting for init of ServiceAgent %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 497
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isAppVersionRecommended()Z

    move-result v0

    if-nez v0, :cond_6

    .line 498
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Current app is not recommended. User should be warned!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->NON_RECOMMENDED_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$1502(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    goto :goto_2
.end method
