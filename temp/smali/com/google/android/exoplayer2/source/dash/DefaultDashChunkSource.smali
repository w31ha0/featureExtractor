.class public Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndex:I

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IILcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/upstream/DataSource;J)V
    .locals 7
    .param p1, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "adaptationSetIndex"    # I
    .param p5, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p6, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p7, "elapsedRealtimeOffsetMs"    # J

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 102
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    .line 103
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 104
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 105
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 106
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 108
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v2

    .line 109
    .local v2, "periodDurationUs":J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/List;

    move-result-object v4

    .line 110
    .local v4, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface {p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 112
    invoke-interface {p5, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 113
    .local v1, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v6, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-direct {v6, v2, v3, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V

    aput-object v6, v5, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_0
    return-void
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 280
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 283
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private getRepresentations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    return-object v0
.end method

.method private newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 9
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "initializationUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p7, "indexUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .prologue
    .line 291
    if-eqz p6, :cond_1

    .line 294
    invoke-virtual/range {p6 .. p7}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v8

    .line 295
    .local v8, "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v8, :cond_0

    .line 296
    move-object v8, p6

    .line 301
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, v8, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, v8, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 302
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 303
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v7, p1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v2, p2

    move-object v3, v0

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v1

    .line 299
    .end local v0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v8    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    move-object/from16 v8, p7

    .restart local v8    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_0
.end method

.method private newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 21
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "sampleFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p7, "segmentNum"    # I

    .prologue
    .line 310
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v19, v0

    .line 311
    .local v19, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v10

    .line 312
    .local v10, "startTimeUs":J
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v12

    .line 313
    .local v12, "endTimeUs":J
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v20

    .line 314
    .local v20, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 315
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 317
    .local v2, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v3, :cond_0

    .line 318
    new-instance v4, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v14, p7

    move-object/from16 v15, p3

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJILcom/google/android/exoplayer2/Format;)V

    .line 322
    :goto_0
    return-object v4

    .line 321
    :cond_0
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v15, v4

    .line 322
    .local v15, "sampleOffsetUs":J
    new-instance v4, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v17, v0

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v14, p7

    move-object/from16 v18, p6

    invoke-direct/range {v4 .. v18}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0
.end method


# virtual methods
.method public final getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 38
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 226
    :goto_0
    return-void

    .line 156
    :cond_0
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long v20, v4, p2

    .line 157
    .local v20, "bufferedDurationUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 160
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v4

    aget-object v3, v2, v4

    .line 161
    .local v3, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v36, v0

    .line 162
    .local v36, "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-object/from16 v31, v0

    .line 164
    .local v31, "segmentIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    const/4 v8, 0x0

    .line 165
    .local v8, "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v9, 0x0

    .line 166
    .local v9, "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v16, v0

    .line 167
    .local v16, "sampleFormat":Lcom/google/android/exoplayer2/Format;
    if-nez v16, :cond_1

    .line 168
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v8

    .line 170
    :cond_1
    if-nez v31, :cond_2

    .line 171
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v9

    .line 173
    :cond_2
    if-nez v8, :cond_3

    if-eqz v9, :cond_5

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 176
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 177
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v2, p0

    .line 175
    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v24

    .line 178
    .local v24, "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, v24

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto :goto_0

    .line 156
    .end local v3    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v8    # "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v9    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v16    # "sampleFormat":Lcom/google/android/exoplayer2/Format;
    .end local v20    # "bufferedDurationUs":J
    .end local v24    # "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .end local v31    # "segmentIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v36    # "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_4
    const-wide/16 v20, 0x0

    goto :goto_1

    .line 182
    .restart local v3    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .restart local v8    # "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v9    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v16    # "sampleFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v20    # "bufferedDurationUs":J
    .restart local v31    # "segmentIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v36    # "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v32

    .line 183
    .local v32, "nowUs":J
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v22

    .line 184
    .local v22, "firstAvailableSegmentNum":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastSegmentNum()I

    move-result v25

    .line 185
    .local v25, "lastAvailableSegmentNum":I
    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_b

    const/16 v23, 0x1

    .line 186
    .local v23, "indexUnbounded":Z
    :goto_2
    if-eqz v23, :cond_7

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v28, v32, v4

    .line 190
    .local v28, "liveEdgeTimeUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    const-wide/16 v6, 0x3e8

    mul-long v34, v4, v6

    .line 191
    .local v34, "periodStartUs":J
    sub-long v26, v28, v34

    .line 192
    .local v26, "liveEdgeTimeInPeriodUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide/16 v6, 0x3e8

    mul-long v18, v4, v6

    .line 194
    .local v18, "bufferDepthUs":J
    sub-long v4, v26, v18

    .line 195
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v2

    .line 194
    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 199
    .end local v18    # "bufferDepthUs":J
    :cond_6
    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .line 203
    .end local v26    # "liveEdgeTimeInPeriodUs":J
    .end local v28    # "liveEdgeTimeUs":J
    .end local v34    # "periodStartUs":J
    :cond_7
    if-nez p1, :cond_c

    .line 204
    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v2

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v17

    .line 215
    .local v17, "segmentNum":I
    :cond_8
    move/from16 v0, v17

    move/from16 v1, v25

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v2, :cond_e

    move/from16 v0, v17

    move/from16 v1, v25

    if-lt v0, v1, :cond_e

    .line 218
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_d

    :cond_a
    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p4

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    .line 185
    .end local v17    # "segmentNum":I
    .end local v23    # "indexUnbounded":Z
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 207
    .restart local v23    # "indexUnbounded":Z
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v17

    .line 208
    .restart local v17    # "segmentNum":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 210
    new-instance v2, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 218
    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    .line 222
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 223
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 224
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v10, p0

    move-object v11, v3

    .line 222
    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v30

    .line 225
    .local v30, "nextMediaChunk":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, v30

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_0
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 3
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 144
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 145
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 140
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 7
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 230
    instance-of v4, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 231
    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    .line 232
    .local v0, "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 233
    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v5

    aget-object v1, v4, v5

    .line 234
    .local v1, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->getSampleFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 235
    .local v2, "sampleFormat":Lcom/google/android/exoplayer2/Format;
    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->setSampleFormat(Lcom/google/android/exoplayer2/Format;)V

    .line 241
    :cond_0
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v4, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v3

    .line 243
    .local v3, "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    if-eqz v3, :cond_1

    .line 244
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    check-cast v3, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .end local v3    # "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 245
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 249
    .end local v0    # "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v2    # "sampleFormat":Lcom/google/android/exoplayer2/Format;
    :cond_1
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 6
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x1

    .line 253
    if-nez p2, :cond_0

    .line 254
    const/4 v2, 0x0

    .line 269
    :goto_0
    return v2

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    if-eqz v2, :cond_1

    instance-of v2, p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v2, :cond_1

    move-object v2, p3

    check-cast v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v2, v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x194

    if-ne v2, v4, :cond_1

    .line 260
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 261
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    aget-object v1, v2, v4

    .line 262
    .local v1, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastSegmentNum()I

    move-result v0

    .local v0, "lastAvailableSegmentNum":I
    move-object v2, p1

    .line 263
    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget v2, v2, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->chunkIndex:I

    if-lt v2, v0, :cond_1

    .line 264
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    move v2, v3

    .line 265
    goto :goto_0

    .line 269
    .end local v0    # "lastAvailableSegmentNum":I
    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 270
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    .line 269
    invoke-static {v2, v3, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v2

    goto :goto_0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 8
    .param p1, "newManifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "newPeriodIndex"    # I

    .prologue
    .line 120
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 121
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 122
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v7, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v2

    .line 123
    .local v2, "periodDurationUs":J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/List;

    move-result-object v5

    .line 124
    .local v5, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 126
    .local v4, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->updateRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    .end local v2    # "periodDurationUs":J
    .end local v4    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v5    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 131
    .end local v0    # "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    :cond_0
    return-void
.end method
