.class public Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;
.source "OfflineImageV2SubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;


# instance fields
.field protected mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

.field protected mSubtitleFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 8

    .prologue
    .line 23
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 24
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Create image V2 based offline subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    .line 27
    return-void
.end method


# virtual methods
.method protected getCacheName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getCurrentPlayableId()J

    move-result-wide v2

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getTrackType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getSubtitleCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    const-string/jumbo v2, "nf_subtitles_imv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    return-object v0
.end method

.method protected handleImport()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Try to import data from existing cache!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->importMasterIndex()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse master index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return v0

    .line 51
    :cond_0
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Parsed master index file from cache"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->importSegmentIndex()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Parsed segment index file from cache"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Ready to serve subtitles..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mReady:Z

    .line 60
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Import all segments on start"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSegmentIndexContainers:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 62
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "Failed to parse segment index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected importMasterIndex()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 94
    :cond_1
    :try_start_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v2, "Reading master index file from downloaded file %s from position %d for %d bytes."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexOffset()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexSize()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/FileUtils;->readBytesFromFile(Ljava/io/File;II)[B

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->parseMasterIndexContainer([B)Z

    move-result v0

    .line 97
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Loading master index file from cache %s was success %b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to load and parse Master index from cache"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 105
    goto :goto_0
.end method

.method protected importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    :try_start_0
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Reading segment file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;->getSegmentSize()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/util/FileUtils;->readBytesFromFile(Ljava/io/File;II)[B

    move-result-object v3

    .line 137
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDecryptionKey()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCSegment;->getSegmentIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v2, v4}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Loaded segment file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to load and parse segment index from cache"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 145
    goto :goto_0
.end method

.method protected importSegmentIndex()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    :try_start_0
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Reading segment index file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentIndexesSize()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mMasterIndexContainer:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getSegmentOffset()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/util/FileUtils;->readBytesFromFile(Ljava/io/File;II)[B

    move-result-object v3

    .line 116
    invoke-virtual {p0, v3, v2}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->parseSegmentIndexes([BI)Z

    .line 118
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Loaded segment index file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string/jumbo v2, "nf_subtitles_imv2"

    const-string/jumbo v3, "Failed to load and parse segment index from cache"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public load()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->initCache()Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;->handleImport()Z

    .line 42
    return-void
.end method

.method protected saveFileSafelyToCache(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
