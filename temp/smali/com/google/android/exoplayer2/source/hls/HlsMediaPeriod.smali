.class final Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;",
        "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;"
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingHandler:Landroid/os/Handler;

.field private final continueLoadingRunnable:Ljava/lang/Runnable;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private durationUs:J

.field private enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private isLive:Z

.field private final manifestFetcher:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final manifestParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

.field private final manifestUri:Landroid/net/Uri;

.field private final minLoadableRetryCount:I

.field private pendingPrepareCount:I

.field private playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

.field private final preparePositionUs:J

.field private sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private seenFirstTrackSelection:Z

.field private sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

.field private final sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;J)V
    .locals 3
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p5, "sourceListener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;
    .param p6, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p7, "positionUs"    # J

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestUri:Landroid/net/Uri;

    .line 84
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 85
    iput p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    .line 86
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 87
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 88
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 89
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:ManifestFetcher"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 94
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$1;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingRunnable:Ljava/lang/Runnable;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    return-object v0
.end method

.method private buildAndPrepareSampleStreamWrappers()V
    .locals 24

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 325
    .local v4, "baseUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v2, :cond_1

    .line 326
    const/4 v2, 0x1

    new-array v5, v2, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 327
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->createMediaPlaylistHlsUrl(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v3

    aput-object v3, v5, v2

    .line 328
    .local v5, "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    const/4 v2, 0x1

    new-array v8, v2, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 329
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(ILjava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v2

    aput-object v2, v8, v9

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 330
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 392
    .end local v5    # "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_0
    return-void

    .line 335
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 338
    .local v18, "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .local v20, "selectedVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v16, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v15, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 342
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 343
    .local v23, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->height:I

    if-gtz v2, :cond_2

    const-string v2, "avc"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_3
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 345
    :cond_4
    const-string v2, "mp4a"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    .end local v23    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 353
    move-object/from16 v20, v16

    .line 361
    :cond_6
    :goto_2
    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 362
    .local v12, "audioVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    move-object/from16 v21, v0

    .line 363
    .local v21, "subtitleVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 364
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 365
    const/4 v13, 0x0

    .line 366
    .local v13, "currentWrapperIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 367
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 368
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 369
    .restart local v5    # "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 370
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(ILjava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v19

    .line 372
    .local v19, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "currentWrapperIndex":I
    .local v14, "currentWrapperIndex":I
    aput-object v19, v2, v13

    .line 373
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    move v13, v14

    .line 377
    .end local v5    # "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v14    # "currentWrapperIndex":I
    .end local v19    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v13    # "currentWrapperIndex":I
    :cond_7
    const/16 v17, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_a

    .line 378
    const/4 v7, 0x1

    const/4 v2, 0x1

    new-array v9, v2, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v3, 0x0

    .line 379
    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v2, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v8, v4

    .line 378
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(ILjava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v19

    .line 380
    .restart local v19    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "currentWrapperIndex":I
    .restart local v14    # "currentWrapperIndex":I
    aput-object v19, v2, v13

    .line 381
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 377
    add-int/lit8 v17, v17, 0x1

    move v13, v14

    .end local v14    # "currentWrapperIndex":I
    .restart local v13    # "currentWrapperIndex":I
    goto :goto_4

    .line 354
    .end local v12    # "audioVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .end local v13    # "currentWrapperIndex":I
    .end local v19    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v21    # "subtitleVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 357
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 363
    .restart local v12    # "audioVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v21    # "subtitleVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 385
    .restart local v13    # "currentWrapperIndex":I
    :cond_a
    const/16 v17, 0x0

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 386
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 387
    .local v22, "url":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    const/4 v7, 0x3

    const/4 v2, 0x1

    new-array v9, v2, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v2, 0x0

    aput-object v22, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v8, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(ILjava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v19

    .line 389
    .restart local v19    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareSingleTrack(Lcom/google/android/exoplayer2/Format;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "currentWrapperIndex":I
    .restart local v14    # "currentWrapperIndex":I
    aput-object v19, v2, v13

    .line 385
    add-int/lit8 v17, v17, 0x1

    move v13, v14

    .end local v14    # "currentWrapperIndex":I
    .restart local v13    # "currentWrapperIndex":I
    goto :goto_5
.end method

.method private buildSampleStreamWrapper(ILjava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .locals 12
    .param p1, "trackType"    # I
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "variants"    # [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p4, "muxedAudioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "muxedCaptionFormat"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    .line 397
    .local v0, "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v4, p2, p3, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;)V

    .line 399
    .local v4, "defaultChunkSource":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    iget v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move v2, p1

    move-object v3, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v1
.end method

.method private static variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z
    .locals 7
    .param p0, "variant"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 407
    .local v2, "codecs":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v3

    .line 410
    :cond_1
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "codecArray":[Ljava/lang/String;
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 412
    .local v0, "codec":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    const/4 v3, 0x1

    goto :goto_0

    .line 411
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 226
    const-wide v0, 0x7fffffffffffffffL

    .line 227
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_1

    aget-object v4, v8, v5

    .line 228
    .local v4, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getBufferedPositionUs()J

    move-result-wide v2

    .line 229
    .local v2, "rendererBufferedPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_0

    .line 230
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 227
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "rendererBufferedPositionUs":J
    .end local v4    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 131
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 128
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 1
    .param p1, "sampleStreamWrapper"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public onContinueLoadingRequiredInMs(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;J)V
    .locals 2
    .param p1, "sampleStreamWrapper"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .param p2, "delayMs"    # J

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

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
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 262
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 261
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 263
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 253
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 252
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 254
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 255
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers()V

    .line 256
    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

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
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 269
    .local v13, "isFatal":Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 270
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 269
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 271
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepared()V
    .locals 20

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v4, :cond_0

    .line 304
    :goto_0
    return-void

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getDurationUs()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->durationUs:J

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isLive()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->isLive:Z

    .line 286
    const/4 v15, 0x0

    .line 287
    .local v15, "totalTrackGroupCount":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v14, v5, v4

    .line 288
    .local v14, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v15, v7

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 290
    .end local v14    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1
    new-array v0, v15, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v16, v0

    .line 291
    .local v16, "trackGroupArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/16 v17, 0x0

    .line 292
    .local v17, "trackGroupIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v14, v5, v4

    .line 293
    .restart local v14    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v0, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v19, v0

    .line 294
    .local v19, "wrapperTrackGroupCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    move/from16 v18, v17

    .end local v17    # "trackGroupIndex":I
    .local v18, "trackGroupIndex":I
    :goto_3
    move/from16 v0, v19

    if-ge v2, v0, :cond_2

    .line 295
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "trackGroupIndex":I
    .restart local v17    # "trackGroupIndex":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    aput-object v7, v16, v18

    .line 294
    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v17

    .end local v17    # "trackGroupIndex":I
    .restart local v18    # "trackGroupIndex":I
    goto :goto_3

    .line 292
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move/from16 v17, v18

    .end local v18    # "trackGroupIndex":I
    .restart local v17    # "trackGroupIndex":I
    goto :goto_2

    .line 298
    .end local v2    # "j":I
    .end local v14    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v19    # "wrapperTrackGroupCount":I
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 302
    new-instance v3, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->durationUs:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->durationUs:J

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->isLive:Z

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->isLive:Z

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .line 303
    .local v3, "timeline":Lcom/google/android/exoplayer2/Timeline;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    invoke-interface {v4, v3, v5}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 302
    .end local v3    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_4
    const/4 v12, 0x0

    goto :goto_4
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 7
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 116
    new-instance v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 117
    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestUri:Landroid/net/Uri;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 118
    .local v2, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    invoke-virtual {v3, v2, p0, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 119
    .local v0, "elapsedRealtimeMs":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v5, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    .line 120
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 221
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 106
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-eqz v1, :cond_0

    .line 107
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 108
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->release()V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 239
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->isLive:Z

    if-eqz v1, :cond_0

    const-wide/16 p1, 0x0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 241
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 242
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekTo(J)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 19
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 142
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v15, v3, [I

    .line 143
    .local v15, "streamChildIndices":[I
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v14, v3, [I

    .line 144
    .local v14, "selectionChildIndices":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_3

    .line 145
    aget-object v3, p3, v10

    if-nez v3, :cond_1

    const/4 v3, -0x1

    .line 146
    :goto_1
    aput v3, v15, v10

    .line 147
    const/4 v3, -0x1

    aput v3, v14, v10

    .line 148
    aget-object v3, p1, v10

    if-eqz v3, :cond_0

    .line 149
    aget-object v3, p1, v10

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v16

    .line 150
    .local v16, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v11, v3, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 152
    aput v11, v14, v10

    .line 144
    .end local v11    # "j":I
    .end local v16    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v5, p3, v10

    .line 146
    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 150
    .restart local v11    # "j":I
    .restart local v16    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 158
    .end local v11    # "j":I
    .end local v16    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_3
    const/4 v13, 0x0

    .line 159
    .local v13, "selectedNewTracks":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 161
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v12, v3, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 162
    .local v12, "newStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v6, v3, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 163
    .local v6, "childStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v4, v3, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 164
    .local v4, "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v9, "enabledSampleStreamWrapperList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v10, v3, :cond_e

    .line 167
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_6

    .line 168
    aget v3, v15, v11

    if-ne v3, v10, :cond_4

    aget-object v3, p3, v11

    :goto_5
    aput-object v3, v6, v11

    .line 169
    aget v3, v14, v11

    if-ne v3, v10, :cond_5

    aget-object v3, p1, v11

    :goto_6
    aput-object v3, v4, v11

    .line 167
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 168
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 169
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 171
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-nez v5, :cond_8

    const/4 v8, 0x1

    :goto_7
    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZZ)Z

    move-result v3

    or-int/2addr v13, v3

    .line 173
    const/16 v17, 0x0

    .line 174
    .local v17, "wrapperEnabled":Z
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_c

    .line 175
    aget v3, v14, v11

    if-ne v3, v10, :cond_a

    .line 177
    aget-object v3, v6, v11

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_9
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 178
    aget-object v3, v6, v11

    aput-object v3, v12, v11

    .line 179
    const/16 v17, 0x1

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v5, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_7
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 171
    .end local v17    # "wrapperEnabled":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    .line 177
    .restart local v17    # "wrapperEnabled":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    .line 181
    :cond_a
    aget v3, v15, v11

    if-ne v3, v10, :cond_7

    .line 183
    aget-object v3, v6, v11

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_b
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .line 186
    :cond_c
    if-eqz v17, :cond_d

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 191
    .end local v11    # "j":I
    .end local v17    # "wrapperEnabled":Z
    :cond_e
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v7, v12

    move-object/from16 v0, p3

    invoke-static {v12, v3, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 195
    new-instance v3, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    .line 196
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v3, :cond_10

    if-eqz v13, :cond_10

    .line 197
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->seekToUs(J)J

    .line 199
    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_10

    .line 200
    aget-object v3, p3, v10

    if-eqz v3, :cond_f

    .line 201
    const/4 v3, 0x1

    aput-boolean v3, p4, v10

    .line 199
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 205
    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    .line 206
    return-wide p5
.end method
