.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->val$requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->val$sessionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->val$requestUrl:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$300(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequestResult(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 635
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->val$sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$400(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 637
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 631
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
