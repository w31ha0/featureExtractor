.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;
.source "MediaDecoder2Video.java"


# static fields
.field private static final DEFAULT_LOOPING_TIME:I = 0x1e

.field private static final K_SYNC_WINDOW:J = 0x2dL

.field private static final L_SYNC_WINDOW:J = 0x64L

.field private static final MAX_AHEAD_TIMED_RELEASE_MS:J = 0x1f4L

.field private static final MAX_LOOPING_TIME:I = 0x32

.field private static final MSG_RENDER_FLUSH:I = 0x2

.field private static final MSG_RENDER_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaDecoder2Video"


# instance fields
.field private mDefaultRenderingInterval:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

.field private mLastFrameRendered:Z

.field private mMaxContinousFramesSkipped:J

.field private volatile mPaused:Z

.field private mPrevPtsNano:J

.field private mPrevScheduledNano:J

.field private mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

.field private mRendererStarted:Z

.field private nContinousFramesSkipped:J

.field private nFrameSkipped:J

.field private nFramesRenderRcvd:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nContinousFramesSkipped:J

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mMaxContinousFramesSkipped:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    .line 40
    const/16 v0, 0x1e

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDefaultRenderingInterval:I

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    .line 47
    const/16 v0, 0x1e

    if-le p6, v0, :cond_0

    .line 48
    const/16 v0, 0xf

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDefaultRenderingInterval:I

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->showHeatBeat()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->tryToReleaseBuffers()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    return-wide p1
.end method

.method private removeFrameFromQ(I)V
    .locals 6

    .prologue
    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 146
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private renderFrame(JJJJIJ)Z
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 192
    const-wide/16 v4, -0x2d

    cmp-long v4, p7, v4

    if-gez v4, :cond_0

    .line 197
    const-string/jumbo v4, "skipping frame "

    invoke-static {v4}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 198
    move/from16 v0, p9

    move-wide/from16 v1, p3

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->skipFrame(IJ)V

    .line 266
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 199
    :cond_0
    const-wide/16 v4, 0x1f4

    cmp-long v4, p7, v4

    if-lez v4, :cond_1

    .line 201
    const-wide/16 v4, 0x32

    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->scheduleNextRun(J)V

    .line 202
    const/4 v4, 0x0

    goto :goto_1

    .line 205
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 206
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    .line 207
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    iget-wide v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    sub-long v8, p3, v8

    add-long/2addr v6, v8

    .line 208
    add-long v8, v4, p5

    sub-long v8, v6, v8

    .line 210
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, -0x64

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    .line 218
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    sub-long v4, p3, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 219
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 220
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    move/from16 v0, p9

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 221
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nContinousFramesSkipped:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_2
    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->removeFrameFromQ(I)V

    .line 264
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    move-wide/from16 v0, p1

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->updatePtsIfNeeded(JJ)V

    goto :goto_0

    .line 222
    :cond_2
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 230
    move/from16 v0, p9

    move-wide/from16 v1, p3

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->skipFrame(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 259
    :catch_0
    move-exception v4

    .line 260
    const-string/jumbo v4, "MediaDecoder2Video"

    const-string/jumbo v5, "get exception as a result of timed releaseOutputBuffer()"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    goto :goto_2

    .line 236
    :cond_3
    :try_start_2
    iput-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 237
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 238
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    .line 239
    const-string/jumbo v6, "MediaDecoder2Video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rebase "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p10

    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", delta "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 242
    :cond_4
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    move/from16 v0, p9

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 243
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nContinousFramesSkipped:J

    goto/16 :goto_2

    .line 250
    :cond_5
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 251
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    cmp-long v6, p5, v6

    if-lez v6, :cond_6

    .line 252
    add-long v4, v4, p5

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 256
    :goto_3
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    move/from16 v0, p9

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 257
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nContinousFramesSkipped:J

    goto/16 :goto_2

    .line 254
    :cond_6
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private renderFrameK(JJJJIJ)Z
    .locals 15

    .prologue
    .line 275
    const-wide/16 v4, -0x2d

    cmp-long v4, p7, v4

    if-gez v4, :cond_0

    .line 280
    const/4 v4, 0x1

    .line 344
    :goto_0
    return v4

    .line 283
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 284
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 285
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    iget-wide v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    sub-long v8, p3, v8

    add-long/2addr v6, v8

    .line 286
    add-long v8, v4, p5

    sub-long v8, v6, v8

    .line 288
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, -0x2d

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_1

    .line 296
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    sub-long v4, p3, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_1
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    .line 340
    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->removeFrameFromQ(I)V

    .line 341
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    move-wide/from16 v0, p1

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->updatePtsIfNeeded(JJ)V

    .line 343
    const-wide/16 v4, 0x1e

    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->scheduleNextRun(J)V

    .line 344
    const/4 v4, 0x0

    goto :goto_0

    .line 297
    :cond_1
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x2d

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 305
    move/from16 v0, p9

    move-wide/from16 v1, p3

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->skipFrame(IJ)V

    .line 306
    const/4 v4, 0x1

    goto :goto_0

    .line 312
    :cond_2
    iput-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 313
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 314
    iget-wide v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    add-long/2addr v10, v4

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    .line 315
    const-string/jumbo v8, "MediaDecoder2Video"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rebase "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p10

    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", delta "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p7

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 318
    :cond_3
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v4, v6, v4

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 319
    move/from16 v0, p9

    invoke-direct {p0, v0, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->renderOneFrameAt(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 335
    :catch_0
    move-exception v4

    .line 336
    const-string/jumbo v4, "MediaDecoder2Video"

    const-string/jumbo v5, "get exception as a result of  releaseOutputBuffer()"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    goto/16 :goto_1

    .line 326
    :cond_4
    :try_start_2
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 327
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    cmp-long v6, p5, v6

    if-lez v6, :cond_5

    .line 328
    add-long v4, v4, p5

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 332
    :goto_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 333
    move/from16 v0, p9

    invoke-direct {p0, v0, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->renderOneFrameAt(IJ)V

    goto/16 :goto_1

    .line 330
    :cond_5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private renderOneFrameAt(IJ)V
    .locals 2

    .prologue
    .line 347
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 349
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 355
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    const-string/jumbo v0, "MediaDecoder2Video"

    const-string/jumbo v1, "renderOneFrameAt get exception"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleNextRun(J)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    return-void
.end method

.method private showHeatBeat()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method private skipFrame(IJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 376
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    .line 378
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nContinousFramesSkipped:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nContinousFramesSkipped:J

    .line 379
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nContinousFramesSkipped:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mMaxContinousFramesSkipped:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mMaxContinousFramesSkipped:J

    .line 383
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->removeFrameFromQ(I)V

    .line 384
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string/jumbo v0, "MediaDecoder2Video"

    const-string/jumbo v1, "get exception as skip frame with releaseOutputBuffer()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    goto :goto_0
.end method

.method private tryToReleaseBuffers()V
    .locals 14

    .prologue
    .line 151
    .line 153
    :goto_0
    iget-object v13, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v13

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    .line 160
    const/4 v1, -0x1

    if-eq v10, v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v1, :cond_4

    .line 161
    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v2

    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDefaultRenderingInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->scheduleNextRun(J)V

    .line 168
    :cond_0
    monitor-exit v13

    .line 187
    :goto_1
    return-void

    .line 158
    :cond_1
    monitor-exit v13

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 170
    :cond_2
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 171
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 172
    sub-long v6, v4, v0

    .line 173
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 176
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->ANDROID_L_AND_HIGHER:Z

    if-eqz v0, :cond_3

    move-object v1, p0

    .line 177
    invoke-direct/range {v1 .. v12}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->renderFrame(JJJJIJ)Z

    move-result v0

    .line 181
    :goto_2
    if-nez v0, :cond_4

    .line 182
    monitor-exit v13

    goto :goto_1

    :cond_3
    move-object v1, p0

    .line 179
    invoke-direct/range {v1 .. v12}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->renderFrameK(JJJJIJ)Z

    move-result v0

    goto :goto_2

    .line 185
    :cond_4
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .prologue
    .line 358
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->showHeatBeat()V

    .line 363
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    if-nez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->tryToReleaseBuffers()V

    .line 366
    :cond_0
    return-void

    .line 361
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method createRenderer()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RenderThreadVideo"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method flushRenderer()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 121
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string/jumbo v0, "MediaDecoder2Video"

    const-string/jumbo v2, "flushRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getVideoPlaybackQualStats()Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;
    .locals 8

    .prologue
    .line 391
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->getDecoderName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFramesRenderRcvd:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mMaxContinousFramesSkipped:J

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;-><init>(Ljava/lang/String;JJJ)V

    return-object v0
.end method

.method pauseRenderer()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 100
    return-void
.end method

.method startRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, "MediaDecoder2Video"

    const-string/jumbo v1, "start rendering"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    goto :goto_0
.end method

.method stopRenderer()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 128
    :cond_1
    return-void
.end method

.method unpauseRenderer()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 104
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevPtsNano:J

    .line 105
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPrevScheduledNano:J

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    const-string/jumbo v0, "MediaDecoder2Video"

    const-string/jumbo v1, "unpauseRenderer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
