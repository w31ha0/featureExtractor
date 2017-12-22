.class public Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;
.source "ImageV2SubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"


# instance fields
.field protected mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

.field private mSaveImagesToCache:Z

.field protected mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 2

    .prologue
    .line 52
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 53
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Create image V2 based subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->handleDownloadSegmentIndexes()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;)I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getCurrentSegmentIndex()I

    move-result v0

    return v0
.end method

.method private decodeImageIfNeeded([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;ILjava/lang/String;I)[B
    .locals 3

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getImageEncryptionInfoForImage(I)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->getDecryptor(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;

    move-result-object v1

    .line 460
    invoke-interface {v1, p1, v0, p4, p5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;->decrypt([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to decrypt image"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V
    .locals 2

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 564
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->shouldDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Current segment is not downloaded yet, go and fetch current range (this and next segment)..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadNextRange(I)V

    goto :goto_0

    .line 561
    :cond_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Current segment is not downloaded, go and fetch next range (2 segments after current one)..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadNextRange(I)V

    goto :goto_0
.end method

.method private downloadSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V
    .locals 9

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->shouldDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment is already downloaded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDecryptionKey()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->downloadStarted()V

    .line 392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegment:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 394
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v4

    .line 395
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentSize()J

    move-result-wide v6

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;

    invoke-direct {v8, p0, p1, v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    goto :goto_0
.end method

.method private getCurrentSegmentIndex()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-nez v0, :cond_1

    .line 604
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Indexes not available yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 608
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->inRange(J)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 610
    goto :goto_0

    .line 608
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 568
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mIndexOfLastSearch:I

    .line 569
    if-gez v0, :cond_0

    .line 570
    const/4 v0, 0x0

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-nez v2, :cond_2

    .line 578
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Indexes not available yet!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 593
    :goto_0
    return-object v0

    .line 582
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 586
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v0

    .line 587
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->inRange(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mIndexOfLastSearch:I

    .line 589
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 593
    goto :goto_0
.end method

.method private handleDownloadMasterIndexContainer()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Subtitle data is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->getNameServers()[Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Subtitle URL is empty!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v1

    if-gtz v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesMasterIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 205
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexOffset()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 206
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v6

    int-to-long v6, v6

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$1;

    invoke-direct {v8, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$1;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;[Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    goto :goto_0
.end method

.method private handleDownloadSegmentIndexes()V
    .locals 9

    .prologue
    .line 269
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Start to download segment indexes"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentIndexesSize()I

    move-result v0

    .line 274
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegmentIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    .line 276
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentOffset()J

    move-result-wide v4

    int-to-long v6, v0

    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;

    invoke-direct {v8, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;I)V

    .line 274
    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 302
    return-void
.end method

.method private handleImport()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Try to import data from existing cache!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->importMasterIndexContainer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse master index container from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return v0

    .line 89
    :cond_0
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Parsed master index container from cache"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->importSegmentIndexContainers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Parsed segment index containers from cache"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Ready to serve subtitles..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mReady:Z

    .line 98
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getCurrentSegmentIndex()I

    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadNextRange(I)V

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse segment index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private importMasterIndexContainer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "master.idx"

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 158
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->parseMasterIndexContainer([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to load and parse Master index from cache"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 342
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 348
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 349
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 364
    :cond_0
    :goto_1
    return v0

    .line 353
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->setLocalImagePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to parse segment"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->downloadStarted()V

    .line 364
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private importSegmentIndexContainers()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "segment.idx"

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentIndexesSize()I

    move-result v2

    .line 128
    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 129
    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->parseSegmentIndexes([BI)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to load and parse segment index from cache"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected downloadSegment(I)V
    .locals 3

    .prologue
    .line 311
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 312
    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Invalid index requested!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    .line 317
    if-nez v0, :cond_2

    .line 318
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment index is null, this should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "No need to download segment images, succesfully loaded from cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_3
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Image(s) missing, go and download..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V

    goto :goto_0
.end method

.method public declared-synchronized getNumberOfDisplayedSubtitles()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_1

    move v3, v1

    move v0, v1

    .line 660
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v3, v2, :cond_2

    .line 661
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v3

    .line 662
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 663
    invoke-interface {v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getNumberOfDisplays()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    add-int/2addr v2, v6

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 660
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 668
    :cond_2
    monitor-exit p0

    return v0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfSubtitlesExpectedToBeDisplayed()I
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 619
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mIndexOfLastSearch:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 623
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :goto_0
    monitor-exit p0

    return v0

    .line 628
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_3

    move v3, v1

    move v0, v1

    .line 630
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v2, v2

    if-ge v3, v2, :cond_4

    .line 631
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v2

    .line 632
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    .line 634
    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v10, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->isVisibleInGivenTimeRange(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 636
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 637
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v0, v0, 0x1

    .line 632
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 630
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 645
    :cond_4
    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v0, v1

    .line 651
    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRootContainerExtentX()S
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->getRootContainerExtentX()S

    move-result v0

    .line 711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootContainerExtentY()S
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->getRootContainerExtentY()S

    move-result v0

    .line 721
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 533
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getAllVisibleSubtitleBlocks(J)Ljava/util/List;

    move-result-object v3

    .line 542
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V

    .line 548
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    const/16 v5, 0x7d0

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Ljava/util/List;Ljava/util/List;IJ)V

    return-object v1

    .line 545
    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0
.end method

.method protected initCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getCacheName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->initCache()Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->handleImport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Sucesfully imported cached data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Unable to import from cached data, go and start downloading itrk!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->handleDownloadMasterIndexContainer()V

    goto :goto_0
.end method

.method protected parseMasterIndexContainer([B)Z
    .locals 6

    .prologue
    .line 232
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Master index received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, 0x0

    .line 235
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 236
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 239
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    .line 244
    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-direct {v4, v0, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v0, 0x1

    .line 246
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 247
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 249
    const-string/jumbo v1, "master.idx"

    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->saveFileSafelyToCache(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :goto_0
    return v0

    .line 251
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 252
    :goto_1
    if-eqz v0, :cond_0

    .line 253
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to close master index input stream"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    :cond_0
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to parse master index"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 414
    if-nez p1, :cond_1

    .line 415
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Response data for segment is NULL"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v6

    .line 423
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 424
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    aget-object v8, v0, v3

    .line 425
    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getImageStartPosition()J

    move-result-wide v0

    sub-long/2addr v0, v6

    long-to-int v0, v0

    .line 426
    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getSize()I

    move-result v1

    add-int/2addr v1, v0

    .line 432
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 433
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getContainer()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    move-result-object v2

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getTotalIndex()I

    move-result v5

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->decodeImageIfNeeded([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;ILjava/lang/String;I)[B

    move-result-object v0

    .line 435
    if-eqz v0, :cond_2

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mKey:Ljava/lang/String;

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->saveFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-interface {v8, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->setLocalImagePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse segment"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->getNameServers()[Ljava/lang/String;

    move-result-object v0

    .line 450
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0
.end method

.method protected parseSegmentIndexes([BI)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    if-nez p1, :cond_0

    .line 473
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Response data for segment indexes is NULL"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 523
    :goto_0
    return v0

    .line 481
    :cond_0
    array-length v2, p1

    if-eq v2, p2, :cond_2

    .line 482
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Size mismatch!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    array-length v2, p1

    if-ge v2, p2, :cond_1

    .line 484
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Not enough data, abort parsing"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 485
    goto :goto_0

    .line 487
    :cond_1
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "More data than expected, start parsing..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 495
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 496
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentCount()I

    move-result v7

    .line 497
    new-array v2, v7, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    move v2, v1

    move v3, v1

    move v4, v0

    .line 501
    :goto_2
    if-ge v2, v7, :cond_3

    .line 502
    :try_start_0
    new-instance v8, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v8, v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    .line 503
    new-instance v9, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    invoke-direct {v9, v8, v4, v3, v6}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;IILjava/io/DataInputStream;)V

    .line 504
    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aput-object v9, v8, v2

    .line 505
    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getDuration()I

    move-result v8

    add-int/2addr v4, v8

    .line 506
    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSampleCount()I

    move-result v8

    add-int/2addr v3, v8

    .line 507
    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->setIndex(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 490
    :cond_2
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Expected data, start parsing..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 513
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 514
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v1

    .line 516
    :goto_3
    if-eqz v0, :cond_4

    .line 517
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to close segment indexes input stream"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 519
    :cond_4
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to parse segment index"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 515
    :catch_1
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_3
.end method

.method public seeked(I)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 673
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseImageSubtitleParser;->seeked(I)V

    .line 674
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    .line 678
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    if-eqz v0, :cond_2

    move v0, v1

    move v2, v1

    .line 680
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 681
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v3

    .line 682
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 683
    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v10, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->isVisibleInGivenTimeRange(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 685
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 686
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v2, v2, 0x1

    .line 688
    int-to-long v8, p1

    invoke-interface {v7, v8, v9}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->seeked(J)V

    .line 682
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 680
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 695
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    .line 696
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mStartPlayPositionInTitleInMs:J

    .line 702
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mLastKnownPosition:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->getSegmentForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadIfNeeded(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;)V

    .line 703
    return-void
.end method
