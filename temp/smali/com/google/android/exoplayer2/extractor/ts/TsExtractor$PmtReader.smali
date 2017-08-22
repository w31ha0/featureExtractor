.class Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;
.super Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private crc:I

.field private final pid:I

.field private final pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private sectionBytesRead:I

.field private final sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sectionLength:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)V
    .locals 2
    .param p2, "pid"    # I

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$1;)V

    .line 381
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 382
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 383
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 384
    return-void
.end method

.method private readEsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;
    .locals 13
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 498
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 499
    .local v3, "descriptorsStartPosition":I
    add-int v2, v3, p2

    .line 500
    .local v2, "descriptorsEndPosition":I
    const/4 v8, -0x1

    .line 501
    .local v8, "streamType":I
    const/4 v6, 0x0

    .line 502
    .local v6, "language":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    if-ge v9, v2, :cond_7

    .line 503
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 504
    .local v1, "descriptorTag":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 505
    .local v0, "descriptorLength":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    add-int v7, v9, v0

    .line 506
    .local v7, "positionOfNextDescriptor":I
    const/4 v9, 0x5

    if-ne v1, v9, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 508
    .local v4, "formatIdentifier":J
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$800()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_1

    .line 509
    const/16 v8, 0x81

    .line 526
    .end local v4    # "formatIdentifier":J
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 510
    .restart local v4    # "formatIdentifier":J
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$900()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    .line 511
    const/16 v8, 0x87

    goto :goto_1

    .line 512
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$1000()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    .line 513
    const/16 v8, 0x24

    goto :goto_1

    .line 515
    .end local v4    # "formatIdentifier":J
    :cond_3
    const/16 v9, 0x6a

    if-ne v1, v9, :cond_4

    .line 516
    const/16 v8, 0x81

    goto :goto_1

    .line 517
    :cond_4
    const/16 v9, 0x7a

    if-ne v1, v9, :cond_5

    .line 518
    const/16 v8, 0x87

    goto :goto_1

    .line 519
    :cond_5
    const/16 v9, 0x7b

    if-ne v1, v9, :cond_6

    .line 520
    const/16 v8, 0x8a

    goto :goto_1

    .line 521
    :cond_6
    const/16 v9, 0xa

    if-ne v1, v9, :cond_0

    .line 522
    new-instance v9, Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 528
    .end local v0    # "descriptorLength":I
    .end local v1    # "descriptorTag":I
    .end local v7    # "positionOfNextDescriptor":I
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 529
    new-instance v9, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v10, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 530
    invoke-static {v10, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v9, v8, v6, v10}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    .line 529
    return-object v9
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 16
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z
    .param p3, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 394
    if-eqz p2, :cond_0

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 397
    .local v7, "pointerField":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    .line 404
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v12, v12, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Lcom/google/android/exoplayer2/util/Util;->crc([BIII)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->crc:I

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 410
    .end local v7    # "pointerField":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 411
    .local v1, "bytesToRead":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v12, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 412
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    add-int/2addr v12, v1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    .line 413
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    if-ge v12, v13, :cond_2

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v12, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->crc:I

    invoke-static {v12, v13, v14, v15}, Lcom/google/android/exoplayer2/util/Util;->crc([BIII)I

    move-result v12

    if-nez v12, :cond_1

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 434
    .local v8, "programInfoLength":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$300(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    move-result-object v12

    if-nez v12, :cond_3

    .line 439
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;

    const/16 v12, 0x15

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [B

    invoke-direct {v2, v12, v13, v14}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    .line 440
    .local v2, "dummyEsInfo":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v13}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$400(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$Factory;

    move-result-object v13

    const/16 v14, 0x15

    invoke-interface {v13, v14, v2}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$Factory;->createStreamReader(ILcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$302(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$300(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    move-result-object v12

    new-instance v13, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;

    const/16 v14, 0x15

    const/16 v15, 0x2000

    invoke-direct {v13, v14, v15}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;-><init>(II)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;)V

    .line 444
    .end local v2    # "dummyEsInfo":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    add-int/lit8 v12, v12, -0x9

    sub-int/2addr v12, v8

    add-int/lit8 v9, v12, -0x4

    .line 446
    .local v9, "remainingEntriesLength":I
    :cond_4
    :goto_1
    if-lez v9, :cond_8

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x5

    invoke-virtual {v12, v13, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 449
    .local v10, "streamType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 451
    .local v3, "elementaryPid":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 453
    .local v5, "esInfoLength":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;

    move-result-object v4

    .line 454
    .local v4, "esInfo":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;
    const/4 v12, 0x6

    if-ne v10, v12, :cond_5

    .line 455
    iget v10, v4, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;->streamType:I

    .line 457
    :cond_5
    add-int/lit8 v12, v5, 0x5

    sub-int/2addr v9, v12

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v11, v10

    .line 460
    .local v11, "trackId":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$500(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$500(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x15

    if-ne v10, v12, :cond_7

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$300(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    move-result-object v6

    .line 473
    .local v6, "pesPayloadReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    :goto_3
    if-eqz v6, :cond_4

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v12

    new-instance v13, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PesReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v14}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$600(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v14

    invoke-direct {v13, v6, v14}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;)V

    invoke-virtual {v12, v3, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v6    # "pesPayloadReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    .end local v11    # "trackId":I
    :cond_6
    move v11, v3

    .line 459
    goto :goto_2

    .line 469
    .restart local v11    # "trackId":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$400(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$Factory;

    move-result-object v12

    invoke-interface {v12, v10, v4}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$Factory;->createStreamReader(ILcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    move-result-object v6

    .line 470
    .restart local v6    # "pesPayloadReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    new-instance v12, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;

    const/16 v13, 0x2000

    invoke-direct {v12, v11, v13}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;-><init>(II)V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v12}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;)V

    goto :goto_3

    .line 477
    .end local v3    # "elementaryPid":I
    .end local v4    # "esInfo":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;
    .end local v5    # "esInfoLength":I
    .end local v6    # "pesPayloadReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    .end local v10    # "streamType":I
    .end local v11    # "trackId":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 478
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$700(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 479
    invoke-interface/range {p3 .. p3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 486
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$702(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;Z)Z

    goto/16 :goto_0

    .line 482
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 484
    invoke-interface/range {p3 .. p3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_4
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method
