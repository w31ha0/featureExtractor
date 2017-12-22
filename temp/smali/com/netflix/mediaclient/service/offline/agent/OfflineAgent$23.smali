.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueDownloadOnBackOff()V
    .locals 2

    .prologue
    .line 1536
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1537
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "continueDownloadOnBackOff"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1539
    return-void
.end method

.method public continueDownloadOnNetworkChanged()V
    .locals 2

    .prologue
    .line 1544
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1545
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "continueDownloadOnNetworkChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1547
    return-void
.end method

.method public continueDownloadOnStreamingStopped()V
    .locals 2

    .prologue
    .line 1568
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1569
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "continueDownloadOnStreamingStopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1571
    return-void
.end method

.method public onDownloadResumeJob()V
    .locals 2

    .prologue
    .line 1583
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1584
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onDownloadResumeJob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)V

    .line 1588
    :cond_0
    return-void
.end method

.method public stopDownloadOnStreamingStarted()V
    .locals 2

    .prologue
    .line 1576
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1577
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopDownloadOnStreamingStarted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->PlayerStreaming:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1579
    return-void
.end method

.method public stopDownloadsNoNetwork()V
    .locals 2

    .prologue
    .line 1560
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1561
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopDownloadsNoNetwork"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1563
    return-void
.end method

.method public stopDownloadsNotAllowedByNetwork()V
    .locals 2

    .prologue
    .line 1552
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1553
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopDownloadsNotAllowedByNetwork"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1555
    return-void
.end method
