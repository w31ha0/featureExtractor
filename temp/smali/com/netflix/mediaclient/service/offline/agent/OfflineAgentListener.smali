.class public interface abstract Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;
.super Ljava/lang/Object;
.source "OfflineAgentListener.java"


# virtual methods
.method public abstract isListenerDestroyed()Z
.end method

.method public abstract onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method public abstract onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method public abstract onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
.end method

.method public abstract onError(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
.end method

.method public abstract onOfflinePlayablesDeleted(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onOfflineStorageVolumeAddedOrRemoved(Z)V
.end method

.method public abstract onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
.end method
