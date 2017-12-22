.class final Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "PerformanceProfiler.java"


# instance fields
.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;->val$params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;->val$params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;->val$params:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 385
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getCustomData()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method
