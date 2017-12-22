.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;
.super Ljava/lang/Object;
.source "MasterIndex.java"


# static fields
.field public static final SIZE:I = 0x6


# instance fields
.field private mDownloadSegment:Z

.field private mDuration:I

.field private mSegment:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

.field private mSize:S

.field private mStartOffset:J


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;J)V
    .locals 2

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mDownloadSegment:Z

    .line 294
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mDuration:I

    .line 295
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSize:S

    .line 296
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mStartOffset:J

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;)S
    .locals 1

    .prologue
    .line 253
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSize:S

    return v0
.end method


# virtual methods
.method public declared-synchronized downloadStarted()V
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mDownloadSegment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mDuration:I

    return v0
.end method

.method public getSegment()Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSegment:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    return-object v0
.end method

.method public getSize()S
    .locals 1

    .prologue
    .line 304
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSize:S

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mStartOffset:J

    return-wide v0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSegment:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSegment:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    .line 313
    return-void
.end method

.method public declared-synchronized shouldDownload()Z
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mDownloadSegment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SegmentDesciptor [mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mStartOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSegment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mSegment:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDownloadSegment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->mDownloadSegment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
