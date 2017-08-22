.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_AFTER_SEEK:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x1

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3


# instance fields
.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private isQuickTime:Z

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 63
    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 95
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 98
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 99
    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 190
    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 9

    .prologue
    .line 452
    const/4 v2, -0x1

    .line 453
    .local v2, "earliestSampleTrackIndex":I
    const-wide v0, 0x7fffffffffffffffL

    .line 454
    .local v0, "earliestSampleOffset":J
    const/4 v5, 0x0

    .local v5, "trackIndex":I
    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v8

    if-ge v5, v8, :cond_2

    .line 455
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v8, v5

    .line 456
    .local v4, "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 457
    .local v3, "sampleIndex":I
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v8, :cond_1

    .line 454
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v3

    .line 462
    .local v6, "trackSampleOffset":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    .line 463
    move-wide v0, v6

    .line 464
    move v2, v5

    goto :goto_1

    .line 468
    .end local v3    # "sampleIndex":I
    .end local v4    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v6    # "trackSampleOffset":J
    :cond_2
    return v2
.end method

.method private processAtomEnded(J)V
    .locals 5
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 268
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 270
    .local v0, "containerAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v1, v2, :cond_1

    .line 272
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 273
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 274
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 279
    .end local v0    # "containerAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v1, v4, :cond_3

    .line 280
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 282
    :cond_3
    return-void
.end method

.method private static processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "atomData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v1, 0x1

    .line 291
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 292
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 293
    .local v0, "majorBrand":I
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v0, v2, :cond_0

    .line 302
    :goto_0
    return v1

    .line 296
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 302
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 26
    .param p1, "moov"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 309
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 310
    .local v10, "durationUs":J
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v24, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const-wide v12, 0x7fffffffffffffffL

    .line 313
    .local v12, "earliestSampleOffset":J
    new-instance v17, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    .line 314
    .local v17, "gaplessInfoHolder":Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v25

    .line 315
    .local v25, "udta":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v25, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;ZLcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)V

    .line 319
    :cond_0
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_4

    .line 320
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 321
    .local v4, "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq v5, v6, :cond_2

    .line 319
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 325
    :cond_2
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object v22

    .line 327
    .local v22, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    if-eqz v22, :cond_1

    .line 331
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    .line 332
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v21

    .line 333
    .local v21, "stblAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v23

    .line 334
    .local v23, "trackSampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eqz v5, :cond_1

    .line 338
    new-instance v20, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 341
    .local v20, "mp4Track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v19, v5, 0x1e

    .line 342
    .local v19, "maxInputSize":I
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/Format;->copyWithMaxInputSize(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v16

    .line 343
    .local v16, "format":Lcom/google/android/exoplayer2/Format;
    move-object/from16 v0, v22

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 344
    move-object/from16 v0, v17

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/Format;->copyWithGaplessInfo(II)Lcom/google/android/exoplayer2/Format;

    move-result-object v16

    .line 347
    :cond_3
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 349
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 350
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    const/4 v6, 0x0

    aget-wide v14, v5, v6

    .line 353
    .local v14, "firstSampleOffset":J
    cmp-long v5, v14, v12

    if-gez v5, :cond_1

    .line 354
    move-wide v12, v14

    goto/16 :goto_1

    .line 357
    .end local v4    # "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v14    # "firstSampleOffset":J
    .end local v16    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v19    # "maxInputSize":I
    .end local v20    # "mp4Track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v21    # "stblAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v22    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .end local v23    # "trackSampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    :cond_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    .line 358
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 361
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x1

    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 193
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v5, v10, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    :goto_0
    return v5

    .line 198
    :cond_0
    iput v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 199
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 200
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 201
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 204
    :cond_1
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 206
    const/16 v2, 0x8

    .line 207
    .local v2, "headerBytesRemaining":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v10, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 208
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 209
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 212
    .end local v2    # "headerBytesRemaining":I
    :cond_2
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 213
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v6, v8

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    sub-long v0, v6, v8

    .line 214
    .local v0, "endPosition":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 215
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .end local v0    # "endPosition":J
    :goto_1
    move v5, v4

    .line 234
    goto :goto_0

    .line 219
    .restart local v0    # "endPosition":J
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    .line 221
    .end local v0    # "endPosition":J
    :cond_4
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 224
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v3, v10, :cond_5

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 225
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_6

    move v3, v4

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 226
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v6, v6

    invoke-direct {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 227
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v3, v5, v6, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iput v11, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    :cond_5
    move v3, v5

    .line 224
    goto :goto_2

    :cond_6
    move v3, v5

    .line 225
    goto :goto_3

    .line 230
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 231
    iput v11, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .locals 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 244
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v5

    sub-long v2, v6, v8

    .line 245
    .local v2, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long v0, v6, v2

    .line 246
    .local v0, "atomEndPosition":J
    const/4 v4, 0x0

    .line 247
    .local v4, "seekRequired":Z
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v5, :cond_2

    .line 248
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v7, v2

    invoke-interface {p1, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 249
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v5, v6, :cond_1

    .line 250
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    .line 263
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 264
    if-eqz v4, :cond_4

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 251
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 252
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 256
    :cond_2
    const-wide/32 v6, 0x40000

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    .line 257
    long-to-int v5, v2

    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 259
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 260
    const/4 v4, 0x1

    goto :goto_0

    .line 264
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 20
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v18

    .line 382
    .local v18, "trackIndex":I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    .line 383
    const/4 v4, -0x1

    .line 444
    :goto_0
    return v4

    .line 385
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v15, v4, v18

    .line 386
    .local v15, "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 387
    .local v3, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget v14, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 388
    .local v14, "sampleIndex":I
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v12, v4, v14

    .line 389
    .local v12, "position":J
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v7, v4, v14

    .line 390
    .local v7, "sampleSize":I
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 393
    const-wide/16 v4, 0x8

    add-long/2addr v12, v4

    .line 394
    add-int/lit8 v7, v7, -0x8

    .line 396
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v8, v6

    add-long v16, v4, v8

    .line 397
    .local v16, "skipAmount":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-ltz v4, :cond_2

    const-wide/32 v4, 0x40000

    cmp-long v4, v16, v4

    if-ltz v4, :cond_3

    .line 398
    :cond_2
    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 399
    const/4 v4, 0x1

    goto :goto_0

    .line 401
    :cond_3
    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 402
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v4, :cond_5

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 406
    .local v2, "nalLengthData":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 407
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 408
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 409
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v10, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 410
    .local v10, "nalUnitLengthFieldLength":I
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v4, 0x4

    .line 414
    .local v11, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v4, v7, :cond_6

    .line 415
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v4, :cond_4

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v11, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 423
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 424
    add-int/2addr v7, v11

    goto :goto_1

    .line 427
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 428
    .local v19, "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 429
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 433
    .end local v2    # "nalLengthData":[B
    .end local v10    # "nalUnitLengthFieldLength":I
    .end local v11    # "nalUnitLengthFieldLengthDiff":I
    .end local v19    # "writtenBytes":I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v4, v7, :cond_6

    .line 434
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int v4, v7, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 435
    .restart local v19    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 436
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 439
    .end local v19    # "writtenBytes":I
    :cond_6
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v4, v14

    iget-object v6, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v6, v6, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 441
    iget v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 442
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 443
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 444
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 487
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 475
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 11
    .param p1, "timeUs"    # J

    .prologue
    .line 167
    const-wide v0, 0x7fffffffffffffffL

    .line 168
    .local v0, "earliestSamplePosition":J
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v6, v8, v7

    .line 169
    .local v6, "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 170
    .local v5, "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v4

    .line 171
    .local v4, "sampleIndex":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 173
    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    .line 175
    :cond_0
    iput v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 177
    iget-object v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v10, v4

    .line 178
    .local v2, "offset":J
    cmp-long v10, v2, v0

    if-gez v10, :cond_1

    .line 179
    move-wide v0, v2

    .line 168
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "offset":J
    .end local v4    # "sampleIndex":I
    .end local v5    # "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v6    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_2
    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 109
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    :goto_1
    return v0

    .line 131
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, -0x1

    goto :goto_1

    .line 143
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public seek(J)V
    .locals 2
    .param p1, "position"    # J

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 114
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 115
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 116
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 117
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 118
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
