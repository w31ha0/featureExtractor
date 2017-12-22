.class public interface abstract Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;
.super Ljava/lang/Object;
.source "OfflineManifestManager.java"


# virtual methods
.method public abstract abortAllRequestsForPlayable(Ljava/lang/String;)V
.end method

.method public abstract notifyDeletingPlayable(Ljava/lang/String;)V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
.end method

.method public abstract requestOfflineManifestFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
.end method

.method public abstract requestOfflineManifestRefreshFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
.end method
