.class public final Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private periodDurationUs:J

.field public representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

.field public sampleFormat:Lcom/google/android/exoplayer2/Format;

.field public segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

.field private segmentNumShift:I


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    .locals 7
    .param p1, "periodDurationUs"    # J
    .param p3, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 343
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 344
    iget-object v3, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v3, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 345
    .local v0, "containerMimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 364
    :goto_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 365
    return-void

    .line 348
    :cond_0
    const/4 v2, 0x0

    .line 350
    .local v2, "resendFormatOnInit":Z
    const-string v3, "application/x-rawcc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    new-instance v1, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;-><init>()V

    .line 352
    .local v1, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    const/4 v2, 0x1

    .line 360
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;ZZ)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    goto :goto_0

    .line 353
    .end local v1    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    .restart local v1    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_1

    .line 356
    .end local v1    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    .restart local v1    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_1
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/webm"

    .line 440
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirstSegmentNum()I
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLastSegmentNum()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 414
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v0

    .line 415
    .local v0, "lastSegmentNum":I
    if-ne v0, v1, :cond_0

    .line 418
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getSegmentEndTimeUs(I)J
    .locals 6
    .param p1, "segmentNum"    # I

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 427
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 426
    return-wide v0
.end method

.method public getSegmentNum(J)I
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSegmentStartTimeUs(I)J
    .locals 2
    .param p1, "segmentNum"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2
    .param p1, "segmentNum"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public setSampleFormat(Lcom/google/android/exoplayer2/Format;)V
    .locals 0
    .param p1, "sampleFormat"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    .line 369
    return-void
.end method

.method public updateRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    .locals 15
    .param p1, "newPeriodDurationUs"    # J
    .param p3, "newRepresentation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v6

    .line 374
    .local v6, "oldIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v2

    .line 376
    .local v2, "newIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 377
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 378
    if-nez v6, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 384
    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 389
    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v6, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v7

    .line 390
    .local v7, "oldIndexLastSegmentNum":I
    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 391
    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v12

    add-long v8, v10, v12

    .line 392
    .local v8, "oldIndexEndTimeUs":J
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v3

    .line 393
    .local v3, "newIndexFirstSegmentNum":I
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v4

    .line 394
    .local v4, "newIndexStartTimeUs":J
    cmp-long v10, v8, v4

    if-nez v10, :cond_2

    .line 396
    iget v10, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v12, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v6, v12, v13}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v11, v3

    add-int/2addr v10, v11

    iput v10, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0

    .line 398
    :cond_2
    cmp-long v10, v8, v4

    if-gez v10, :cond_3

    .line 401
    new-instance v10, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw v10

    .line 404
    :cond_3
    iget v10, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v12, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v6, v4, v5, v12, v13}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v11

    sub-int/2addr v11, v3

    add-int/2addr v10, v11

    iput v10, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0
.end method
