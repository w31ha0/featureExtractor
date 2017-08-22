.class final Lcom/google/android/exoplayer2/extractor/ts/H265Reader;
.super Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

.field private seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;-><init>()V

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 77
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 7
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    const/4 v5, 0x5

    .line 178
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    .line 189
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 191
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 197
    .end local v0    # "unescapedLength":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 199
    .restart local v0    # "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 202
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 205
    .end local v0    # "unescapedLength":I
    :cond_2
    return-void

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->parseMediaFormat(Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto/16 :goto_0
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 175
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_0
.end method

.method private static parseMediaFormat(Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer2/Format;
    .locals 32
    .param p0, "vps"    # Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;
    .param p1, "sps"    # Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;
    .param p2, "pps"    # Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .line 211
    .local v21, "csd":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    new-instance v15, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v15, v2, v3, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 217
    .local v15, "bitArray":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v2, 0x2c

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 218
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v25

    .line 219
    .local v25, "maxSubLayersMinus1":I
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 222
    const/16 v2, 0x58

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 223
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 224
    const/16 v31, 0x0

    .line 225
    .local v31, "toSkip":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 226
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    add-int/lit8 v31, v31, 0x59

    .line 229
    :cond_0
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    add-int/lit8 v31, v31, 0x8

    .line 225
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 233
    :cond_2
    move/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 234
    if-lez v25, :cond_3

    .line 235
    rsub-int/lit8 v2, v25, 0x8

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 238
    :cond_3
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 239
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 240
    .local v16, "chromaFormatIdc":I
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 243
    :cond_4
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 244
    .local v7, "picWidthInLumaSamples":I
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 245
    .local v8, "picHeightInLumaSamples":I
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 246
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 247
    .local v18, "confWinLeftOffset":I
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 248
    .local v19, "confWinRightOffset":I
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 249
    .local v20, "confWinTopOffset":I
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 251
    .local v17, "confWinBottomOffset":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    :cond_5
    const/16 v30, 0x2

    .line 252
    .local v30, "subWidthC":I
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    const/16 v29, 0x2

    .line 253
    .local v29, "subHeightC":I
    :goto_2
    add-int v2, v18, v19

    mul-int v2, v2, v30

    sub-int/2addr v7, v2

    .line 254
    add-int v2, v20, v17

    mul-int v2, v2, v29

    sub-int/2addr v8, v2

    .line 256
    .end local v17    # "confWinBottomOffset":I
    .end local v18    # "confWinLeftOffset":I
    .end local v19    # "confWinRightOffset":I
    .end local v20    # "confWinTopOffset":I
    .end local v29    # "subHeightC":I
    .end local v30    # "subWidthC":I
    :cond_6
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 257
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 258
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v23

    .line 260
    .local v23, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v25

    if-gt v0, v1, :cond_a

    .line 261
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 262
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 263
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 260
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 251
    .end local v23    # "log2MaxPicOrderCntLsbMinus4":I
    .restart local v17    # "confWinBottomOffset":I
    .restart local v18    # "confWinLeftOffset":I
    .restart local v19    # "confWinRightOffset":I
    .restart local v20    # "confWinTopOffset":I
    :cond_7
    const/16 v30, 0x1

    goto :goto_1

    .line 252
    .restart local v30    # "subWidthC":I
    :cond_8
    const/16 v29, 0x1

    goto :goto_2

    .end local v17    # "confWinBottomOffset":I
    .end local v18    # "confWinLeftOffset":I
    .end local v19    # "confWinRightOffset":I
    .end local v20    # "confWinTopOffset":I
    .end local v30    # "subWidthC":I
    .restart local v23    # "log2MaxPicOrderCntLsbMinus4":I
    :cond_9
    move/from16 v22, v25

    .line 260
    goto :goto_3

    .line 265
    :cond_a
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 266
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 267
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 268
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 269
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 270
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 272
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v28

    .line 273
    .local v28, "scalingListEnabled":Z
    if-eqz v28, :cond_b

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 274
    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 276
    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 277
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 279
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 280
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 281
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 282
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 285
    :cond_c
    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 286
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 288
    const/16 v22, 0x0

    :goto_4
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_d

    .line 289
    add-int/lit8 v24, v23, 0x4

    .line 291
    .local v24, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v24, 0x1

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 288
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 294
    .end local v24    # "ltRefPicPocLsbSpsLength":I
    :cond_d
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 295
    const/high16 v12, 0x3f800000    # 1.0f

    .line 296
    .local v12, "pixelWidthHeightRatio":F
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 297
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 298
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    .line 299
    .local v14, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v14, v2, :cond_f

    .line 300
    const/16 v2, 0x10

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v27

    .line 301
    .local v27, "sarWidth":I
    const/16 v2, 0x10

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v26

    .line 302
    .local v26, "sarHeight":I
    if-eqz v27, :cond_e

    if-eqz v26, :cond_e

    .line 303
    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v3, v0

    div-float v12, v2, v3

    .line 313
    .end local v14    # "aspectRatioIdc":I
    .end local v26    # "sarHeight":I
    .end local v27    # "sarWidth":I
    :cond_e
    :goto_5
    const/4 v2, 0x0

    const-string v3, "video/hevc"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    .line 315
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v13, 0x0

    .line 313
    invoke-static/range {v2 .. v13}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    return-object v2

    .line 305
    .restart local v14    # "aspectRatioIdc":I
    :cond_f
    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v14, v2, :cond_10

    .line 306
    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v12, v2, v14

    goto :goto_5

    .line 308
    :cond_10
    const-string v2, "H265Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 8
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 322
    const/4 v3, 0x0

    .local v3, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    .line 323
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 323
    :cond_0
    if-ne v3, v5, :cond_3

    move v4, v5

    :goto_2
    add-int/2addr v2, v4

    goto :goto_1

    .line 328
    :cond_1
    const/16 v4, 0x40

    shl-int/lit8 v7, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    shl-int v7, v6, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 329
    .local v0, "coefNum":I
    if-le v3, v6, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 333
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "coefNum":I
    .end local v1    # "i":I
    :cond_3
    move v4, v6

    .line 323
    goto :goto_2

    .line 322
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "matrixId":I
    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 10
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .prologue
    const/4 v9, 0x1

    .line 346
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 347
    .local v5, "numShortTermRefPicSets":I
    const/4 v1, 0x0

    .line 353
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v6, 0x0

    .line 354
    .local v6, "previousNumDeltaPocs":I
    const/4 v7, 0x0

    .local v7, "stRpsIdx":I
    :goto_0
    if-ge v7, v5, :cond_5

    .line 355
    if-eqz v7, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 358
    :cond_0
    if-eqz v1, :cond_2

    .line 359
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 361
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-gt v2, v6, :cond_4

    .line 362
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 363
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 361
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 368
    .local v3, "numNegativePics":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 369
    .local v4, "numPositivePics":I
    add-int v6, v3, v4

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 372
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_4

    .line 375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 376
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 354
    .end local v0    # "i":I
    .end local v3    # "numNegativePics":I
    .end local v4    # "numPositivePics":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 380
    :cond_5
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .locals 9
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 163
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 104
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_1

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 106
    .local v14, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v11

    .line 107
    .local v11, "limit":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 110
    .local v2, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 114
    :goto_0
    if-ge v14, v11, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v2, v14, v11, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    .line 117
    .local v12, "nalUnitOffset":I
    if-ne v12, v11, :cond_2

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v11}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 146
    .end local v2    # "dataArray":[B
    .end local v11    # "limit":I
    .end local v12    # "nalUnitOffset":I
    .end local v14    # "offset":I
    :cond_1
    return-void

    .line 124
    .restart local v2    # "dataArray":[B
    .restart local v11    # "limit":I
    .restart local v12    # "nalUnitOffset":I
    .restart local v14    # "offset":I
    :cond_2
    invoke-static {v2, v12}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v13

    .line 128
    .local v13, "nalUnitType":I
    sub-int v10, v12, v14

    .line 129
    .local v10, "lengthToNalUnit":I
    if-lez v10, :cond_3

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v12}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 133
    :cond_3
    sub-int v6, v11, v12

    .line 134
    .local v6, "bytesWrittenPastPosition":I
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v0, v6

    move-wide/from16 v16, v0

    sub-long v4, v8, v16

    .line 138
    .local v4, "absolutePosition":J
    if-gez v10, :cond_4

    neg-int v7, v10

    :goto_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 141
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    move v7, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 143
    add-int/lit8 v14, v12, 0x3

    .line 144
    goto :goto_0

    .line 138
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$TrackIdGenerator;->getNextId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    .line 95
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 100
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->reset()V

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 89
    return-void
.end method
