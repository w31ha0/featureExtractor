.class Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl$1;
.super Ljava/lang/Object;
.source "ClientStatsLogHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;

.field final synthetic val$logblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl$1;->val$logblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Lcom/netflix/cstatssamurai/ClientStats;->getInstance()Lcom/netflix/cstatssamurai/ClientStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/cstatssamurai/ClientStats;->takeSnapshot()V

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->access$000(Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {}, Lcom/netflix/cstatssamurai/ClientStats;->getInstance()Lcom/netflix/cstatssamurai/ClientStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/cstatssamurai/ClientStats;->getJournal()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "nf_clientstats"

    const-string/jumbo v2, "Sending log"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/ClientStats;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/logging/logblob/ClientStats;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl$1;->val$logblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 45
    invoke-static {}, Lcom/netflix/cstatssamurai/ClientStats;->getInstance()Lcom/netflix/cstatssamurai/ClientStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/cstatssamurai/ClientStats;->reset()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v1, "nf_clientstats"

    const-string/jumbo v2, "problem sending log"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
