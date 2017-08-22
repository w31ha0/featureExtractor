.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_FIXED_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_PREFER_MANIFEST_MS:J = -0x1L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final NOTIFY_MANIFEST_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private elapsedRealtimeOffsetMs:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private final livePresentationDelayMs:J

.field private loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private manifestLoadEndTimestamp:J

.field private manifestLoadStartTimestamp:J

.field private final manifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private final minLoadableRetryCount:I

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 3
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "livePresentationDelayMs"    # J
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 122
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 123
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 124
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    .line 125
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    .line 126
    new-instance v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 127
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->generateContentId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 10
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 112
    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest()V

    return-void
.end method

.method private generateContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNowUnixTimeUs()J
    .locals 4

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    .line 467
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 333
    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifestAndScheduleRefresh()V

    .line 336
    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .locals 1
    .param p1, "elapsedRealtimeOffsetMs"    # J

    .prologue
    .line 328
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 329
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifestAndScheduleRefresh()V

    .line 330
    return-void
.end method

.method private processManifest()V
    .locals 52

    .prologue
    .line 345
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    move/from16 v0, v26

    if-ge v0, v7, :cond_1

    .line 346
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    .line 347
    .local v27, "id":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move/from16 v0, v27

    if-lt v0, v7, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v11, v27, v11

    invoke-virtual {v7, v8, v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 345
    :cond_0
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 354
    .end local v27    # "id":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v7

    add-int/lit8 v29, v7, -0x1

    .line 357
    .local v29, "lastPeriodIndex":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v11, 0x0

    .line 358
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v48

    .line 357
    move-wide/from16 v0, v48

    invoke-static {v7, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v19

    .line 359
    .local v19, "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 360
    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v48

    .line 359
    move-wide/from16 v0, v48

    invoke-static {v7, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v30

    .line 362
    .local v30, "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    move-object/from16 v0, v19

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 363
    .local v12, "currentStartTimeUs":J
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    move-wide/from16 v20, v0

    .line 364
    .local v20, "currentEndTimeUs":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v7, :cond_4

    move-object/from16 v0, v30

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    if-nez v7, :cond_4

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getNowUnixTimeUs()J

    move-result-wide v48

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v50

    sub-long v32, v48, v50

    .line 368
    .local v32, "liveStreamDurationUs":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 369
    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v7

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v48

    sub-long v34, v32, v48

    .line 370
    .local v34, "liveStreamEndPositionInLastPeriodUs":J
    move-wide/from16 v0, v34

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 371
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-wide/from16 v48, v0

    const-wide v50, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v48, v50

    if-eqz v7, :cond_3

    .line 372
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v44

    .line 373
    .local v44, "timeShiftBufferDepthUs":J
    sub-long v36, v20, v44

    .line 374
    .local v36, "offsetInPeriodUs":J
    move/from16 v40, v29

    .line 375
    .local v40, "periodIndex":I
    :goto_1
    const-wide/16 v48, 0x0

    cmp-long v7, v36, v48

    if-gez v7, :cond_2

    if-lez v40, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v48

    add-long v36, v36, v48

    goto :goto_1

    .line 378
    :cond_2
    if-nez v40, :cond_5

    .line 379
    move-wide/from16 v0, v36

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 387
    .end local v36    # "offsetInPeriodUs":J
    .end local v40    # "periodIndex":I
    .end local v44    # "timeShiftBufferDepthUs":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v48, 0x1388

    move-wide/from16 v0, v48

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    .end local v32    # "liveStreamDurationUs":J
    .end local v34    # "liveStreamEndPositionInLastPeriodUs":J
    :cond_4
    sub-long v14, v20, v12

    .line 390
    .local v14, "windowDurationUs":J
    const/16 v26, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v26

    if-ge v0, v7, :cond_6

    .line 391
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v48

    add-long v14, v14, v48

    .line 390
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 383
    .end local v14    # "windowDurationUs":J
    .restart local v32    # "liveStreamDurationUs":J
    .restart local v34    # "liveStreamEndPositionInLastPeriodUs":J
    .restart local v36    # "offsetInPeriodUs":J
    .restart local v40    # "periodIndex":I
    .restart local v44    # "timeShiftBufferDepthUs":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v12

    goto :goto_2

    .line 393
    .end local v32    # "liveStreamDurationUs":J
    .end local v34    # "liveStreamEndPositionInLastPeriodUs":J
    .end local v36    # "offsetInPeriodUs":J
    .end local v40    # "periodIndex":I
    .end local v44    # "timeShiftBufferDepthUs":J
    .restart local v14    # "windowDurationUs":J
    :cond_6
    const-wide/16 v16, 0x0

    .line 394
    .local v16, "windowDefaultStartPositionUs":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v7, :cond_b

    .line 395
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    move-wide/from16 v42, v0

    .line 396
    .local v42, "presentationDelayForManifestMs":J
    const-wide/16 v48, -0x1

    cmp-long v7, v42, v48

    if-nez v7, :cond_7

    .line 397
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-wide/from16 v48, v0

    const-wide v50, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v48, v50

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-wide/from16 v42, v0

    .line 401
    :cond_7
    :goto_4
    invoke-static/range {v42 .. v43}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v48

    sub-long v24, v14, v48

    .line 402
    .local v24, "defaultStartPositionUs":J
    const-wide/32 v48, 0x4c4b40

    cmp-long v7, v24, v48

    if-gez v7, :cond_8

    .line 406
    const-wide/32 v48, 0x4c4b40

    const-wide/16 v50, 0x2

    div-long v50, v14, v50

    invoke-static/range {v48 .. v51}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v24

    .line 409
    :cond_8
    const/16 v40, 0x0

    .line 410
    .restart local v40    # "periodIndex":I
    add-long v22, v12, v24

    .line 411
    .local v22, "defaultStartPositionInPeriodUs":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v38

    .line 412
    .local v38, "periodDurationUs":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v40

    if-ge v0, v7, :cond_a

    cmp-long v7, v22, v38

    if-ltz v7, :cond_a

    .line 414
    sub-long v22, v22, v38

    .line 415
    add-int/lit8 v40, v40, 0x1

    .line 416
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v38

    goto :goto_5

    .line 397
    .end local v22    # "defaultStartPositionInPeriodUs":J
    .end local v24    # "defaultStartPositionUs":J
    .end local v38    # "periodDurationUs":J
    .end local v40    # "periodIndex":I
    :cond_9
    const-wide/16 v42, 0x7530

    goto :goto_4

    .line 418
    .restart local v22    # "defaultStartPositionInPeriodUs":J
    .restart local v24    # "defaultStartPositionUs":J
    .restart local v38    # "periodDurationUs":J
    .restart local v40    # "periodIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v31

    .line 419
    .local v31, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    const/4 v7, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v46

    .line 420
    .local v46, "videoAdaptationSetIndex":I
    const/4 v7, -0x1

    move/from16 v0, v46

    if-eq v0, v7, :cond_c

    .line 423
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 424
    move/from16 v0, v46

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v28

    .line 425
    .local v28, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    move-wide/from16 v3, v38

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v41

    .line 426
    .local v41, "segmentNum":I
    sub-long v48, v24, v22

    .line 427
    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v50

    add-long v16, v48, v50

    .line 432
    .end local v22    # "defaultStartPositionInPeriodUs":J
    .end local v24    # "defaultStartPositionUs":J
    .end local v28    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v31    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v38    # "periodDurationUs":J
    .end local v40    # "periodIndex":I
    .end local v41    # "segmentNum":I
    .end local v42    # "presentationDelayForManifestMs":J
    .end local v46    # "videoAdaptationSetIndex":I
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v8, 0x0

    .line 433
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v7

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v50, v0

    add-long v48, v48, v50

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v50

    add-long v9, v48, v50

    .line 434
    .local v9, "windowStartTimeMs":J
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v18, v0

    invoke-direct/range {v6 .. v18}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V

    .line 437
    .local v6, "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-interface {v7, v6, v8}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 438
    return-void

    .line 429
    .end local v6    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .end local v9    # "windowStartTimeMs":J
    .restart local v22    # "defaultStartPositionInPeriodUs":J
    .restart local v24    # "defaultStartPositionUs":J
    .restart local v31    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .restart local v38    # "periodDurationUs":J
    .restart local v40    # "periodIndex":I
    .restart local v42    # "presentationDelayForManifestMs":J
    .restart local v46    # "videoAdaptationSetIndex":I
    :cond_c
    move-wide/from16 v16, v24

    goto :goto_6
.end method

.method private processManifestAndScheduleRefresh()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest()V

    .line 340
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh()V

    .line 341
    return-void
.end method

.method private resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 3
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    .line 299
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_0

    .line 303
    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 304
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_0

    .line 308
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported UTC timing scheme"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 6
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 315
    .local v2, "utcTimestamp":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    sub-long v4, v2, v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v2    # "utcTimestamp":J
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 4
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "parser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<Ljava/lang/Long;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 325
    return-void
.end method

.method private scheduleManifestRefresh()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 441
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v6, :cond_0

    .line 455
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    .line 445
    .local v2, "minUpdatePeriod":J
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    .line 450
    const-wide/16 v2, 0x1388

    .line 452
    :cond_1
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    add-long v4, v6, v2

    .line 453
    .local v4, "nextLoadTimestamp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v4, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 454
    .local v0, "delayUntilNextLoad":J
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V
    .locals 5
    .param p3, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
            "<",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;"
    .local p2, "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 460
    .local v0, "elapsedRealtimeMs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    .line 461
    return-void
.end method

.method private startLoadingManifest()V
    .locals 5

    .prologue
    .line 290
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 292
    .local v0, "manifestUri":Landroid/net/Uri;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 295
    return-void

    .line 292
    .end local v0    # "manifestUri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 12
    .param p1, "index"    # I
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 174
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLoadableRetryCount:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    move v4, p1

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 177
    .local v1, "mediaPeriod":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    return-object v1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 170
    return-void
.end method

.method onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<*>;JJ)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<*>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 283
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 282
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 284
    return-void
.end method

.method onManifestLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 18
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 210
    invoke-virtual/range {v5 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 214
    .local v4, "newManifest":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    if-nez v5, :cond_0

    const/16 v16, 0x0

    .line 215
    .local v16, "periodCount":I
    :goto_0
    const/16 v17, 0x0

    .line 216
    .local v17, "removedPeriodCount":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v14, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    .line 217
    .local v14, "newFirstPeriodStartTimeMs":J
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 218
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v5, v6, v14

    if-gez v5, :cond_1

    .line 219
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 214
    .end local v14    # "newFirstPeriodStartTimeMs":J
    .end local v16    # "periodCount":I
    .end local v17    # "removedPeriodCount":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v16

    goto :goto_0

    .line 226
    .restart local v14    # "newFirstPeriodStartTimeMs":J
    .restart local v16    # "periodCount":I
    .restart local v17    # "removedPeriodCount":I
    :cond_1
    sub-int v5, v16, v17

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 227
    const-string v5, "DashMediaSource"

    const-string v6, "Out of sync manifest"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh()V

    .line 255
    :goto_2
    return-void

    .line 232
    :cond_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 233
    sub-long v6, p2, p4

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    .line 234
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    .line 235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v5, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v6

    .line 239
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v5, v7, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 242
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_4
    if-nez v16, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v5, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_2

    .line 242
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 249
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifestAndScheduleRefresh()V

    goto :goto_2

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifestAndScheduleRefresh()V

    goto :goto_2
.end method

.method onManifestLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 260
    .local v13, "isFatal":Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 261
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 260
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 262
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onUtcTimestampLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 268
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 267
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 269
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    .line 270
    return-void
.end method

.method onUtcTimestampLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 275
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    const/4 v13, 0x1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 274
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 276
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 277
    const/4 v2, 0x2

    return v2
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:DashMediaSource"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    .line 165
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 183
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    .line 184
    .local v0, "dashMediaPeriod":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->release()V

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 186
    return-void
.end method

.method public releaseSource()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 190
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 193
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 195
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestamp:J

    .line 196
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestamp:J

    .line 197
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 202
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 204
    return-void
.end method

.method public replaceManifestUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "manifestUri"    # Landroid/net/Uri;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
