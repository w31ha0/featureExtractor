.class Lcom/netflix/mediaclient/ui/home/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 727
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "ServiceManager ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showProfileToast()V

    .line 731
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$600(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    .line 732
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getCurrentViewType()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$700(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 734
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 739
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 773
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 777
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createFailedMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 778
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 780
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "ServiceManager unavailable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 782
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 783
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "LOLOMO failed, report UI startup session ended in case this was on UI startup"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method
