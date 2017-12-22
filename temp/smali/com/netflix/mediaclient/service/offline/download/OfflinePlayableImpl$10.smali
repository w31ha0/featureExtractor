.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

.field final synthetic val$offlineManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineLicenseRequestDone(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 1442
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_FETCH_NEW:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    .line 1452
    :goto_0
    return-void

    .line 1445
    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_DELETE_ON_REVOCATION:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1700(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1800(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->deleteAllDownloadables(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Z

    move-result v0

    .line 1447
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1800(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesRevoked:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1448
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "refreshLicense DL_ENCODES_DELETE_ON_REVOCATION deleted encodes=%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-static {v0, p2, p3, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1900(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    goto :goto_0
.end method
