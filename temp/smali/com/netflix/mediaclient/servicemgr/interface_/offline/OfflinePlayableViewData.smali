.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
.super Ljava/lang/Object;
.source "OfflinePlayableViewData.java"


# virtual methods
.method public abstract getCurrentEstimatedSpace()J
.end method

.method public abstract getDownloadContextInitTimeMs()J
.end method

.method public abstract getDownloadContextListPos()I
.end method

.method public abstract getDownloadContextRequestId()Ljava/lang/String;
.end method

.method public abstract getDownloadContextTrackId()I
.end method

.method public abstract getDownloadContextVideoPos()I
.end method

.method public abstract getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
.end method

.method public abstract getDxId()Ljava/lang/String;
.end method

.method public abstract getExpiringInMillis()J
.end method

.method public abstract getLastPersistentStatus()Lcom/netflix/mediaclient/android/app/Status;
.end method

.method public abstract getOxId()Ljava/lang/String;
.end method

.method public abstract getPercentageDownloaded()I
.end method

.method public abstract getPlayableId()Ljava/lang/String;
.end method

.method public abstract getProfileGuidOfDownloadRequester()Ljava/lang/String;
.end method

.method public abstract getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
.end method

.method public abstract getTotalEstimatedSpace()J
.end method

.method public abstract getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
.end method
