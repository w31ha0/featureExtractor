.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 326
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    .line 327
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 326
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 332
    :cond_0
    const/4 v0, 0x0

    .line 333
    instance-of v1, p1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 334
    check-cast v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache()Z

    move-result v0

    .line 340
    :goto_1
    if-nez v0, :cond_2

    .line 341
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "nf_preapp notifying of  prefetch done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;->informPrefetched(Landroid/content/Context;)V

    .line 343
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "nf_preapp prefetch failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 347
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    const-string/jumbo v3, "prefs_prefetch_lolomo_fetch_time_ms"

    invoke-static {v2, v3, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 352
    :cond_2
    return-void

    .line 327
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createFailedMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_4
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v2, "status is not FalkorAgentStatus"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
