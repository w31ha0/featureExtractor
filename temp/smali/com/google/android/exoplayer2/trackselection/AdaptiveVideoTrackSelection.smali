.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveVideoTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_INITIAL_BITRATE:I = 0xc3500

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private reason:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 13
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .prologue
    .line 114
    const v5, 0xc3500

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x61a8

    const-wide/16 v10, 0x61a8

    const/high16 v12, 0x3f400000    # 0.75f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJF)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJF)V
    .locals 7
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p4, "maxInitialBitrate"    # I
    .param p5, "minDurationForQualityIncreaseMs"    # J
    .param p7, "maxDurationForQualityDecreaseMs"    # J
    .param p9, "minDurationToRetainAfterDiscardMs"    # J
    .param p11, "bandwidthFraction"    # F

    .prologue
    const-wide/16 v4, 0x3e8

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 144
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 145
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxInitialBitrate:I

    .line 146
    mul-long v2, p5, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationForQualityIncreaseUs:J

    .line 147
    mul-long v2, p7, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxDurationForQualityDecreaseUs:J

    .line 148
    mul-long v2, p9, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 149
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthFraction:F

    .line 150
    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    .line 151
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->reason:I

    .line 152
    return-void
.end method

.method private determineIdealSelectedIndex(J)I
    .locals 11
    .param p1, "nowMs"    # J

    .prologue
    .line 233
    iget-object v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    .line 234
    .local v0, "bitrateEstimate":J
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    iget v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxInitialBitrate:I

    int-to-long v2, v7

    .line 236
    .local v2, "effectiveBitrate":J
    :goto_0
    const/4 v6, 0x0

    .line 237
    .local v6, "lowestBitrateNonBlacklistedIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->length:I

    if-ge v5, v7, :cond_4

    .line 238
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v7, p1, v8

    if-eqz v7, :cond_0

    invoke-virtual {p0, v5, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->isBlacklisted(IJ)Z

    move-result v7

    if-nez v7, :cond_3

    .line 239
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 240
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget v7, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v8, v7

    cmp-long v7, v8, v2

    if-gtz v7, :cond_2

    .line 247
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v5    # "i":I
    :goto_2
    return v5

    .line 234
    .end local v2    # "effectiveBitrate":J
    .end local v6    # "lowestBitrateNonBlacklistedIndex":I
    :cond_1
    long-to-float v7, v0

    iget v8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthFraction:F

    mul-float/2addr v7, v8

    float-to-long v2, v7

    goto :goto_0

    .line 243
    .restart local v2    # "effectiveBitrate":J
    .restart local v4    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v5    # "i":I
    .restart local v6    # "lowestBitrateNonBlacklistedIndex":I
    :cond_2
    move v6, v5

    .line 237
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    .line 247
    goto :goto_2
.end method


# virtual methods
.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 15
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
    .line 201
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 202
    const/4 v10, 0x0

    .line 223
    :cond_0
    :goto_0
    return v10

    .line 204
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    .line 205
    .local v10, "queueSize":I
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget-wide v12, v11, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long v2, v12, p1

    .line 206
    .local v2, "bufferedDurationUs":J
    iget-wide v12, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v11, v2, v12

    if-ltz v11, :cond_0

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-direct {p0, v12, v13}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v9

    .line 210
    .local v9, "idealSelectedIndex":I
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 213
    .local v8, "idealFormat":Lcom/google/android/exoplayer2/Format;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v10, :cond_0

    .line 214
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 215
    .local v4, "chunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-wide v12, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v12, p1

    .line 216
    .local v6, "durationBeforeThisChunkUs":J
    iget-wide v12, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v11, v6, v12

    if-ltz v11, :cond_2

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v11, v11, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v12, v8, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v11, v12, :cond_2

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v11, v11, Lcom/google/android/exoplayer2/Format;->height:I

    iget v12, v8, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v11, v12, :cond_2

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v11, v11, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v12, 0x2d0

    if-ge v11, v12, :cond_2

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v11, v11, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v12, 0x500

    if-ge v11, v12, :cond_2

    move v10, v5

    .line 220
    goto :goto_0

    .line 213
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(J)V
    .locals 9
    .param p1, "bufferedDurationUs"    # J

    .prologue
    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 158
    .local v4, "nowMs":J
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    .line 159
    .local v1, "currentSelectedIndex":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 160
    .local v0, "currentFormat":Lcom/google/android/exoplayer2/Format;
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v3

    .line 161
    .local v3, "idealSelectedIndex":I
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 163
    .local v2, "idealFormat":Lcom/google/android/exoplayer2/Format;
    iput v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    .line 165
    if-eqz v0, :cond_0

    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->isBlacklisted(IJ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    iget v6, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le v6, v7, :cond_2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    .line 170
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    .line 179
    :cond_0
    :goto_0
    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    if-eq v6, v1, :cond_1

    .line 180
    const/4 v6, 0x3

    iput v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->reason:I

    .line 182
    :cond_1
    return-void

    .line 171
    :cond_2
    iget v6, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v6, v7, :cond_0

    iget-wide v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    .line 175
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    goto :goto_0
.end method
