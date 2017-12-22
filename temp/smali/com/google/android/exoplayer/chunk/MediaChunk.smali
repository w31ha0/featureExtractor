.class public abstract Lcom/google/android/exoplayer/chunk/MediaChunk;
.super Lcom/google/android/exoplayer/chunk/Chunk;
.source "MediaChunk.java"


# instance fields
.field public final chunkIndex:I

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJII)V
    .locals 11

    .prologue
    .line 58
    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/chunk/Chunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;I)V

    .line 59
    invoke-static {p4}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->startTimeUs:J

    .line 61
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->endTimeUs:J

    .line 62
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    .line 63
    return-void
.end method


# virtual methods
.method public getNextChunkIndex()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
