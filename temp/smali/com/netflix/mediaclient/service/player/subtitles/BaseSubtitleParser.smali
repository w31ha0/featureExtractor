.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;
.super Ljava/lang/Object;
.source "BaseSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field protected mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

.field protected mIndexOfLastSearch:I

.field protected mLastRenderedPositionInTitleInMs:J

.field protected mNumberOfSubtitlesExpectedToBeDisplayed:I

.field protected mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

.field protected mReady:Z

.field protected mStartPlayPositionInTitleInMs:J

.field protected mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mIndexOfLastSearch:I

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    .line 65
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

    .line 66
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mStartPlayPositionInTitleInMs:J

    .line 67
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    .line 68
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 69
    return-void
.end method


# virtual methods
.method protected getCacheName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 125
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getCurrentPlayableId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;->getSubtitleCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    const-string/jumbo v2, "nf_subtitles"

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

.method protected getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 157
    :cond_0
    return-object v0
.end method

.method public getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mReady:Z

    return v0
.end method

.method protected onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 7

    .prologue
    .line 98
    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "onError: callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mCallback:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-interface {v0, v1, p3, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;->downloadFailed(Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Ljava/lang/String;)Z

    move-result v4

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mPlaybackSubtitleProvider:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;->reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V

    .line 107
    return v4

    .line 103
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "onError: no callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized seeked(I)V
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Seeked to..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->mIndexOfLastSearch:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
