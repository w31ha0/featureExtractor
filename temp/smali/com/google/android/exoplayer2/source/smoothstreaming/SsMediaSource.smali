.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaSource;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final livePresentationDelayMs:J

.field private manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final manifestParser:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 3
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "livePresentationDelayMs"    # J
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    .end local p1    # "manifestUri":Landroid/net/Uri;
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 98
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 99
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 100
    iput p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    .line 101
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 105
    return-void

    .line 96
    .restart local p1    # "manifestUri":Landroid/net/Uri;
    :cond_0
    const-string v0, "Manifest"

    .line 97
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 10
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 87
    const/4 v5, 0x3

    const-wide/16 v6, 0x7530

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private scheduleManifestRefresh()V
    .locals 8

    .prologue
    .line 223
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v4, :cond_0

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 227
    .local v2, "nextLoadTimestamp":J
    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 228
    .local v0, "delayUntilNextLoad":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startLoadingManifest()V
    .locals 7

    .prologue
    .line 237
    new-instance v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 239
    .local v2, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    invoke-virtual {v3, v2, p0, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 240
    .local v0, "elapsedRealtimeMs":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    .line 241
    return-void
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 7
    .param p1, "index"    # I
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 125
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 126
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 128
    .local v0, "period":Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-object v0

    .line 125
    .end local v0    # "period":Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 121
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 44
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 208
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 207
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 209
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 44
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 18
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 159
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 162
    sub-long v4, p2, p4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 163
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    .line 163
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 167
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v4, :cond_6

    .line 168
    const-wide v8, 0x7fffffffffffffffL

    .line 169
    .local v8, "startTimeUs":J
    const-wide/high16 v14, -0x8000000000000000L

    .line 170
    .local v14, "endTimeUs":J
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v4, v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v2, v4, v16

    .line 172
    .local v2, "element":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v4, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lez v4, :cond_1

    .line 173
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 174
    iget v4, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    iget v12, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v12, v12, -0x1

    .line 175
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v12

    add-long/2addr v4, v12

    .line 174
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 170
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "element":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v8, v4

    if-nez v4, :cond_3

    .line 179
    new-instance v3, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    invoke-direct {v3, v4, v5, v12}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    .line 200
    .end local v8    # "startTimeUs":J
    .end local v14    # "endTimeUs":J
    .local v3, "timeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-interface {v4, v3, v5}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V

    .line 202
    return-void

    .line 181
    .end local v3    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v8    # "startTimeUs":J
    .restart local v14    # "endTimeUs":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v12

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    sub-long v4, v14, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 185
    :cond_4
    sub-long v6, v14, v8

    .line 186
    .local v6, "durationUs":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    sub-long v10, v6, v4

    .line 187
    .local v10, "defaultStartPositionUs":J
    const-wide/32 v4, 0x4c4b40

    cmp-long v4, v10, v4

    if-gez v4, :cond_5

    .line 191
    const-wide/32 v4, 0x4c4b40

    const-wide/16 v12, 0x2

    div-long v12, v6, v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 193
    :cond_5
    new-instance v3, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .restart local v3    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    goto :goto_2

    .line 197
    .end local v3    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v6    # "durationUs":J
    .end local v8    # "startTimeUs":J
    .end local v10    # "defaultStartPositionUs":J
    .end local v14    # "endTimeUs":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v12

    if-eqz v4, :cond_7

    const/16 v17, 0x1

    .line 198
    .local v17, "isSeekable":Z
    :goto_3
    new-instance v3, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    move/from16 v0, v17

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    .restart local v3    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    goto :goto_2

    .line 197
    .end local v3    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v17    # "isSeekable":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 44
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 215
    .local v13, "isFatal":Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 216
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 215
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 217
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 113
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:Manifest"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 115
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    .line 116
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "period"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 134
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->release()V

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public releaseSource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 141
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 142
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 146
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 152
    :cond_1
    return-void
.end method
