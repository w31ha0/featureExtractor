.class interface abstract Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;
.super Ljava/lang/Object;
.source "CdnUrlDownloadListener.java"


# virtual methods
.method public abstract onCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
.end method

.method public abstract onCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onCdnUrlGeoCheckFailure(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onUrlDownloadDiskIOError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
.end method
