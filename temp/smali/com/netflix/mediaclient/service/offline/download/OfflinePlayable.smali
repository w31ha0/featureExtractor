.class public interface abstract Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;
.super Ljava/lang/Object;
.source "OfflinePlayable.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;


# virtual methods
.method public abstract canResumeWithoutUserAction()Z
.end method

.method public abstract deleteDownload()Lcom/netflix/mediaclient/android/app/Status;
.end method

.method public abstract destroy()V
.end method

.method public abstract doMaintenanceWork(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V
.end method

.method public abstract getOfflinePdsData(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V
.end method

.method public abstract getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;
.end method

.method public abstract initialize()V
.end method

.method public abstract notifyOfflinePlayStarted()V
.end method

.method public abstract onLicenseSync(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;)V
.end method

.method public abstract refreshLicenseIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
.end method

.method public abstract requestManifestForPlayback(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
.end method

.method public abstract startDownload()V
.end method

.method public abstract stopDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
.end method
