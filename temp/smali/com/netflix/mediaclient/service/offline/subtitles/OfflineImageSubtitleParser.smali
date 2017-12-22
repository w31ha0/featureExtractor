.class public Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;
.source "OfflineImageSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;


# instance fields
.field protected mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

.field protected mSubtitleFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 8

    .prologue
    .line 22
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 23
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Create image based offline subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    .line 26
    return-void
.end method


# virtual methods
.method protected getCacheName()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 157
    const/4 v1, 0x0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getCurrentPlayableId()J

    move-result-wide v2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getTrackType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string/jumbo v4, "nf_subtitles"

    const-string/jumbo v5, "Cache for playable id %d and language %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getSubtitleCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 172
    :try_start_1
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v4, "Cache created for playable %d, cache name: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :goto_0
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Cache name: %s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 175
    :goto_1
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to create cache "

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 174
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    return-object v0
.end method

.method protected handleImport()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Try to import data from existing cache!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->importMasterIndex()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed to parse master index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return v0

    .line 52
    :cond_0
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Parsed master index file from cache"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->importSegmentIndex()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Parsed segment index file from cache"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Ready to serve subtitles..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mReady:Z

    .line 61
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Import all segments on start"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSegmentIndexes:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 63
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed to parse segment index file from cache"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected importMasterIndex()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 96
    :cond_1
    :try_start_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Reading master index file from downloaded file %s from position %d for %d bytes."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexOffset()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->getMasterIndexSize()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/FileUtils;->readBytesFromFile(Ljava/io/File;II)[B

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->parseMasterIndex([B)Z

    move-result v0

    .line 99
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Loading master index file from cache %s was success %b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

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

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to load and parse Master index from cache"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 107
    goto :goto_0
.end method

.method protected importSegment(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    :try_start_0
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Reading segment file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getSegmentStartPosition()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->getSegmentSize()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/FileUtils;->readBytesFromFile(Ljava/io/File;II)[B

    move-result-object v2

    .line 139
    invoke-virtual {p0, v2, p1}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V

    .line 141
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Loaded segment file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

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
    const-string/jumbo v2, "nf_subtitles"

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

    .line 115
    :try_start_0
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Reading segment index file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getSegmentIndexesSize()I

    move-result v2

    .line 118
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mMasterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->getStartOffset()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/util/FileUtils;->readBytesFromFile(Ljava/io/File;II)[B

    move-result-object v3

    .line 119
    invoke-virtual {p0, v3, v2}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->parseSegmentIndexes([BI)V

    .line 121
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Loaded segment index file from cache %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->mSubtitleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to load and parse segment index from cache"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public load()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->initCache()Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;->handleImport()Z

    .line 37
    return-void
.end method

.method protected saveFileSafelyToCache(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
