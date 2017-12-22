.class Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$5;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setupInteractiveTracking(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V

    .line 755
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 756
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 760
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "LOLOMO is loaded, report UI browse startup session ended in case this was on UI startup"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$900(Lcom/netflix/mediaclient/ui/home/HomeActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 764
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v2, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1000(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onTTIComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 770
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v3

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->endUiBrowseStartupSession(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 771
    return-void
.end method
