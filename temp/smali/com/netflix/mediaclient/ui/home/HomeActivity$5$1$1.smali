.class Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;->this$2:Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteractive()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;->this$2:Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->setTTRComplete()V

    .line 748
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 750
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;->this$2:Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;->this$2:Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1$1;->this$2:Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$800(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/content/Context;)V

    .line 752
    return-void
.end method
