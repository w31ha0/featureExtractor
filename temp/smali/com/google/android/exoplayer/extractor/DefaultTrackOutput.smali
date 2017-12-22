.class public Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/TrackOutput;


# instance fields
.field private volatile format:Lcom/google/android/exoplayer/MediaFormat;

.field private volatile largestParsedTimestampUs:J

.field private lastReadTimeUs:J

.field private needKeyframe:Z

.field private final rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

.field private final sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private spliceOutTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 52
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 53
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    .line 54
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 55
    return-void
.end method

.method private advanceToEligibleSample()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v1

    .line 212
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    if-eqz v2, :cond_0

    .line 213
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->skipSample()V

    .line 215
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v1

    goto :goto_0

    .line 218
    :cond_0
    if-nez v1, :cond_2

    .line 224
    :cond_1
    :goto_1
    return v0

    .line 221
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v2, v1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 224
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->clear()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 65
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 66
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->spliceOutTimeUs:J

    .line 67
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 68
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->discardUpstreamSamples(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleInfoHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 86
    return-void

    .line 84
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public format(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 250
    return-void
.end method

.method public getLargestParsedTimestampUs()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getSample(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->advanceToEligibleSample()Z

    move-result v1

    .line 137
    if-nez v1, :cond_0

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    .line 142
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 143
    iget-wide v0, p1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->lastReadTimeUs:J

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->advanceToEligibleSample()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->appendData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer/upstream/DataSource;IZ)I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->appendData(Lcom/google/android/exoplayer/upstream/DataSource;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->appendData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 261
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->largestParsedTimestampUs:J

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->getWritePosition()J

    move-result-wide v2

    int-to-long v4, p4

    sub-long/2addr v2, v4

    int-to-long v4, p5

    sub-long v4, v2, v4

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->commitSample(JIJI[B)V

    .line 268
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->rollingBuffer:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->skipToKeyframeBefore(J)Z

    move-result v0

    return v0
.end method
