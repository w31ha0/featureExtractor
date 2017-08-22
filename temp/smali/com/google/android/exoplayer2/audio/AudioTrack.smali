.class public final Lcom/google/android/exoplayer2/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private channelConfig:I

.field private currentSourceBuffer:Ljava/nio/ByteBuffer;

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private nextPlayheadOffsetIndex:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resampledBuffer:Ljava/nio/ByteBuffer;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private sourceEncoding:I

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private final streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private targetEncoding:I

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private useResampledBuffer:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 195
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;I)V
    .locals 4
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .param p2, "streamType"    # I

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 250
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    .line 251
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 252
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 254
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 255
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 261
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 267
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    .line 268
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 270
    return-void

    .line 262
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 263
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 265
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/AudioTrack;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 895
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 896
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 897
    return-void

    .line 901
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 909
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 902
    :catch_0
    move-exception v1

    .line 906
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private durationUsToFrames(J)J
    .locals 5
    .param p1, "durationUs"    # J

    .prologue
    .line 921
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5
    .param p1, "frameCount"    # J

    .prologue
    .line 917
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1030
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1040
    :goto_1
    return v0

    .line 1030
    :sswitch_0
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 1032
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 1034
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 1036
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1038
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1030
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1045
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 1046
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1050
    :goto_0
    return v0

    .line 1047
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1048
    invoke-static {}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    .line 1049
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 1050
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1052
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 2

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 20

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v10

    .line 808
    .local v10, "playbackPositionUs":J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 813
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    .line 815
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    .line 816
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 817
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_2

    .line 818
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 820
    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 821
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 822
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v7, v9, :cond_3

    .line 823
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 822
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 827
    .end local v7    # "i":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_0

    .line 833
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_0

    .line 834
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 835
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v9, :cond_4

    .line 837
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 838
    .local v4, "audioTimestampUs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    .line 839
    .local v2, "audioTimestampFramePosition":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_6

    .line 841
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 865
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v9, :cond_5

    .line 869
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 872
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 874
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_5

    .line 875
    const-string v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 842
    .restart local v2    # "audioTimestampFramePosition":J
    .restart local v4    # "audioTimestampUs":J
    :cond_6
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 844
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 847
    .local v8, "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_7

    .line 848
    new-instance v9, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 850
    :cond_7
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 852
    .end local v8    # "message":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_4

    .line 855
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 858
    .restart local v8    # "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_9

    .line 859
    new-instance v9, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 861
    :cond_9
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 878
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    .end local v8    # "message":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 880
    .local v6, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    .prologue
    .line 942
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 954
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 955
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 953
    :goto_0
    return v0

    .line 955
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pcmBytesToFrames(J)J
    .locals 3
    .param p1, "byteCount"    # J

    .prologue
    .line 913
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 781
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 787
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 788
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 793
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private static resampleTo16BitPcm(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "sourceEncoding"    # I
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 969
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 970
    .local v2, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 971
    .local v1, "limit":I
    sub-int v5, v1, v2

    .line 974
    .local v5, "size":I
    sparse-switch p1, :sswitch_data_0

    .line 986
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 976
    :sswitch_0
    mul-int/lit8 v4, v5, 0x2

    .line 989
    .local v4, "resampledSize":I
    :goto_0
    move-object v3, p2

    .line 990
    .local v3, "resampledBuffer":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v4, :cond_1

    .line 991
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 993
    :cond_1
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 994
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 997
    sparse-switch p1, :sswitch_data_1

    .line 1021
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 979
    .end local v3    # "resampledBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "resampledSize":I
    :sswitch_1
    div-int/lit8 v6, v5, 0x3

    mul-int/lit8 v4, v6, 0x2

    .line 980
    .restart local v4    # "resampledSize":I
    goto :goto_0

    .line 982
    .end local v4    # "resampledSize":I
    :sswitch_2
    div-int/lit8 v4, v5, 0x2

    .line 983
    .restart local v4    # "resampledSize":I
    goto :goto_0

    .line 1000
    .restart local v3    # "resampledBuffer":Ljava/nio/ByteBuffer;
    :sswitch_3
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1001
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1002
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1007
    .end local v0    # "i":I
    :sswitch_4
    move v0, v2

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 1008
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1009
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1007
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 1014
    .end local v0    # "i":I
    :sswitch_5
    move v0, v2

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v1, :cond_2

    .line 1015
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1016
    add-int/lit8 v6, v0, 0x3

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1014
    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    .line 1024
    :cond_2
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1025
    return-object v3

    .line 974
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x3 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 997
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x3 -> :sswitch_3
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 929
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 930
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 931
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 932
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 933
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 934
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 935
    return-void
.end method

.method private setAudioTrackVolume()V
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 713
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1064
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1065
    return-void
.end method

.method private static setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .prologue
    .line 1069
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1070
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1059
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "pcmEncoding"    # I
    .param p5, "specifiedBufferSize"    # I

    .prologue
    .line 356
    packed-switch p2, :pswitch_data_0

    .line 382
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported channel count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 358
    :pswitch_0
    const/4 v2, 0x4

    .line 385
    .local v2, "channelConfig":I
    :goto_0
    const-string v9, "audio/raw"

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v7, 0x1

    .line 387
    .local v7, "passthrough":Z
    :goto_1
    if-eqz v7, :cond_1

    .line 388
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v8

    .line 396
    .local v8, "sourceEncoding":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    if-ne v9, v8, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    move/from16 v0, p3

    if-ne v9, v0, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    if-ne v9, v2, :cond_4

    .line 436
    .end local v8    # "sourceEncoding":I
    :goto_3
    return-void

    .line 361
    .end local v2    # "channelConfig":I
    .end local v7    # "passthrough":Z
    :pswitch_1
    const/16 v2, 0xc

    .line 362
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 364
    .end local v2    # "channelConfig":I
    :pswitch_2
    const/16 v2, 0x1c

    .line 365
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 367
    .end local v2    # "channelConfig":I
    :pswitch_3
    const/16 v2, 0xcc

    .line 368
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 370
    .end local v2    # "channelConfig":I
    :pswitch_4
    const/16 v2, 0xdc

    .line 371
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 373
    .end local v2    # "channelConfig":I
    :pswitch_5
    const/16 v2, 0xfc

    .line 374
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 376
    .end local v2    # "channelConfig":I
    :pswitch_6
    const/16 v2, 0x4fc

    .line 377
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 379
    .end local v2    # "channelConfig":I
    :pswitch_7
    sget v2, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 380
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 385
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 389
    .restart local v7    # "passthrough":Z
    :cond_1
    const/4 v9, 0x3

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/4 v9, 0x2

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/high16 v9, -0x80000000

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    .line 391
    :cond_2
    move/from16 v8, p4

    .restart local v8    # "sourceEncoding":I
    goto :goto_2

    .line 393
    .end local v8    # "sourceEncoding":I
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported PCM encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 402
    .restart local v8    # "sourceEncoding":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 404
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    .line 405
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    .line 406
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    .line 407
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    .line 408
    if-eqz v7, :cond_5

    .end local v8    # "sourceEncoding":I
    :goto_4
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    .line 409
    mul-int/lit8 v9, p2, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    .line 411
    if-eqz p5, :cond_6

    .line 412
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    .line 435
    :goto_5
    if-eqz v7, :cond_d

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :goto_6
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    goto :goto_3

    .line 408
    .restart local v8    # "sourceEncoding":I
    :cond_5
    const/4 v8, 0x2

    goto :goto_4

    .line 413
    .end local v8    # "sourceEncoding":I
    :cond_6
    if-eqz v7, :cond_9

    .line 416
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    .line 418
    :cond_7
    const/16 v9, 0x5000

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    .line 421
    :cond_8
    const v9, 0xc000

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    .line 424
    :cond_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    .line 425
    move/from16 v0, p3

    invoke-static {v0, v2, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 426
    .local v5, "minBufferSize":I
    const/4 v9, -0x2

    if-eq v5, v9, :cond_a

    const/4 v9, 0x1

    :goto_7
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 427
    mul-int/lit8 v6, v5, 0x4

    .line 428
    .local v6, "multipliedBufferSize":I
    const-wide/32 v10, 0x3d090

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v10

    long-to-int v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    mul-int v4, v9, v10

    .line 429
    .local v4, "minAppBufferSize":I
    int-to-long v10, v5

    const-wide/32 v12, 0xb71b0

    .line 430
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v14, v9

    mul-long/2addr v12, v14

    .line 429
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    .line 431
    .local v3, "maxAppBufferSize":I
    if-ge v6, v4, :cond_b

    .end local v4    # "minAppBufferSize":I
    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    .line 426
    .end local v3    # "maxAppBufferSize":I
    .end local v6    # "multipliedBufferSize":I
    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    .line 431
    .restart local v3    # "maxAppBufferSize":I
    .restart local v4    # "minAppBufferSize":I
    .restart local v6    # "multipliedBufferSize":I
    :cond_b
    if-le v6, v3, :cond_c

    move v4, v3

    goto :goto_8

    :cond_c
    move v4, v6

    goto :goto_8

    .line 435
    .end local v3    # "maxAppBufferSize":I
    .end local v4    # "minAppBufferSize":I
    .end local v5    # "minBufferSize":I
    .end local v6    # "multipliedBufferSize":I
    :cond_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    int-to-long v10, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v10

    goto :goto_6

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    return v0
.end method

.method public getBufferSizeUs()J
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 18
    .param p1, "sourceEnded"    # Z

    .prologue
    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v14

    if-nez v14, :cond_1

    .line 304
    const-wide/high16 v6, -0x8000000000000000L

    .line 338
    :cond_0
    :goto_0
    return-wide v6

    .line 307
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 311
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 313
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v14, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sub-long v10, v12, v14

    .line 317
    .local v10, "presentationDiff":J
    long-to-float v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 318
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackSpeed()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-long v2, v14

    .line 319
    .local v2, "actualSpeedPresentationDiff":J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v8

    .line 321
    .local v8, "framesDiff":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v14

    add-long v4, v14, v8

    .line 322
    .local v4, "currentFramePosition":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 323
    .local v6, "currentPositionUs":J
    goto :goto_0

    .line 324
    .end local v2    # "actualSpeedPresentationDiff":J
    .end local v4    # "currentFramePosition":J
    .end local v6    # "currentPositionUs":J
    .end local v8    # "framesDiff":J
    .end local v10    # "presentationDiff":J
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v14, :cond_4

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 333
    .restart local v6    # "currentPositionUs":J
    :goto_1
    if-nez p1, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v6, v14

    goto :goto_0

    .line 331
    .end local v6    # "currentPositionUs":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v14, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .restart local v6    # "currentPositionUs":J
    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)I
    .locals 18
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 555
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    if-nez v11, :cond_2

    const/4 v8, 0x1

    .line 556
    .local v8, "isNewSourceBuffer":Z
    :goto_0
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_3

    :cond_0
    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 557
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 562
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 563
    const/4 v10, 0x0

    .line 665
    :cond_1
    :goto_2
    return v10

    .line 555
    .end local v8    # "isNewSourceBuffer":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 556
    .restart local v8    # "isNewSourceBuffer":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 569
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 570
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    .line 571
    const/4 v10, 0x0

    goto :goto_2

    .line 575
    :cond_5
    const/4 v10, 0x0

    .line 576
    .local v10, "result":I
    if-eqz v8, :cond_c

    .line 579
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-nez v11, :cond_6

    .line 581
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 582
    const/4 v10, 0x2

    goto :goto_2

    .line 585
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    if-eq v11, v12, :cond_10

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    .line 586
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_7

    .line 587
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_11

    const/4 v11, 0x1

    :goto_4
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v11, v12, v13}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resampleTo16BitPcm(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 p1, v0

    .line 593
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v11, :cond_8

    .line 595
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 597
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-nez v11, :cond_12

    .line 598
    const-wide/16 v12, 0x0

    move-wide/from16 v0, p2

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 599
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 618
    :cond_9
    :goto_5
    sget v11, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_c

    .line 620
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 621
    .local v3, "bytesRemaining":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    array-length v11, v11

    if-ge v11, v3, :cond_b

    .line 622
    :cond_a
    new-array v11, v3, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    .line 624
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 625
    .local v9, "originalPosition":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 626
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 627
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    .line 631
    .end local v3    # "bytesRemaining":I
    .end local v9    # "originalPosition":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 p1, v0

    .line 632
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 633
    .restart local v3    # "bytesRemaining":I
    const/4 v5, 0x0

    .line 634
    .local v5, "bytesWritten":I
    sget v11, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_14

    .line 636
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 637
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-int v2, v12

    .line 638
    .local v2, "bytesPending":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    sub-int v4, v11, v2

    .line 639
    .local v4, "bytesToWrite":I
    if-lez v4, :cond_f

    .line 640
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 641
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v11, v12, v13, v4}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    .line 642
    if-ltz v5, :cond_e

    .line 643
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v11, v5

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    .line 645
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 651
    .end local v2    # "bytesPending":I
    .end local v4    # "bytesToWrite":I
    :cond_f
    :goto_6
    if-gez v5, :cond_15

    .line 652
    new-instance v11, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;

    invoke-direct {v11, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;-><init>(I)V

    throw v11

    .line 585
    .end local v3    # "bytesRemaining":I
    .end local v5    # "bytesWritten":I
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 587
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 602
    :cond_12
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    add-long v6, v12, v14

    .line 604
    .local v6, "expectedPresentationTimeUs":J
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    sub-long v12, v6, p2

    .line 605
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x30d40

    cmp-long v11, v12, v14

    if-lez v11, :cond_13

    .line 606
    const-string v11, "AudioTrack"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Discontinuity detected [expected "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 610
    :cond_13
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 613
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v14, p2, v6

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 614
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 615
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 648
    .end local v6    # "expectedPresentationTimeUs":J
    .restart local v3    # "bytesRemaining":I
    .restart local v5    # "bytesWritten":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p1

    invoke-static {v11, v0, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v5

    goto/16 :goto_6

    .line 655
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v11, :cond_16

    .line 656
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    int-to-long v14, v5

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 658
    :cond_16
    if-ne v5, v3, :cond_1

    .line 659
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_17

    .line 660
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 662
    :cond_17
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 663
    or-int/lit8 v10, v10, 0x2

    goto/16 :goto_2
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 529
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 530
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 532
    :cond_0
    return-void
.end method

.method public handleEndOfStream()V
    .locals 4

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    .line 675
    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    .line 683
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(I)I
    .locals 8
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 453
    if-nez p1, :cond_2

    .line 454
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 461
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    .line 464
    sget-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    .line 465
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 469
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 473
    const/16 v2, 0xfa0

    .line 474
    .local v2, "sampleRate":I
    const/4 v3, 0x4

    .line 475
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 476
    .local v4, "encoding":I
    const/4 v5, 0x2

    .line 477
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 483
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v5    # "bufferSize":I
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 484
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setAudioTrackVolume()V

    .line 485
    return p1

    .line 458
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 280
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->pause()V

    .line 728
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 522
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 774
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 775
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 739
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 740
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 741
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 742
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 743
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 744
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 745
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 746
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 747
    .local v0, "playState":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 752
    .local v1, "toRelease":Landroid/media/AudioTrack;
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 753
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 754
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 755
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioTrack$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 765
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->start()V

    .line 767
    .end local v0    # "playState":I
    .end local v1    # "toRelease":Landroid/media/AudioTrack;
    :cond_1
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 696
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 704
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 705
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    .line 706
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setAudioTrackVolume()V

    .line 708
    :cond_0
    return-void
.end method
