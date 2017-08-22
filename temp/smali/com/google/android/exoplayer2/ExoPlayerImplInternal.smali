.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;",
        "Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;",
        "Lcom/google/android/exoplayer2/source/MediaSource$Listener;"
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xa

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x6

.field public static final MSG_LOADING_CHANGED:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x7

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x4

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x6

.field private static final MSG_RELEASE:I = 0x5

.field public static final MSG_SEEK_ACK:I = 0x3

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x8

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x5

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x4

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0x9

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private bufferAheadPeriodCount:I

.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private isTimelineEnded:Z

.field private isTimelineReady:Z

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;)V
    .locals 4
    .param p1, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p3, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p4, "playWhenReady"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "playbackInfo"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/Renderer;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/LoadControl;",
            "Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    .local p2, "trackSelector":Lcom/google/android/exoplayer2/trackselection/TrackSelector;, "Lcom/google/android/exoplayer2/trackselection/TrackSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 141
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 142
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 143
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 144
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 145
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 146
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 148
    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 150
    aget-object v1, p1, v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Renderer;->setIndex(I)V

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v2

    aput-object v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 154
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 155
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 156
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 157
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 161
    new-instance v1, Lcom/google/android/exoplayer2/util/PriorityHandlerThread;

    const-string v2, "ExoPlayerImplInternal:Handler"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 164
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    .line 165
    return-void
.end method

.method private attemptRestart(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 8
    .param p1, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "oldTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "oldPeriodIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 889
    const/4 v1, -0x1

    .line 890
    .local v1, "newPeriodIndex":I
    :goto_0
    if-ne v1, v7, :cond_0

    .line 891
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p3, v4, :cond_0

    .line 892
    add-int/lit8 p3, p3, 0x1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v5, 0x1

    .line 893
    invoke-virtual {p2, p3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 895
    :cond_0
    if-ne v1, v7, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    .line 916
    :goto_1
    return-void

    .line 902
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_2
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 904
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 905
    iput-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 906
    iput-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 907
    iput-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 910
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getDefaultPosition(I)Landroid/util/Pair;

    move-result-object v0

    .line 911
    .local v0, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 912
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 914
    .local v2, "newPlayingPositionUs":J
    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 915
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 902
    .end local v0    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v2    # "newPlayingPositionUs":J
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2
.end method

.method private doSomeWork()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 414
    .local v4, "operationStartTimeMs":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 415
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v10, :cond_0

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 418
    const-wide/16 v10, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 484
    :goto_0
    return-void

    .line 422
    :cond_0
    const-string v10, "doSomeWork"

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 425
    const/4 v2, 0x1

    .line 426
    .local v2, "allRenderersEnded":Z
    const/4 v3, 0x1

    .line 427
    .local v3, "allRenderersReadyOrEnded":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_6

    aget-object v8, v11, v10

    .line 431
    .local v8, "renderer":Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v8, v14, v15, v0, v1}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    .line 432
    if-eqz v2, :cond_3

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v2, 0x1

    .line 435
    :goto_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_1
    const/4 v9, 0x1

    .line 436
    .local v9, "rendererReadyOrEnded":Z
    :goto_3
    if-nez v9, :cond_2

    .line 437
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 439
    :cond_2
    if-eqz v3, :cond_5

    if-eqz v9, :cond_5

    const/4 v3, 0x1

    .line 427
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 432
    .end local v9    # "rendererReadyOrEnded":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 435
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 439
    .restart local v9    # "rendererReadyOrEnded":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 442
    .end local v8    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v9    # "rendererReadyOrEnded":Z
    :cond_6
    if-nez v3, :cond_7

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 446
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v11, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v10

    .line 447
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    .line 448
    .local v6, "playingPeriodDurationUs":J
    if-eqz v2, :cond_a

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v10

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v10, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v10, v6, v10

    if-gtz v10, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineEnded:Z

    if-eqz v10, :cond_a

    .line 452
    const/4 v10, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 469
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    .line 470
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v12, :cond_e

    aget-object v8, v11, v10

    .line 471
    .restart local v8    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 470
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 454
    .end local v8    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    .line 455
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v10, v10

    if-lez v10, :cond_b

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 456
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->haveSufficientBuffer(Z)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 457
    :goto_7
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 458
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v10, :cond_9

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    .line 456
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady:Z

    if-eqz v10, :cond_9

    goto :goto_7

    .line 462
    :cond_c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v10, v10

    if-lez v10, :cond_d

    if-nez v3, :cond_9

    .line 464
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 465
    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_5

    .line 462
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady:Z

    if-nez v10, :cond_9

    goto :goto_8

    .line 475
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_11

    .line 476
    :cond_10
    const-wide/16 v10, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 483
    :goto_9
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto/16 :goto_0

    .line 477
    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v10, v10

    if-eqz v10, :cond_12

    .line 478
    const-wide/16 v10, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 480
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9
.end method

.method private enableRenderers([ZI)V
    .locals 15
    .param p1, "rendererWasEnabledFlags"    # [Z
    .param p2, "enabledRendererCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    move/from16 v0, p2

    new-array v3, v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 1146
    const/16 p2, 0x0

    .line 1147
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v10, v3, :cond_7

    .line 1148
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v3, v10

    .line 1149
    .local v1, "renderer":Lcom/google/android/exoplayer2/Renderer;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v13

    .line 1150
    .local v13, "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v13, :cond_6

    .line 1151
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    add-int/lit8 v9, p2, 0x1

    .end local p2    # "enabledRendererCount":I
    .local v9, "enabledRendererCount":I
    aput-object v1, v3, p2

    .line 1152
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 1154
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v14, 0x1

    .line 1156
    .local v14, "playing":Z
    :goto_1
    aget-boolean v3, p1, v10

    if-nez v3, :cond_1

    if-eqz v14, :cond_1

    const/4 v6, 0x1

    .line 1158
    .local v6, "joining":Z
    :goto_2
    invoke-interface {v13}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    new-array v2, v3, [Lcom/google/android/exoplayer2/Format;

    .line 1159
    .local v2, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v3, v2

    if-ge v11, v3, :cond_2

    .line 1160
    invoke-interface {v13, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v11

    .line 1159
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1154
    .end local v2    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v6    # "joining":Z
    .end local v11    # "j":I
    .end local v14    # "playing":Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 1156
    .restart local v14    # "playing":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1163
    .restart local v2    # "formats":[Lcom/google/android/exoplayer2/Format;
    .restart local v6    # "joining":Z
    .restart local v11    # "j":I
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v10

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    invoke-interface/range {v1 .. v8}, Lcom/google/android/exoplayer2/Renderer;->enable([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V

    .line 1165
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v12

    .line 1166
    .local v12, "mediaClock":Lcom/google/android/exoplayer2/util/MediaClock;
    if-eqz v12, :cond_4

    .line 1167
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v3, :cond_3

    .line 1168
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Multiple renderer media clocks enabled."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    throw v3

    .line 1171
    :cond_3
    iput-object v12, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1172
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1175
    :cond_4
    if-eqz v14, :cond_5

    .line 1176
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .end local v2    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v6    # "joining":Z
    .end local v11    # "j":I
    .end local v12    # "mediaClock":Lcom/google/android/exoplayer2/util/MediaClock;
    .end local v14    # "playing":Z
    :cond_5
    move/from16 p2, v9

    .line 1147
    .end local v9    # "enabledRendererCount":I
    .restart local p2    # "enabledRendererCount":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1181
    .end local v1    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v13    # "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_7
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 673
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    .line 675
    :cond_0
    return-void
.end method

.method private getDefaultPosition(I)Landroid/util/Pair;
    .locals 8
    .param p1, "periodIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 920
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 921
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget p1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 922
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 923
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 924
    .local v2, "periodPositionUs":J
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 925
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 926
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationMs()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 928
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "periodIndex":I
    .local v0, "periodIndex":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move p1, v0

    .end local v0    # "periodIndex":I
    .restart local p1    # "periodIndex":I
    goto :goto_0

    .line 930
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "period"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 1073
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 4
    .param p1, "period"    # Lcom/google/android/exoplayer2/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1050
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared(JLcom/google/android/exoplayer2/LoadControl;)V

    .line 1055
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1058
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1059
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1061
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1063
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1064
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1065
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1067
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateTimelineState()V

    .line 1069
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handleSourceInfoRefreshed(Landroid/util/Pair;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    .local p1, "timelineAndManifest":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v13, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 803
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 804
    .local v6, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v12, :cond_6

    .line 808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v13, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 809
    .local v2, "index":I
    const/4 v12, -0x1

    if-ne v2, v12, :cond_1

    .line 810
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v13, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->attemptRestart(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;I)V

    .line 885
    .end local v2    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 816
    .restart local v2    # "index":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v14, 0x1

    invoke-virtual {v12, v2, v13, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 817
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v15, v15, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 821
    .local v8, "previousPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    const/4 v9, 0x0

    .line 822
    .local v9, "seenReadingPeriod":Z
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 823
    :goto_1
    iget-object v12, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v12, :cond_3

    .line 824
    iget-object v7, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 825
    .local v7, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    add-int/lit8 v2, v2, 0x1

    .line 826
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v14, 0x1

    invoke-virtual {v12, v2, v13, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 827
    iget-object v12, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v13, v13, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 828
    if-nez v9, :cond_2

    .line 831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v2, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 832
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 833
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 834
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 835
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 836
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v4

    .line 837
    .local v4, "newPositionUs":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v12, v4, v12

    if-eqz v12, :cond_0

    .line 838
    new-instance v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v12, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 839
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 845
    .end local v4    # "newPositionUs":J
    :cond_2
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 846
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 849
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 875
    .end local v2    # "index":I
    .end local v7    # "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    .end local v8    # "previousPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    .end local v9    # "seenReadingPeriod":Z
    :cond_3
    :goto_2
    if-eqz v6, :cond_0

    .line 876
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 878
    .local v3, "newPlayingIndex":I
    :goto_3
    const/4 v12, -0x1

    if-eq v3, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-eq v3, v12, :cond_0

    .line 880
    new-instance v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v14, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-direct {v12, v3, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 882
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 853
    .end local v3    # "newPlayingIndex":I
    .restart local v2    # "index":I
    .restart local v7    # "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    .restart local v8    # "previousPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    .restart local v9    # "seenReadingPeriod":Z
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 854
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v12, v2, v13}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v12

    iget v11, v12, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 855
    .local v11, "windowIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v13, v11, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v13

    invoke-virtual {v7, v12, v13, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v7, v12, :cond_5

    .line 857
    const/4 v9, 0x1

    .line 859
    :cond_5
    move-object v8, v7

    .line 860
    goto/16 :goto_1

    .line 861
    .end local v2    # "index":I
    .end local v7    # "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    .end local v8    # "previousPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    .end local v9    # "seenReadingPeriod":Z
    .end local v11    # "windowIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v12, :cond_3

    .line 862
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v10, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 863
    .local v10, "uid":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v12, v10}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 864
    .restart local v2    # "index":I
    const/4 v12, -0x1

    if-ne v2, v12, :cond_7

    .line 865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v13, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->attemptRestart(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;I)V

    goto/16 :goto_0

    .line 868
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v12, v2, v13}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v12

    iget v11, v12, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 869
    .restart local v11    # "windowIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v14, v11, v15}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;I)V

    goto/16 :goto_2

    .line 876
    .end local v2    # "index":I
    .end local v10    # "uid":Ljava/lang/Object;
    .end local v11    # "windowIndex":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    goto/16 :goto_3

    :cond_9
    const/4 v3, -0x1

    goto/16 :goto_3
.end method

.method private haveSufficientBuffer(Z)Z
    .locals 8
    .param p1, "rebuffering"    # Z

    .prologue
    .line 770
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v4, :cond_0

    .line 771
    const/4 v4, 0x0

    .line 784
    :goto_0
    return v4

    .line 773
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long v2, v4, v6

    .line 775
    .local v2, "loadingPeriodPositionUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    .line 777
    .local v0, "loadingPeriodBufferedPositionUs":J
    :goto_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 778
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v4, :cond_2

    .line 779
    const/4 v4, 0x1

    goto :goto_0

    .line 775
    .end local v0    # "loadingPeriodBufferedPositionUs":J
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 776
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_1

    .line 781
    .restart local v0    # "loadingPeriodBufferedPositionUs":J
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    .line 782
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 784
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    sub-long v6, v0, v2

    invoke-interface {v4, v6, v7, p1}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result v4

    goto :goto_0
.end method

.method private maybeContinueLoading()V
    .locals 13

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v12, 0x0

    .line 1080
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v6

    .line 1081
    .local v6, "nextLoadPositionUs":J
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 1082
    iget-wide v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long v4, v8, v10

    .line 1084
    .local v4, "loadingPeriodPositionUs":J
    sub-long v0, v6, v4

    .line 1085
    .local v0, "bufferedDurationUs":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v3, v0, v1}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result v2

    .line 1086
    .local v2, "continueLoading":Z
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1087
    if-eqz v2, :cond_0

    .line 1088
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-boolean v12, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    .line 1089
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 1096
    .end local v0    # "bufferedDurationUs":J
    .end local v2    # "continueLoading":Z
    .end local v4    # "loadingPeriodPositionUs":J
    :goto_0
    return-void

    .line 1091
    .restart local v0    # "bufferedDurationUs":J
    .restart local v2    # "continueLoading":Z
    .restart local v4    # "loadingPeriodPositionUs":J
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    goto :goto_0

    .line 1094
    .end local v0    # "bufferedDurationUs":J
    .end local v2    # "continueLoading":Z
    .end local v4    # "loadingPeriodPositionUs":J
    :cond_1
    invoke-direct {p0, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto :goto_0
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v1, v2, :cond_1

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 792
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_2

    .line 798
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    :goto_1
    return-void

    .line 791
    .restart local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1
.end method

.method private prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 5
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v4, 0x2

    .line 340
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    .line 342
    if-eqz p2, :cond_0

    .line 343
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 346
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 347
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    return-void
.end method

.method private releaseInternal()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v1, 0x1

    .line 613
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 615
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 616
    monitor-enter p0

    .line 617
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 618
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 619
    monitor-exit p0

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    .local p1, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 1100
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1101
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 1103
    :cond_0
    return-void
.end method

.method private reselectTracksInternal()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 684
    .local v12, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    const/16 v18, 0x1

    .line 686
    .local v18, "selectionsChangedForReadPeriod":Z
    :goto_1
    if-eqz v12, :cond_0

    iget-boolean v3, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_0

    .line 690
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 701
    if-eqz v18, :cond_d

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v3, v4, :cond_9

    const/4 v7, 0x1

    .line 704
    .local v7, "recreateStreams":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 708
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    new-array v8, v3, [Z

    .line 711
    .local v8, "streamResetFlags":[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JLcom/google/android/exoplayer2/LoadControl;Z[Z)J

    move-result-wide v14

    .line 713
    .local v14, "periodPositionUs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v3, v14, v4

    if-eqz v3, :cond_2

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v14, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 715
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 718
    :cond_2
    const/4 v2, 0x0

    .line 719
    .local v2, "enabledRendererCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    new-array v0, v3, [Z

    move-object/from16 v16, v0

    .line 720
    .local v16, "rendererWasEnabledFlags":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v9, v3, :cond_c

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v13, v3, v9

    .line 722
    .local v13, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v13}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    aput-boolean v3, v16, v9

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v17, v3, v9

    .line 724
    .local v17, "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    if-eqz v17, :cond_3

    .line 725
    add-int/lit8 v2, v2, 0x1

    .line 727
    :cond_3
    aget-boolean v3, v16, v9

    if-eqz v3, :cond_6

    .line 728
    invoke-interface {v13}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v3

    move-object/from16 v0, v17

    if-eq v0, v3, :cond_b

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v13, v3, :cond_5

    .line 732
    if-nez v17, :cond_4

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 737
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 738
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 740
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 741
    invoke-interface {v13}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 720
    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 694
    .end local v2    # "enabledRendererCount":I
    .end local v7    # "recreateStreams":Z
    .end local v8    # "streamResetFlags":[Z
    .end local v9    # "i":I
    .end local v13    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v14    # "periodPositionUs":J
    .end local v16    # "rendererWasEnabledFlags":[Z
    .end local v17    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v12, v3, :cond_8

    .line 696
    const/16 v18, 0x0

    .line 698
    :cond_8
    iget-object v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto/16 :goto_1

    .line 703
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 722
    .restart local v2    # "enabledRendererCount":I
    .restart local v7    # "recreateStreams":Z
    .restart local v8    # "streamResetFlags":[Z
    .restart local v9    # "i":I
    .restart local v13    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .restart local v14    # "periodPositionUs":J
    .restart local v16    # "rendererWasEnabledFlags":[Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 742
    .restart local v17    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_b
    aget-boolean v3, v8, v9

    if-eqz v3, :cond_6

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-interface {v13, v4, v5}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    goto :goto_5

    .line 748
    .end local v13    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v17    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Lcom/google/android/exoplayer2/trackselection/TrackSelections;)V

    .line 749
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 764
    .end local v2    # "enabledRendererCount":I
    .end local v7    # "recreateStreams":Z
    .end local v8    # "streamResetFlags":[Z
    .end local v9    # "i":I
    .end local v14    # "periodPositionUs":J
    .end local v16    # "rendererWasEnabledFlags":[Z
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 752
    :cond_d
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v12, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 754
    :goto_7
    if-eqz v12, :cond_e

    .line 755
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 756
    iget-object v12, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 757
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    goto :goto_7

    .line 759
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 760
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 762
    .local v10, "loadingPeriodPositionUs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v11, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JLcom/google/android/exoplayer2/LoadControl;Z)J

    goto :goto_6
.end method

.method private resetInternal()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 623
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 625
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 626
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 627
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 628
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 630
    .local v1, "renderer":Lcom/google/android/exoplayer2/Renderer;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 631
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->disable()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    new-array v2, v3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 638
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_3
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 640
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 642
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 644
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady:Z

    .line 645
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineEnded:Z

    .line 646
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 647
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 648
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 649
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 650
    iput v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 651
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 652
    return-void

    .line 638
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_3

    .line 632
    .restart local v1    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private resetRendererPosition(J)V
    .locals 9
    .param p1, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_0

    const-wide/16 v0, 0x0

    .line 599
    .local v0, "periodOffsetUs":J
    :goto_0
    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 600
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 601
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 602
    .local v2, "renderer":Lcom/google/android/exoplayer2/Renderer;
    iget-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v2, v6, v7}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    .line 601
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 597
    .end local v0    # "periodOffsetUs":J
    .end local v2    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    goto :goto_0

    .line 604
    .restart local v0    # "periodOffsetUs":J
    :cond_1
    return-void
.end method

.method private scheduleNextWork(JJ)V
    .locals 7
    .param p1, "thisOperationStartTimeMs"    # J
    .param p3, "intervalMs"    # J

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v6, 0x2

    .line 487
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    add-long v2, p1, p3

    .line 489
    .local v2, "nextOperationStartTimeMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 490
    .local v0, "nextOperationDelayMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 491
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(IJ)V
    .locals 10
    .param p1, "periodIndex"    # I
    .param p2, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x3

    .line 499
    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 500
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 502
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getDefaultPosition(I)Landroid/util/Pair;

    move-result-object v0

    .line 503
    .local v0, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 504
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 507
    .end local v0    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-ne p1, v1, :cond_3

    cmp-long v1, p2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    :cond_1
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 515
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 516
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v1, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 518
    :goto_0
    return-void

    .line 513
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p2

    .line 515
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 516
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v1, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v1

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 516
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v2, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    throw v1
.end method

.method private seekToPeriodPosition(IJ)J
    .locals 8
    .param p1, "periodIndex"    # I
    .param p2, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v5, :cond_1

    .line 523
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p2, v6

    if-eqz v5, :cond_0

    .line 524
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_0
    move-wide v2, p2

    .line 593
    .end local p2    # "periodPositionUs":J
    .local v2, "periodPositionUs":J
    :goto_0
    return-wide v2

    .line 529
    .end local v2    # "periodPositionUs":J
    .restart local p2    # "periodPositionUs":J
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 530
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 531
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 533
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p2, v6

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-eq p1, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ne p1, v5, :cond_3

    .line 538
    :cond_2
    const/4 p1, -0x1

    .line 541
    :cond_3
    const/4 v0, 0x0

    .line 542
    .local v0, "newPlayingPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v5, :cond_5

    .line 544
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v5, :cond_4

    .line 545
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 561
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v0, v5, :cond_8

    .line 562
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v4, v6, v5

    .line 563
    .local v4, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 562
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 549
    .end local v4    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 550
    .local v1, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    :goto_2
    if-eqz v1, :cond_4

    .line 551
    iget v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ne v5, p1, :cond_6

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v5, :cond_6

    .line 552
    move-object v0, v1

    .line 556
    :goto_3
    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    .line 554
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    goto :goto_3

    .line 565
    .end local v1    # "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    :cond_7
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 566
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 567
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 571
    :cond_8
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 572
    if-eqz v0, :cond_b

    .line 573
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 574
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 575
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateTimelineState()V

    .line 576
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 577
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 578
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v5, :cond_9

    .line 579
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v5, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 581
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 582
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 591
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 592
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-wide v2, p2

    .line 593
    .end local p2    # "periodPositionUs":J
    .restart local v2    # "periodPositionUs":J
    goto/16 :goto_0

    .line 584
    .end local v2    # "periodPositionUs":J
    .restart local p2    # "periodPositionUs":J
    :cond_b
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 585
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 586
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 587
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p2, v6

    if-eqz v5, :cond_a

    .line 588
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_4
.end method

.method private sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 6
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 657
    .local v0, "message":Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v0    # "message":Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 664
    :cond_1
    monitor-enter p0

    .line 665
    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 666
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 667
    monitor-exit p0

    .line 669
    return-void

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 664
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 665
    :try_start_2
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 666
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 667
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private setIsLoading(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v1, 0x0

    .line 332
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 333
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    .line 334
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 334
    goto :goto_0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v2, 0x2

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 353
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 354
    if-nez p1, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 361
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    .local p1, "periodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    const/4 v8, 0x0

    .line 1107
    const/4 v0, 0x0

    .line 1108
    .local v0, "enabledRendererCount":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    new-array v4, v5, [Z

    .line 1109
    .local v4, "rendererWasEnabledFlags":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 1110
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v3, v5, v1

    .line 1111
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    aput-boolean v5, v4, v1

    .line 1112
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 1113
    .local v2, "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v2, :cond_2

    .line 1115
    add-int/lit8 v0, v0, 0x1

    .line 1109
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .end local v2    # "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1116
    .restart local v2    # "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_2
    aget-boolean v5, v4, v1

    if-eqz v5, :cond_0

    .line 1118
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v3, v5, :cond_3

    .line 1120
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 1121
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1122
    iput-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1124
    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1125
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    goto :goto_2

    .line 1129
    .end local v2    # "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Lcom/google/android/exoplayer2/trackselection/TrackSelections;)V

    .line 1130
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1131
    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 1132
    return-void
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 325
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 326
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v1, 0x0

    .line 368
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 369
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 370
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 371
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 1

    .prologue
    .line 607
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 610
    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 377
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 378
    .local v0, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private updatePeriods()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v4, :cond_1

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1047
    :cond_0
    return-void

    .line 940
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 941
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    .line 944
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    move/from16 v16, v0

    .line 946
    .local v16, "newLoadingPeriodIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    move/from16 v0, v16

    if-lt v0, v4, :cond_7

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 982
    .end local v16    # "newLoadingPeriodIndex":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 983
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 988
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_0

    .line 994
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_e

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1000
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 1001
    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 944
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/lit8 v16, v4, 0x1

    goto/16 :goto_0

    .line 950
    .restart local v16    # "newLoadingPeriodIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v0, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v22, v0

    .line 951
    .local v22, "windowIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 952
    move/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_a

    const/4 v14, 0x1

    .line 953
    .local v14, "isFirstPeriodInWindow":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v10, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 955
    .local v10, "periodStartPositionUs":J
    :goto_5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v10, v4

    if-nez v4, :cond_8

    .line 958
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getDefaultPosition(I)Landroid/util/Pair;

    move-result-object v2

    .line 959
    .local v2, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 960
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 962
    .end local v2    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-object v9, v4, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 963
    .local v9, "newPeriodUid":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 964
    invoke-interface {v5}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v5

    .line 963
    move/from16 v0, v16

    invoke-interface {v4, v0, v5, v10, v11}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v8

    .line 965
    .local v8, "newMediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    move-object/from16 v0, p0

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V

    .line 966
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/lang/Object;J)V

    .line 969
    .local v3, "newPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_9

    .line 972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setNext(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v7, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v23, v0

    .line 974
    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 976
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bufferAheadPeriodCount:I

    .line 977
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 978
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto/16 :goto_1

    .line 952
    .end local v3    # "newPeriodHolder":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder<TT;>;"
    .end local v8    # "newMediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    .end local v9    # "newPeriodUid":Ljava/lang/Object;
    .end local v10    # "periodStartPositionUs":J
    .end local v14    # "isFirstPeriodInWindow":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 953
    .restart local v14    # "isFirstPeriodInWindow":Z
    :cond_b
    if-eqz v14, :cond_c

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    :cond_c
    const-wide/16 v10, 0x0

    goto/16 :goto_5

    .line 984
    .end local v14    # "isFirstPeriodInWindow":Z
    .end local v16    # "newLoadingPeriodIndex":I
    .end local v22    # "windowIndex":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    if-eqz v4, :cond_5

    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto/16 :goto_2

    .line 1006
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateTimelineState()V

    .line 1008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v4, :cond_f

    .line 1010
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_0

    aget-object v21, v5, v4

    .line 1011
    .local v21, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface/range {v21 .. v21}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamIsFinal()V

    .line 1010
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1016
    .end local v21    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v6, :cond_10

    aget-object v21, v5, v4

    .line 1017
    .restart local v21    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface/range {v21 .. v21}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1016
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1021
    .end local v21    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_0

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    move-result-object v20

    .line 1023
    .local v20, "oldTrackSelections":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    move-result-object v18

    .line 1025
    .local v18, "newTrackSelections":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<TT;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v13, v4, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v21, v4, v13

    .line 1027
    .restart local v21    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v19

    .line 1028
    .local v19, "oldSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v17

    .line 1029
    .local v17, "newSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v19, :cond_12

    .line 1030
    if-eqz v17, :cond_13

    .line 1033
    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    new-array v12, v4, [Lcom/google/android/exoplayer2/Format;

    .line 1034
    .local v12, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_9
    array-length v4, v12

    if-ge v15, v4, :cond_11

    .line 1035
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v12, v15

    .line 1034
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1037
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v6, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    move-object/from16 v0, v21

    invoke-interface {v0, v12, v4, v6, v7}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    .line 1025
    .end local v12    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v15    # "j":I
    :cond_12
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 1042
    :cond_13
    invoke-interface/range {v21 .. v21}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamIsFinal()V

    goto :goto_a
.end method

.method private updatePlaybackPositions()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 383
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v6, :cond_0

    .line 409
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 389
    .local v2, "periodPositionUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 390
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 400
    :goto_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v2, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 404
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v6

    if-nez v6, :cond_4

    move-wide v0, v4

    .line 406
    .local v0, "bufferedPositionUs":J
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 407
    invoke-virtual {v4, v5, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .end local v0    # "bufferedPositionUs":J
    :cond_1
    iput-wide v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    goto :goto_0

    .line 392
    :cond_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v6

    if-nez v6, :cond_3

    .line 393
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 394
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v6, v8, v9}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 398
    :goto_3
    iget-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long v2, v6, v8

    goto :goto_1

    .line 396
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    goto :goto_3

    .line 404
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 405
    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_2
.end method

.method private updateTimelineState()V
    .locals 5

    .prologue
    .line 1135
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    .line 1136
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 1137
    .local v0, "playingPeriodDurationUs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady:Z

    .line 1140
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineEnded:Z

    .line 1141
    return-void

    .line 1137
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 4
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 194
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Ignoring messages sent after release."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 199
    .local v1, "messageNumber":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 200
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v1, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "messageNumber":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 255
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 318
    :goto_0
    return v1

    .line 257
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    move v1, v2

    .line 258
    goto :goto_0

    .line 261
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v1, v2

    .line 262
    goto :goto_0

    .line 265
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    move v1, v2

    .line 266
    goto :goto_0

    .line 269
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(IJ)V

    move v1, v2

    .line 270
    goto :goto_0

    .line 273
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 274
    goto :goto_0

    .line 277
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    move v1, v2

    .line 278
    goto :goto_0

    .line 281
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 282
    goto :goto_0

    .line 285
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroid/util/Pair;)V

    move v1, v2

    .line 286
    goto :goto_0

    .line 289
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 290
    goto :goto_0

    .line 293
    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    move v1, v2

    .line 294
    goto :goto_0

    .line 297
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    check-cast v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    .line 298
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Renderer error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 306
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 307
    goto :goto_0

    .line 308
    .end local v0    # "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 312
    goto/16 :goto_0

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 317
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 318
    goto/16 :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 240
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 235
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 228
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .prologue
    .line 247
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 210
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 216
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 210
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 221
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public seekTo(IJ)V
    .locals 4
    .param p1, "periodIndex"    # I
    .param p2, "positionUs"    # J

    .prologue
    .line 177
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 185
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 4
    .param p1, "playWhenReady"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 174
    return-void

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 181
    .local p0, "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;, "Lcom/google/android/exoplayer2/ExoPlayerImplInternal<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method
