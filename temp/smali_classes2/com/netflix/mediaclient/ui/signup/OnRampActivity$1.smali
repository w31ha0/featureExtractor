.class Lcom/netflix/mediaclient/ui/signup/OnRampActivity$1;
.super Ljava/lang/Object;
.source "OnRampActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$1;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    const-string/jumbo v0, "OnRampActivity"

    const-string/jumbo v1, "Timeout triggered"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$1;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->access$000(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$1;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createFailedMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$1;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->finish()V

    .line 92
    :cond_0
    return-void
.end method
