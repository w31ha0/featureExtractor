.class Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;
.super Ljava/lang/Object;
.source "HttpUrlDownloadStats.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_httpUrlDownloadStat"


# instance fields
.field public mBytesDownloadedInSession:J

.field public mFileSizeAtDownloadStartTime:J

.field public mHttpResponseStartTime:J

.field public mOnCompleteTime:J

.field public mOnErrorTime:J

.field public mQueueStartTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mHttpResponseStartTime:J

    .line 16
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    .line 17
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mFileSizeAtDownloadStartTime:J

    return-void
.end method


# virtual methods
.method public dumpStats()V
    .locals 6

    .prologue
    .line 22
    const-string/jumbo v0, "nf_httpUrlDownloadStat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mQueueStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mQueueStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string/jumbo v0, "nf_httpUrlDownloadStat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOnCompleteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnCompleteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string/jumbo v0, "nf_httpUrlDownloadStat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOnErrorTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnErrorTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string/jumbo v0, "nf_httpUrlDownloadStat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHttpResponseStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mHttpResponseStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnCompleteTime:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnErrorTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnCompleteTime:J

    .line 27
    :goto_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mHttpResponseStartTime:J

    sub-long/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 29
    const-string/jumbo v2, "nf_httpUrlDownloadStat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dl speed in KB/sec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    div-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_1
    return-void

    .line 26
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnErrorTime:J

    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo v2, "nf_httpUrlDownloadStat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dl no speed data. took="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
