.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;
.source "MediaDecoder2Audio.java"


# static fields
.field private static final MAX_AUDIO_TRACK_BUFFER_ALLOCATION:I = 0x17700

.field private static final MIN_AUDIO_TRACK_BUFFER_ALLOCATION:I = 0xe100

.field private static final MSG_RENDER_FLUSH:I = 0x2

.field private static final MSG_RENDER_FLUSHED:I = 0x4

.field private static final MSG_RENDER_FRAME:I = 0x1

.field private static final MSG_RENDER_PAUSE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaDecoder2Audio"


# instance fields
.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private isEac3:Z

.field private mAudioFormat:I

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackStartSampleCnt:J

.field private mBufferSize:I

.field private mChannelConfig:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

.field private mSampleCnt:J

.field private mSampleRate:I

.field private mSampleSize:I

.field private mShouldMute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mShouldWaitAudioTrackPrebuffer:Z

.field private nFrameRendered:J

.field private timestamp:Landroid/media/AudioTimestamp;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 31
    const v0, 0xbb80

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    .line 32
    const/16 v0, 0xc

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    .line 48
    iput-boolean v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldWaitAudioTrackPrebuffer:Z

    .line 49
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->timestamp:Landroid/media/AudioTimestamp;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 57
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 58
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createAudioTrack()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTimestamp;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->timestamp:Landroid/media/AudioTimestamp;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->renderOneFrame(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrackStartSampleCnt:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldWaitAudioTrackPrebuffer:Z

    return p1
.end method

.method private createAudioTrack()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v5, 0x17700

    const v3, 0xe100

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_3

    .line 354
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "create audiotrack ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string/jumbo v0, "audio/eac3"

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->isEac3:Z

    .line 357
    iput v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 364
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    const/16 v0, 0xfc

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    .line 370
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    .line 375
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    if-ge v0, v3, :cond_1

    .line 376
    iput v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    .line 378
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    if-le v0, v5, :cond_2

    .line 379
    iput v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    .line 386
    :cond_2
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->ANDROID_L_AND_HIGHER:Z

    if-eqz v0, :cond_6

    .line 388
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 390
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 391
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 395
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 396
    invoke-virtual {v2, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    .line 397
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    .line 412
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    .line 413
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrackStartSampleCnt:J

    .line 414
    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldWaitAudioTrackPrebuffer:Z

    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->timestamp:Landroid/media/AudioTimestamp;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/media/AudioTimestamp;->framePosition:J

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->timestamp:Landroid/media/AudioTimestamp;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 419
    :cond_3
    return-void

    .line 360
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    goto/16 :goto_0

    .line 364
    :cond_5
    const/16 v0, 0xc

    goto :goto_1

    .line 403
    :cond_6
    new-instance v5, Landroid/media/AudioTrack;

    iget v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    iget v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    iget v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_2
.end method

.method public static getAudioHeaderPosition(Landroid/media/AudioTrack;Landroid/media/AudioTimestamp;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 538
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    sub-long/2addr v2, v4

    .line 542
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 543
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    const-wide/32 v4, 0xbb80

    mul-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    div-long/2addr v2, v4

    .line 546
    iget-wide v4, p1, Landroid/media/AudioTimestamp;->framePosition:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_0

    .line 547
    iget-wide v0, p1, Landroid/media/AudioTimestamp;->framePosition:J

    sub-long/2addr v0, v2

    .line 551
    :cond_0
    return-wide v0
.end method

.method private getRenderingTimeGeneric(JJ)J
    .locals 7

    .prologue
    .line 317
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 318
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    sub-long/2addr v2, p3

    .line 319
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 320
    sub-long/2addr v0, v2

    .line 326
    return-wide v0
.end method

.method private getRenderingTimeWithHiddenApi(JJ)J
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 329
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    sub-long/2addr v0, p3

    .line 330
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 331
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x1388

    if-lt v1, v4, :cond_0

    .line 348
    :goto_0
    return-wide v2

    .line 337
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    mul-int/lit16 v4, v4, 0x3e8

    iget v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    iget v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    mul-int/2addr v5, v6

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 338
    sub-long v0, v2, v0

    :goto_1
    move-wide v2, v0

    .line 348
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "can\'t getLatency"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-wide v0, v2

    goto :goto_1
.end method

.method public static isErrorWithAudioTimestamp(Landroid/media/AudioTrack;Landroid/media/AudioTimestamp;)Z
    .locals 4

    .prologue
    .line 533
    if-eqz p0, :cond_0

    .line 534
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    .line 534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseAudioTrack()V
    .locals 2

    .prologue
    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "AudioTrack.stop() has  IllegalStateException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private renderOneFrame(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;J)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 211
    if-ltz p1, :cond_3

    .line 212
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 213
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->getMostRecentSamplePts()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_d

    .line 217
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->ANDROID_L_AND_HIGHER:Z

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, p3, v2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->timestamp:Landroid/media/AudioTimestamp;

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->isErrorWithAudioTimestamp(Landroid/media/AudioTrack;Landroid/media/AudioTimestamp;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 240
    const-string/jumbo v2, "MediaDecoder2Audio"

    const-string/jumbo v6, "AudioTrack.getTimestamp() says bad AudioTrack due to headphone plug"

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 244
    :goto_1
    if-lez v0, :cond_9

    if-nez v2, :cond_9

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->shouldUpdate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrackStartSampleCnt:J

    iget v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 252
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getRenderingTimeWithHiddenApi(JJ)J

    move-result-wide v0

    .line 256
    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->update(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->isEac3:Z

    if-eqz v0, :cond_8

    .line 262
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    mul-int/lit16 v2, v2, 0x600

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    const v1, 0x177000

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    div-int/2addr v1, v2

    int-to-long v2, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->updateMostRecentSamplePts(J)V

    .line 269
    :goto_4
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->updatePtsIfNeeded(JJ)V

    .line 299
    :cond_1
    :goto_5
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 302
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    :goto_6
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_2

    .line 313
    :cond_2
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    .line 315
    :cond_3
    :goto_7
    return-void

    .line 220
    :cond_4
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 223
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 229
    :goto_8
    if-eqz v0, :cond_6

    .line 230
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v0, v1, v6}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    goto/16 :goto_0

    .line 226
    :cond_5
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 227
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p3, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_8

    .line 232
    :cond_6
    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    move v0, v1

    goto/16 :goto_0

    .line 254
    :cond_7
    :try_start_3
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getRenderingTimeGeneric(JJ)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v0

    goto/16 :goto_2

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string/jumbo v1, "MediaDecoder2Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update clock has Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 265
    :cond_8
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    int-to-long v2, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->updateMostRecentSamplePts(J)V

    goto/16 :goto_4

    .line 270
    :cond_9
    if-nez v0, :cond_a

    .line 271
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "AudioTrack.write() returns 0, won\'t wait for buffer"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldWaitAudioTrackPrebuffer:Z

    goto :goto_7

    .line 278
    :cond_a
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_b

    .line 279
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    :cond_b
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->releaseAudioTrack()V

    .line 285
    const/16 v1, -0x20

    if-eq v0, v1, :cond_c

    const/4 v1, -0x6

    if-eq v0, v1, :cond_c

    if-eqz v2, :cond_1

    .line 287
    :cond_c
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createAudioTrack()V

    goto/16 :goto_5

    .line 291
    :cond_d
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_1

    goto/16 :goto_5

    .line 302
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 305
    :catch_1
    move-exception v0

    .line 306
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_e
    move v2, v1

    goto/16 :goto_1
.end method

.method private setVolume(F)V
    .locals 5

    .prologue
    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "set audio volume %f."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 578
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 586
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "has exception setAudioDuck"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .prologue
    .line 527
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 530
    monitor-exit v1

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createRenderer()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->onPaused()V

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RenderThreadAudeo"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method flushRenderer()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 492
    :cond_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    :try_start_3
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "flushRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method pauseRenderer()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->onPausing()V

    .line 451
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :goto_1
    :try_start_2
    monitor-exit v1

    .line 464
    :cond_0
    return-void

    .line 455
    :cond_1
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "pauseRenderer audioTrack is null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    :try_start_3
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "pauseRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setAudioDuck(Z)V
    .locals 1

    .prologue
    .line 556
    const/high16 v0, 0x3f800000    # 1.0f

    .line 557
    if-eqz p1, :cond_0

    .line 558
    const v0, 0x3e99999a    # 0.3f

    .line 560
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->setVolume(F)V

    .line 561
    return-void
.end method

.method startRenderer()V
    .locals 6

    .prologue
    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    .line 424
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "start audiotrack ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrackStartSampleCnt:J

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldWaitAudioTrackPrebuffer:Z

    if-eqz v0, :cond_1

    .line 428
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "waiting for audiotrack buffer filled up ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "set audio volume 0.0."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 437
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 441
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "mAudioTrack already stopped/uninitialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method stopRenderer()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->releaseAudioTrack()V

    .line 505
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    .line 506
    return-void
.end method

.method public trySetMute(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 563
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 563
    goto :goto_0

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 568
    :try_start_0
    const-string/jumbo v2, "MediaDecoder2Audio"

    const-string/jumbo v3, "%s."

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v0, "mute audio."

    :goto_2
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 569
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mShouldMute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 570
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 571
    :goto_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->setVolume(F)V

    .line 572
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 568
    :cond_2
    :try_start_1
    const-string/jumbo v0, "unmute audio."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 570
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method unpauseRenderer()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 469
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 478
    :cond_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "unpauseRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
