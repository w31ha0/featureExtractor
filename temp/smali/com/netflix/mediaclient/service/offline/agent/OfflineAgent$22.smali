.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageAddedOrRemoved()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1494
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isOfflineFeatureDisabled()Z

    move-result v0

    .line 1496
    if-eqz v0, :cond_1

    .line 1497
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "onStorageAddedOrRemoved ignored disabledFromConfig=%b"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    .line 1503
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->init(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    move-result-object v1

    .line 1504
    const-string/jumbo v2, "nf_offlineAgent"

    const-string/jumbo v3, "onStorageAddedOrRemoved state=%s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1505
    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1522
    :goto_1
    if-eqz v0, :cond_2

    .line 1523
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1525
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getOfflineStorageVolumeListCount()I

    move-result v0

    .line 1526
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendStorageAddedOrRemoved(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;I)V

    .line 1527
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->sendStorageAddedOrRemoved(Landroid/os/Handler;Z)V

    goto/16 :goto_0

    .line 1507
    :pswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$302(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z

    goto :goto_1

    .line 1510
    :pswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, v7}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$302(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z

    .line 1511
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_1

    .line 1514
    :pswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$302(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z

    goto :goto_1

    .line 1517
    :pswitch_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$302(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z

    .line 1518
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    goto :goto_1

    .line 1505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
