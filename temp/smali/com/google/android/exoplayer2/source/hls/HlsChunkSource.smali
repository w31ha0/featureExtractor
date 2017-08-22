.class Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field private static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field private static final LIVE_VARIANT_SWITCH_SAFETY_EXTRA_SECS:D = 2.0

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private fatalError:Ljava/io/IOException;

.field private lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

.field private live:Z

.field private final playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

.field private scratchSpace:[B

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final variantLastPlaylistLoadTimesMs:[J

.field private final variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private final variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;)V
    .locals 5
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "variants"    # [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p4, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 147
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 148
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 149
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    .line 150
    array-length v3, p2

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 151
    array-length v3, p2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 153
    array-length v3, p2

    new-array v2, v3, [Lcom/google/android/exoplayer2/Format;

    .line 154
    .local v2, "variantFormats":[Lcom/google/android/exoplayer2/Format;
    array-length v3, p2

    new-array v1, v3, [I

    .line 155
    .local v1, "initialTrackSelection":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 156
    aget-object v3, p2, v0

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v3, v2, v0

    .line 157
    aput v0, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 160
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v4, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 161
    return-void
.end method

.method private buildInitializationChunk(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;
    .locals 10
    .param p1, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "extractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 508
    iget-object v9, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 510
    .local v9, "initSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v3, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 511
    .local v1, "initSegmentUri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v4, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 513
    .local v0, "initDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 514
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v5

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILjava/lang/Object;Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)V

    .line 513
    return-object v2
.end method

.method private clearEncryptionData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 565
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 566
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 567
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 568
    return-void
.end method

.method private getLiveNextChunkSequenceNumber(III)I
    .locals 12
    .param p1, "previousChunkIndex"    # I
    .param p2, "oldVariantIndex"    # I
    .param p3, "newVariantIndex"    # I

    .prologue
    .line 438
    if-ne p2, p3, :cond_0

    .line 439
    add-int/lit8 v7, p1, 0x1

    .line 466
    :goto_0
    return v7

    .line 441
    :cond_0
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v6, v7, p2

    .line 442
    .local v6, "oldMediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v3, v7, p3

    .line 443
    .local v3, "newMediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    const-wide/16 v4, 0x0

    .line 444
    .local v4, "offsetToLiveInstantSecs":D
    iget v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v2, p1, v7

    .line 445
    .local v2, "i":I
    :goto_1
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 446
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v8, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationSecs:D

    add-double/2addr v4, v8

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 448
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 449
    .local v0, "currentTimeMs":J
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v8, v7, p2

    sub-long v8, v0, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 451
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v8

    .line 452
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v8, v7, p3

    sub-long v8, v0, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    sub-double/2addr v4, v8

    .line 454
    const-wide/16 v8, 0x0

    cmpg-double v7, v4, v8

    if-gez v7, :cond_2

    .line 457
    iget v7, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget-object v8, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 459
    :cond_2
    iget-object v7, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_4

    .line 460
    iget-object v7, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v8, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationSecs:D

    sub-double/2addr v4, v8

    .line 461
    const-wide/16 v8, 0x0

    cmpg-double v7, v4, v8

    if-gez v7, :cond_3

    .line 462
    iget v7, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v7, v2

    goto :goto_0

    .line 459
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 466
    :cond_4
    iget v7, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method private msToRerequestLiveMediaPlaylist(I)J
    .locals 8
    .param p1, "variantIndex"    # I

    .prologue
    .line 519
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v0, v1, p1

    .line 521
    .local v0, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v6, v1, p1

    sub-long v2, v4, v6

    .line 523
    .local v2, "timeSinceLastMediaPlaylistLoadMs":J
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    sub-long/2addr v4, v2

    return-wide v4
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;

    .prologue
    .line 538
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 539
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, p3

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object v1
.end method

.method private newMediaPlaylistChunk(IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 12
    .param p1, "variantIndex"    # I
    .param p2, "trackSelectionReason"    # I
    .param p3, "trackSelectionData"    # Ljava/lang/Object;

    .prologue
    .line 528
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 529
    .local v1, "mediaPlaylistUri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 531
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v4, v4, p1

    iget-object v5, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    move-object v4, v0

    move v6, p2

    move-object v7, p3

    move v10, p1

    move-object v11, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;ILandroid/net/Uri;)V

    return-object v2
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    const/16 v6, 0x10

    .line 545
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 552
    .local v0, "ivData":[B
    new-array v1, v6, [B

    .line 553
    .local v1, "ivDataWithPadding":[B
    array-length v4, v0

    if-le v4, v6, :cond_1

    array-length v4, v0

    add-int/lit8 v2, v4, -0x10

    .line 554
    .local v2, "offset":I
    :goto_1
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 558
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 559
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 560
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 561
    return-void

    .line 548
    .end local v0    # "ivData":[B
    .end local v1    # "ivDataWithPadding":[B
    .end local v2    # "offset":I
    .end local v3    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .restart local v3    # "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 553
    .restart local v0    # "ivData":[B
    .restart local v1    # "ivDataWithPadding":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setMediaPlaylist(ILcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 4
    .param p1, "variantIndex"    # I
    .param p2, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 573
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    iget-boolean v1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->live:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    .line 574
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->durationUs:J

    .line 575
    return-void

    .line 574
    :cond_0
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->durationUs:J

    return-wide v0
.end method

.method public getNextChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;JLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 44
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .prologue
    .line 227
    if-nez p1, :cond_0

    const/16 v40, -0x1

    .line 232
    .local v40, "oldVariantIndex":I
    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v30, 0x0

    .line 234
    .local v30, "bufferedDurationUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v0, v30

    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v7

    .line 237
    .local v7, "newVariantIndex":I
    move/from16 v0, v40

    if-eq v0, v7, :cond_2

    const/16 v26, 0x1

    .line 238
    .local v26, "switchingVariant":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v36, v4, v7

    .line 239
    .local v36, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    if-nez v36, :cond_3

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 242
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newMediaPlaylistChunk(IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 425
    :goto_3
    return-void

    .line 227
    .end local v7    # "newVariantIndex":I
    .end local v26    # "switchingVariant":Z
    .end local v30    # "bufferedDurationUs":J
    .end local v36    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .end local v40    # "oldVariantIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 228
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v40

    goto :goto_0

    .line 232
    .restart local v40    # "oldVariantIndex":I
    :cond_1
    const-wide/16 v10, 0x0

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v12

    sub-long v12, v12, p2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    goto :goto_1

    .line 237
    .restart local v7    # "newVariantIndex":I
    .restart local v30    # "bufferedDurationUs":J
    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    .line 247
    .restart local v26    # "switchingVariant":Z
    .restart local v36    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_6

    .line 248
    if-nez p1, :cond_5

    .line 251
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v36

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int v20, v4, v6

    .line 285
    .local v20, "chunkMediaSequence":I
    :cond_4
    :goto_4
    move-object/from16 v0, v36

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v29, v20, v4

    .line 286
    .local v29, "chunkIndex":I
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v29

    if-lt v0, v4, :cond_b

    .line 287
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->live:Z

    if-nez v4, :cond_9

    .line 288
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto :goto_3

    .line 257
    .end local v20    # "chunkMediaSequence":I
    .end local v29    # "chunkIndex":I
    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getLiveNextChunkSequenceNumber(III)I

    move-result v20

    .line 259
    .restart local v20    # "chunkMediaSequence":I
    move-object/from16 v0, v36

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_4

    .line 262
    move/from16 v7, v40

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v36, v4, v7

    .line 264
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v4, v1, v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getLiveNextChunkSequenceNumber(III)I

    move-result v20

    .line 266
    move-object/from16 v0, v36

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_4

    .line 267
    new-instance v4, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_3

    .line 274
    .end local v20    # "chunkMediaSequence":I
    :cond_6
    if-nez p1, :cond_7

    .line 275
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v4, v6, v10, v11}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    move-object/from16 v0, v36

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int v20, v4, v6

    .restart local v20    # "chunkMediaSequence":I
    goto :goto_4

    .line 277
    .end local v20    # "chunkMediaSequence":I
    :cond_7
    if-eqz v26, :cond_8

    .line 278
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    .line 279
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 278
    invoke-static {v4, v6, v10, v11}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    move-object/from16 v0, v36

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int v20, v4, v6

    .restart local v20    # "chunkMediaSequence":I
    goto/16 :goto_4

    .line 281
    .end local v20    # "chunkMediaSequence":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v20

    .restart local v20    # "chunkMediaSequence":I
    goto/16 :goto_4

    .line 290
    .restart local v29    # "chunkIndex":I
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->msToRerequestLiveMediaPlaylist(I)J

    move-result-wide v38

    .line 291
    .local v38, "msToRerequestLiveMediaPlaylist":J
    const-wide/16 v10, 0x0

    cmp-long v4, v38, v10

    if-gtz v4, :cond_a

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 293
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newMediaPlaylistChunk(IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    .line 297
    :cond_a
    const-wide/16 v10, 0xa

    add-long v10, v10, v38

    move-object/from16 v0, p4

    iput-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->retryInMs:J

    goto/16 :goto_3

    .line 303
    .end local v38    # "msToRerequestLiveMediaPlaylist":J
    :cond_b
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 306
    .local v41, "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    move-object/from16 v0, v41

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v4, :cond_f

    .line 307
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 308
    .local v5, "keyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 310
    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 311
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v4, p0

    .line 310
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    .line 314
    :cond_c
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 315
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 323
    .end local v5    # "keyUri":Landroid/net/Uri;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_12

    .line 324
    if-nez p1, :cond_10

    .line 325
    const-wide/16 v16, 0x0

    .line 334
    .local v16, "startTimeUs":J
    :goto_6
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-long v10, v10

    add-long v18, v16, v10

    .line 335
    .local v18, "endTimeUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v4, v4, v7

    iget-object v0, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v34, v0

    .line 337
    .local v34, "format":Lcom/google/android/exoplayer2/Format;
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 341
    .local v9, "chunkUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v34

    if-ne v4, v0, :cond_13

    const/16 v42, 0x1

    .line 343
    .local v42, "useInitializedExtractor":Z
    :goto_7
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    move-object/from16 v0, v41

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    if-ne v4, v6, :cond_e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v34

    if-eq v0, v4, :cond_14

    :cond_e
    const/16 v37, 0x1

    .line 346
    .local v37, "needNewExtractor":Z
    :goto_8
    const/16 v25, 0x1

    .line 347
    .local v25, "extractorNeedsInit":Z
    const/16 v22, 0x0

    .line 348
    .local v22, "isTimestampMaster":Z
    const/16 v23, 0x0

    .line 349
    .local v23, "timestampAdjuster":Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v35

    .line 350
    .local v35, "lastPathSegment":Ljava/lang/String;
    const-string v4, ".aac"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 354
    new-instance v24, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 410
    .local v24, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_9
    if-eqz v37, :cond_22

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v4, :cond_22

    if-nez v42, :cond_22

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->buildInitializationChunk(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    .line 318
    .end local v9    # "chunkUri":Landroid/net/Uri;
    .end local v16    # "startTimeUs":J
    .end local v18    # "endTimeUs":J
    .end local v22    # "isTimestampMaster":Z
    .end local v23    # "timestampAdjuster":Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    .end local v25    # "extractorNeedsInit":Z
    .end local v34    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v35    # "lastPathSegment":Ljava/lang/String;
    .end local v37    # "needNewExtractor":Z
    .end local v42    # "useInitializedExtractor":Z
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->clearEncryptionData()V

    goto/16 :goto_5

    .line 326
    :cond_10
    if-eqz v26, :cond_11

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v16

    .restart local v16    # "startTimeUs":J
    goto/16 :goto_6

    .line 329
    .end local v16    # "startTimeUs":J
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedEndTimeUs()J

    move-result-wide v16

    .restart local v16    # "startTimeUs":J
    goto/16 :goto_6

    .line 332
    .end local v16    # "startTimeUs":J
    :cond_12
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    move-wide/from16 v16, v0

    .restart local v16    # "startTimeUs":J
    goto/16 :goto_6

    .line 341
    .restart local v9    # "chunkUri":Landroid/net/Uri;
    .restart local v18    # "endTimeUs":J
    .restart local v34    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_13
    const/16 v42, 0x0

    goto :goto_7

    .line 343
    .restart local v42    # "useInitializedExtractor":Z
    :cond_14
    const/16 v37, 0x0

    goto :goto_8

    .line 355
    .restart local v22    # "isTimestampMaster":Z
    .restart local v23    # "timestampAdjuster":Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;
    .restart local v25    # "extractorNeedsInit":Z
    .restart local v35    # "lastPathSegment":Ljava/lang/String;
    .restart local v37    # "needNewExtractor":Z
    :cond_15
    const-string v4, ".ac3"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, ".ec3"

    .line 356
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 357
    :cond_16
    new-instance v24, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>(J)V

    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_9

    .line 358
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_17
    const-string v4, ".mp3"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 359
    new-instance v24, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(J)V

    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_9

    .line 360
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_18
    const-string v4, ".webvtt"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, ".vtt"

    .line 361
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 362
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object/from16 v0, v41

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move-wide/from16 v0, v16

    invoke-virtual {v4, v6, v0, v1}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v23

    .line 364
    new-instance v24, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;)V

    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_9

    .line 365
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1a
    const-string v4, ".mp4"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 366
    const/16 v22, 0x1

    .line 367
    if-eqz v37, :cond_1c

    .line 368
    if-eqz v42, :cond_1b

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iget-object v0, v4, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v24, v0

    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_9

    .line 371
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object/from16 v0, v41

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move-wide/from16 v0, v16

    invoke-virtual {v4, v6, v0, v1}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v23

    .line 373
    new-instance v24, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/extractor/TimestampAdjuster;)V

    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_9

    .line 376
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v24, v0

    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_9

    .line 378
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1d
    if-eqz v37, :cond_21

    .line 380
    const/16 v22, 0x1

    .line 381
    if-eqz v42, :cond_1e

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iget-object v0, v4, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v24, v0

    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_9

    .line 384
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object/from16 v0, v41

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move-wide/from16 v0, v16

    invoke-virtual {v4, v6, v0, v1}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v23

    .line 388
    const/16 v33, 0x0

    .line 389
    .local v33, "esReaderFactoryFlags":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 390
    .local v32, "codecs":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 394
    const-string v4, "audio/mp4a-latm"

    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 395
    or-int/lit8 v33, v33, 0x2

    .line 397
    :cond_1f
    const-string v4, "video/avc"

    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 398
    or-int/lit8 v33, v33, 0x4

    .line 401
    :cond_20
    new-instance v24, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;

    move/from16 v0, v33

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v6}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$Factory;Z)V

    .line 403
    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_9

    .line 406
    .end local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    .end local v32    # "codecs":Ljava/lang/String;
    .end local v33    # "esReaderFactoryFlags":I
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v24, v0

    .line 407
    .restart local v24    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 416
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    .line 418
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 420
    .local v8, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 421
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, v41

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v28, v0

    move-object v12, v8

    move-object/from16 v13, v34

    invoke-direct/range {v10 .. v28}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIZLcom/google/android/exoplayer2/extractor/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/Extractor;ZZ[B[B)V

    move-object/from16 v0, p4

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 5
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 476
    instance-of v2, p1, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    if-eqz v2, :cond_1

    .line 477
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    .end local p1    # "chunk":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 478
    .restart local p1    # "chunk":Lcom/google/android/exoplayer2/source/chunk/Chunk;
    :cond_1
    instance-of v2, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 479
    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 480
    .local v1, "mediaPlaylistChunk":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 481
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_0

    .line 482
    .end local v1    # "mediaPlaylistChunk":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;
    :cond_2
    instance-of v2, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 483
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 484
    .local v0, "encryptionKeyChunk":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 485
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    .line 486
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v4

    .line 485
    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z
    .locals 4
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/io/IOException;

    .prologue
    .line 500
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 501
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    .line 500
    invoke-static {v0, v1, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 210
    return-void
.end method

.method public selectTracks(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .locals 0
    .param p1, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 203
    return-void
.end method
