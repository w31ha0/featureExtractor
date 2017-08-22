.class final Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# static fields
.field private static final UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private adjustedEndTimeUs:J

.field private bytesLoaded:I

.field public final discontinuitySequenceNumber:I

.field public final extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final extractorNeedsInit:Z

.field private extractorOutput:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final isEncrypted:Z

.field private final isMasterTimestampSource:Z

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final shouldSpliceIn:Z

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIZLcom/google/android/exoplayer2/extractor/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/Extractor;ZZ[B[B)V
    .locals 14
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I
    .param p11, "discontinuitySequenceNumber"    # I
    .param p12, "isMasterTimestampSource"    # Z
    .param p13, "timestampAdjuster"    # Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;
    .param p14, "extractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p15, "extractorNeedsInit"    # Z
    .param p16, "shouldSpliceIn"    # Z
    .param p17, "encryptionKey"    # [B
    .param p18, "encryptionIv"    # [B

    .prologue
    .line 89
    move-object/from16 v0, p17

    move-object/from16 v1, p18

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 91
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    .line 92
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    .line 93
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    .line 94
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 95
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorNeedsInit:Z

    .line 96
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    .line 98
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    .line 99
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    .line 100
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 101
    return-void
.end method

.method private static buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .prologue
    .line 203
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 206
    .end local p0    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    .line 146
    return-void
.end method

.method public getAdjustedEndTimeUs()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    return-wide v0
.end method

.method public getAdjustedStartTimeUs()J
    .locals 4

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->init(IZ)V

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorNeedsInit:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 115
    :cond_0
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 161
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    if-eqz v1, :cond_3

    .line 162
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 163
    .local v8, "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    if-eqz v1, :cond_2

    move v10, v11

    .line 169
    .local v10, "skipLoadedBytes":Z
    :goto_0
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v2, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 170
    invoke-interface {v4, v8}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    .line 171
    .local v0, "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    if-eqz v10, :cond_0

    .line 172
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :cond_0
    const/4 v9, 0x0

    .line 176
    .local v9, "result":I
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->waitUntilInitialized()V

    .line 179
    :cond_1
    :goto_1
    if-nez v9, :cond_4

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_4

    .line 180
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_1

    .line 163
    .end local v0    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    .end local v10    # "skipLoadedBytes":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 165
    .end local v8    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getRemainderDataSpec(Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v8

    .line 166
    .restart local v8    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    const/4 v10, 0x0

    .restart local v10    # "skipLoadedBytes":Z
    goto :goto_0

    .line 182
    .restart local v0    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .restart local v9    # "result":I
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 183
    .local v6, "adjustedEndTimeUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, v6, v2

    if-eqz v1, :cond_5

    .line 184
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :cond_5
    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 192
    iput-boolean v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    .line 193
    return-void

    .line 187
    .end local v6    # "adjustedEndTimeUs":J
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    .end local v0    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    throw v1
.end method
