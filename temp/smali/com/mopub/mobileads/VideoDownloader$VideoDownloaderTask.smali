.class Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;
.super Landroid/os/AsyncTask;
.source "VideoDownloader.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VideoDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoDownloaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWeakSelf:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    .line 98
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->access$000()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/high16 v10, 0x1900000

    const/4 v9, 0x0

    .line 103
    if-eqz p1, :cond_0

    array-length v8, p1

    if-eqz v8, :cond_0

    aget-object v8, p1, v9

    if-nez v8, :cond_2

    .line 104
    :cond_0
    const-string v8, "VideoDownloader task tried to execute null or empty url."

    invoke-static {v8}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 139
    :cond_1
    :goto_0
    return-object v8

    .line 108
    :cond_2
    aget-object v7, p1, v9

    .line 109
    .local v7, "videoUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 110
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 112
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v7}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 113
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 117
    .local v5, "statusCode":I
    const/16 v8, 0xc8

    if-lt v5, v8, :cond_3

    const/16 v8, 0x12c

    if-lt v5, v8, :cond_4

    .line 119
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoDownloader encountered unexpected statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 121
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 141
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v6, :cond_1

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 125
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 126
    .local v0, "contentLength":I
    if-le v0, v10, :cond_5

    .line 127
    const-string v8, "VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum)."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x1900000

    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 127
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 132
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 141
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v6, :cond_1

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 135
    :cond_5
    :try_start_3
    invoke-static {v7, v4}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v1

    .line 136
    .local v1, "diskPutResult":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 141
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v6, :cond_1

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 137
    .end local v0    # "contentLength":I
    .end local v1    # "diskPutResult":Z
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "statusCode":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v8, "VideoDownloader task threw an internal exception."

    invoke-static {v8, v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 141
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v6, :cond_1

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v6, :cond_6

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v8

    .line 141
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 137
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "VideoDownloader task was cancelled."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->access$000()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    .line 170
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->onCancelled()V

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->access$000()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 157
    if-nez p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
