.class public Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;
.super Ljava/lang/Object;
.source "PlayableProgressInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_playableProgress"


# instance fields
.field private mActualSizeOfPlayableOnDiskInCompleteState:J

.field private mBytesDownloadedSoFar:J

.field public final mDownloadableProgressInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPercentageDownloaded:I

.field private mTotalBytesToDownload:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mPercentageDownloaded:I

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mActualSizeOfPlayableOnDiskInCompleteState:J

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mDownloadableProgressInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getActualSizeOfPlayableOnDiskInCompleteState(Ljava/io/File;)J
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mActualSizeOfPlayableOnDiskInCompleteState:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    invoke-static {p1}, Lcom/netflix/mediaclient/util/FileUtils;->getDirectorySizeInBytes(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mActualSizeOfPlayableOnDiskInCompleteState:J

    .line 62
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mActualSizeOfPlayableOnDiskInCompleteState:J

    return-wide v0
.end method

.method public getBytesDownloadedSoFar()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mBytesDownloadedSoFar:J

    return-wide v0
.end method

.method public getPercentageDownloaded()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mPercentageDownloaded:I

    return v0
.end method

.method public getTotalBytesToDownload()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mTotalBytesToDownload:J

    return-wide v0
.end method

.method public markComplete()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mPercentageDownloaded:I

    .line 52
    return-void
.end method

.method public updateProgressPercentage()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 27
    iput-wide v8, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mBytesDownloadedSoFar:J

    .line 28
    iput-wide v8, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mTotalBytesToDownload:J

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mDownloadableProgressInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    .line 33
    iget-wide v4, v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 34
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mBytesDownloadedSoFar:J

    iget-wide v6, v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mBytesDownloadedSoFar:J

    .line 35
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mTotalBytesToDownload:J

    iget-wide v0, v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mTotalBytesToDownload:J

    goto :goto_0

    .line 37
    :cond_0
    const-string/jumbo v3, "nf_playableProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTotalBytesToDownload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " is not positive for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mTotalBytesToDownload:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 42
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mBytesDownloadedSoFar:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mTotalBytesToDownload:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mPercentageDownloaded:I

    .line 47
    :goto_1
    return-void

    .line 45
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mPercentageDownloaded:I

    goto :goto_1
.end method
