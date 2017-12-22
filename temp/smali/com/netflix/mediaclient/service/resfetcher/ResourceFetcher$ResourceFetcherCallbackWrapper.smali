.class Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;
.super Ljava/lang/Object;
.source "ResourceFetcher.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;


# instance fields
.field private final mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 2

    .prologue
    .line 627
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    if-nez p2, :cond_0

    .line 630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    .line 633
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$1;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    .line 655
    invoke-interface/range {p7 .. p7}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->access$400(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequestResult(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 656
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 657
    return-void
.end method

.method public onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 637
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->access$100(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequestResult(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 639
    return-void
.end method

.method public onResourcePrefetched(Ljava/lang/String;ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 643
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->access$200(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequestResult(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourcePrefetched(Ljava/lang/String;ILcom/netflix/mediaclient/android/app/Status;)V

    .line 645
    return-void
.end method

.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 649
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->access$300(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequestResult(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 651
    return-void
.end method
