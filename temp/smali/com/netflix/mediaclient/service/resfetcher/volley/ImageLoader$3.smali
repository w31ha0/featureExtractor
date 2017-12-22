.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->val$requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->val$sessionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->val$requestUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$300(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequestFailure(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 644
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 645
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createFailedMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->val$sessionId:Ljava/lang/String;

    .line 644
    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$500(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    .line 647
    return-void
.end method
