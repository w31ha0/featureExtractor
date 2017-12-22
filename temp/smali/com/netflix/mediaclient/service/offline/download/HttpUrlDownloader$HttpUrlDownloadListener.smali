.class public interface abstract Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;
.super Ljava/lang/Object;
.source "HttpUrlDownloader.java"


# virtual methods
.method public abstract onHttpResponseStart(J)V
.end method

.method public abstract onNetworkError(Lcom/android/volley/VolleyError;)V
.end method

.method public abstract onProgress(Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;)V
.end method

.method public abstract onUrlDownloadDiskIOError()V
.end method

.method public abstract onUrlDownloadSessionEnd()V
.end method
