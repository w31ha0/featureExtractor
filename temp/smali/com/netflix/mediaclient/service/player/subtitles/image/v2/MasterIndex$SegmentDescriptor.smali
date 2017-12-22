.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;
.super Ljava/lang/Object;
.source "MasterIndex.java"


# static fields
.field public static final FIXED_SIZE:I = 0x6


# instance fields
.field private downloadSegment:Z

.field private duration:I

.field private segment:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

.field private size:S

.field private startOffset:J


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;J)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->downloadSegment:Z

    .line 143
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->duration:I

    .line 144
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->size:S

    .line 145
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->startOffset:J

    .line 146
    return-void
.end method


# virtual methods
.method public declared-synchronized downloadStarted()V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->downloadSegment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->duration:I

    return v0
.end method

.method public getSegment()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->segment:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    return-object v0
.end method

.method public getSize()S
    .locals 1

    .prologue
    .line 153
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->size:S

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->startOffset:J

    return-wide v0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->segment:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->segment:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    .line 162
    return-void
.end method

.method public declared-synchronized shouldDownload()Z
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->downloadSegment:Z
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
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SegmentDescriptor{duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->size:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->startOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", segment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->segment:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadSegment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->downloadSegment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
