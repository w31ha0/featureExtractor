.class public interface abstract Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;
.super Ljava/lang/Object;
.source "OfflinePlayableListener.java"


# virtual methods
.method public abstract onDownloadCompletedSuccess(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
.end method

.method public abstract onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLicenseDeleteSuccessfully(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
.end method

.method public abstract onNetworkError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onProgress(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
.end method

.method public abstract onStorageError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onUnRecoverableError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract requestSaveToRegistry()V
.end method
