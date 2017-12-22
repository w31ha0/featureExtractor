.class Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;
.super Lcom/android/volley/toolbox/ProgressiveRequest;
.source "HttpUrlDownloader.java"

# interfaces
.implements Lcom/android/volley/toolbox/ProgressiveRequestListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_httpUrlDownloader"

.field private static final TEST_LOG_PROGRESS_EVERY_FIVE_SECONDS:Z


# instance fields
.field private mBufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private final mFile:Ljava/io/File;

.field private final mFileName:Ljava/lang/String;

.field private final mHttpRange:Ljava/lang/String;

.field private mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

.field private final mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

.field private mTestingLastLogTime:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;)V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0, p1, p3}, Lcom/android/volley/toolbox/ProgressiveRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Request$Priority;)V

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mUrl:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFileName:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 56
    invoke-virtual {p0, p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpRange:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private flushAndCloseOutputStream()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 204
    :cond_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string/jumbo v1, "nf_httpUrlDownloader"

    const-string/jumbo v2, "flushAndCloseOutputStream:"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private sendNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onNetworkError(Lcom/android/volley/VolleyError;)V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 215
    :cond_0
    return-void
.end method

.method private sendProgress()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onProgress(Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;)V

    .line 163
    :cond_0
    return-void
.end method

.method private sendUrlDownloadDiskIOError()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onUrlDownloadDiskIOError()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 223
    :cond_0
    return-void
.end method

.method private sendUrlDownloadSessionEnd()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onUrlDownloadSessionEnd()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 232
    invoke-super {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->cancel()V

    .line 235
    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string/jumbo v1, "Range"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpRange:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object v0
.end method

.method public getTotalBytesOnDisk()J
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mFileSizeAtDownloadStartTime:J

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "nf_httpUrlDownloader"

    const-string/jumbo v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 178
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    .line 179
    return-void
.end method

.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnErrorTime:J

    .line 169
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    .line 171
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendNetworkError(Lcom/android/volley/VolleyError;)V

    .line 172
    return-void
.end method

.method public onNext([BI)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_1

    .line 116
    const-string/jumbo v0, "nf_httpUrlDownloader"

    const-string/jumbo v1, "onNext mBufferedOutputStream null. not writing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const-string/jumbo v0, "nf_httpUrlDownloader"

    const-string/jumbo v1, "cancelled, closing file and returning"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 122
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string/jumbo v1, "nf_httpUrlDownloader"

    const-string/jumbo v2, "onNext write to disk failed"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 154
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadDiskIOError()V

    .line 155
    invoke-super {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->cancel()V

    goto :goto_0

    .line 125
    :cond_2
    if-lez p2, :cond_3

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendProgress()V

    goto :goto_0

    .line 129
    :cond_3
    if-gez p2, :cond_0

    .line 130
    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNext done count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 132
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnCompleteTime:J

    .line 137
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadSessionEnd()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onResponseStart(J)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mHttpResponseStartTime:J

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onHttpResponseStart(J)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadDiskIOError()V

    goto :goto_0
.end method

.method public start(Lcom/android/volley/RequestQueue;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mQueueStartTime:J

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mFileSizeAtDownloadStartTime:J

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 69
    return-void
.end method
