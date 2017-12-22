.class public Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;
.source "ImageSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;


# instance fields
.field protected mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

.field protected mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 2

    .prologue
    .line 51
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 52
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Create image based subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->handleDownloadSegmentIndexes()V

    return-void
.end method

.method private downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V
    .locals 2

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->shouldDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Current segment is not downloaded yet, go and fetch current range (this and next segment)..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadNextRange(I)V

    goto :goto_0

    .line 508
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Current segment is not downloaded, go and fetch next range (2 segments after current one)..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadNextRange(I)V

    goto :goto_0
.end method

.method private downloadSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V
    .locals 9

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Segment is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->shouldDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Segment is already downloaded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->downloadStarted()V

    .line 370
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegment:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 372
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v4

    .line 373
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getSegmentSize()J

    move-result-wide v6

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$3;

    invoke-direct {v8, p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$3;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V

    .line 370
    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    goto :goto_0
.end method

.method private getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 515
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mIndexOfLastSearch:I

    .line 516
    if-gez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    if-nez v2, :cond_2

    .line 525
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Indexes not available yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 540
    :goto_0
    return-object v0

    .line 529
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 533
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    aget-object v2, v2, v0

    .line 534
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->inRange(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mIndexOfLastSearch:I

    move-object v0, v2

    .line 536
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 540
    goto :goto_0
.end method

.method private handleDownloadMasterIndex()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Subtitle data is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->getNameServers()[Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Subtitle URL is empty!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {p0, v1, v0, v2, v6}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v1

    if-gtz v1, :cond_3

    .line 179
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Subtitle master index size is wrong %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {p0, v1, v0, v2, v6}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesMasterIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 193
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexOffset()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 194
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v6

    int-to-long v6, v6

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;

    invoke-direct {v8, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;[Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    goto :goto_0
.end method

.method private handleDownloadSegmentIndexes()V
    .locals 9

    .prologue
    .line 256
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Start to download segment indexes"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getSegmentIndexesSize()I

    move-result v0

    .line 261
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegmentIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    .line 263
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getStartOffset()J

    move-result-wide v4

    int-to-long v6, v0

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;

    invoke-direct {v8, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;I)V

    .line 261
    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 286
    return-void
.end method


# virtual methods
.method protected downloadSegment(I)V
    .locals 5

    .prologue
    .line 291
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Download segment %d if needed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 294
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Invalid index requested!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    aget-object v0, v0, p1

    .line 299
    if-nez v0, :cond_2

    .line 300
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Segment index is null, this should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "No need to download segment images, succesfully loaded from cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_3
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Image(s) missing, go and download..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V

    goto :goto_0
.end method

.method protected getCurrentSegmentIndex()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    if-nez v0, :cond_1

    .line 551
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Indexes not available yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 555
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    aget-object v2, v2, v0

    .line 558
    if-nez v2, :cond_2

    .line 559
    const-string/jumbo v0, "Image based subtitles: Segment index is null, this should NOT happen! It may happen only if current segment was requested BEFORE we finish parsing segment indexes."

    .line 560
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    const-string/jumbo v2, "nf_subtitles"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_2
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastKnownPosition:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->inRange(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    .line 566
    goto :goto_0

    .line 555
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    return-object v0
.end method

.method public declared-synchronized getNumberOfDisplayedSubtitles()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    if-eqz v0, :cond_2

    move v3, v1

    move v0, v1

    .line 621
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    array-length v2, v2

    if-ge v3, v2, :cond_3

    .line 622
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    aget-object v2, v2, v3

    .line 623
    if-eqz v2, :cond_1

    .line 624
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 625
    if-eqz v6, :cond_0

    .line 626
    invoke-interface {v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getNumberOfDisplays()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    add-int/2addr v0, v6

    .line 624
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 633
    :cond_3
    monitor-exit p0

    return v0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfSubtitlesExpectedToBeDisplayed()I
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 583
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mIndexOfLastSearch:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 587
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :goto_0
    monitor-exit p0

    return v0

    .line 592
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    if-eqz v0, :cond_4

    move v3, v1

    move v0, v1

    .line 594
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    array-length v2, v2

    if-ge v3, v2, :cond_3

    .line 595
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    aget-object v2, v2, v3

    .line 596
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    .line 598
    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v10, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->isVisibleInGivenTimeRange(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 600
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 601
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v0, v0, 0x1

    .line 596
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 594
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v0

    .line 609
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v1

    .line 611
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "%d where supposed to be visible between %d and %d for total of %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mStartPlayPositionInTitleInMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRootContainerExtentX()S
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getRootContainerExtentX()S

    move-result v0

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootContainerExtentY()S
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getRootContainerExtentY()S

    move-result v0

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSegmentIndexes()[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 480
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastKnownPosition:J

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getAllVisibleSubtitleBlocks(J)Ljava/util/List;

    move-result-object v3

    .line 489
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V

    .line 495
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    const/16 v5, 0x7d0

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Ljava/util/List;Ljava/util/List;IJ)V

    return-object v1

    .line 492
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Segment not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0
.end method

.method protected handleImport()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Try to import data from existing cache!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->importMasterIndex()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed to parse master index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return v0

    .line 92
    :cond_0
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Parsed master index file from cache"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->importSegmentIndex()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Parsed segment index file from cache. Ready to serve subtitles..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mReady:Z

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getCurrentSegmentIndex()I

    move-result v2

    .line 101
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "Download segment %d on start"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadNextRange(I)V

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed to parse segment index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected importMasterIndex()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "master.idx"

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 147
    :cond_1
    :try_start_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Reading master index file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 149
    invoke-static {v2}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->parseMasterIndex([B)Z

    move-result v0

    .line 153
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "Loading master index file from cache %s was success %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to load and parse Master index from cache"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 161
    goto :goto_0
.end method

.method protected importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 324
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 330
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mKey:Ljava/lang/String;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 331
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 346
    :cond_0
    :goto_1
    return v0

    .line 335
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->setLocalImagePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to parse segment"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->downloadStarted()V

    .line 346
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected importSegmentIndex()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mKey:Ljava/lang/String;

    const-string/jumbo v4, "segment.idx"

    invoke-interface {v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 121
    :cond_1
    :try_start_0
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "Reading segment index file from cache %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getSegmentIndexesSize()I

    move-result v3

    .line 124
    invoke-static {v2}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v4

    .line 125
    invoke-virtual {p0, v4, v3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->parseSegmentIndexes([BI)V

    .line 127
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "Loaded segment index file from cache %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to load and parse Master index from cache"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 131
    goto :goto_0
.end method

.method protected initCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getCacheName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mKey:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->initCache()Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->handleImport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->handleDownloadMasterIndex()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Succesfully loaded master index."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected parseMasterIndex([B)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 226
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Master index received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 230
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 232
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    const/4 v0, 0x1

    .line 234
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 235
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 237
    const-string/jumbo v1, "master.idx"

    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->saveFileSafelyToCache(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :goto_0
    return v0

    .line 239
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 240
    :goto_1
    if-eqz v0, :cond_0

    .line 241
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "Failed to close master index input stream"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 243
    :cond_0
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "Failed to parse master index"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 239
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V
    .locals 10

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 393
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Response data for segment is NULL"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Segment received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v2

    .line 401
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v1, v0

    .line 402
    invoke-interface {v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getImageStartPosition()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-int v6, v6

    .line 403
    invoke-interface {v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getSize()I

    move-result v7

    add-int/2addr v7, v6

    .line 409
    invoke-static {p1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 410
    iget-object v7, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v7}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mKey:Ljava/lang/String;

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v6}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->saveFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-interface {v5, v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->setLocalImagePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed to parse segment"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected parseSegmentIndexes([BI)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    if-nez p1, :cond_0

    .line 424
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Response data for segment indexes is NULL"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void

    .line 432
    :cond_0
    array-length v0, p1

    if-eq v0, p2, :cond_2

    .line 433
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Size mismatch!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    array-length v0, p1

    if-ge v0, p2, :cond_1

    .line 435
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Not enough data, abort parsing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "More data than expected, start parsing..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 446
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getEntryCount()S

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    move v0, v1

    move v3, v1

    move v4, v2

    .line 451
    :goto_2
    :try_start_0
    iget-object v7, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getEntryCount()S

    move-result v7

    if-ge v0, v7, :cond_3

    .line 452
    new-instance v7, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    invoke-direct {v7, v6, v4, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;-><init>(Ljava/io/DataInputStream;II)V

    .line 453
    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    aput-object v7, v8, v0

    .line 454
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getDuration()I

    move-result v8

    add-int/2addr v4, v8

    .line 455
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getEntryCount()S

    move-result v8

    add-int/2addr v3, v8

    .line 456
    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->setIndex(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 441
    :cond_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Expected data, start parsing..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 463
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    move v1, v2

    .line 465
    :goto_3
    if-eqz v1, :cond_4

    .line 466
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed to close segment indexes input stream"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 468
    :cond_4
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed to parse segment index"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 464
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public seeked(I)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 638
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->seeked(I)V

    .line 639
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastKnownPosition:J

    .line 643
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    if-eqz v0, :cond_3

    move v0, v1

    move v2, v1

    .line 645
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 646
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    aget-object v3, v3, v0

    .line 647
    if-nez v3, :cond_1

    .line 645
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 651
    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v10, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->isVisibleInGivenTimeRange(JJ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 653
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 654
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v2, v2, 0x1

    .line 656
    int-to-long v8, p1

    invoke-interface {v7, v8, v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->seeked(J)V

    .line 650
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 663
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    .line 664
    int-to-long v4, p1

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mStartPlayPositionInTitleInMs:J

    .line 666
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "%d where supposed to be visible between %d and %d for total of %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mStartPlayPositionInTitleInMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 668
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mLastKnownPosition:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V

    .line 669
    return-void
.end method
