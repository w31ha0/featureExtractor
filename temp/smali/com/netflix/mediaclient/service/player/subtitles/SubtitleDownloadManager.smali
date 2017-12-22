.class public Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;
.super Ljava/lang/Object;
.source "SubtitleDownloadManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

.field private mBookmark:J

.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

.field private mData:Lcom/netflix/mediaclient/media/SubtitleTrackData;

.field private mDisplayAspectRatio:F

.field private mHandler:Landroid/os/Handler;

.field private mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

.field private mPlayer:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

.field private mStartPositionForSubtitleQoeInMs:J

.field private mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-nez p3, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Config is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    if-nez p1, :cond_2

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Handler is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    if-nez p4, :cond_3

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "User is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    invoke-static {p3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createExponentialBackOffPolicy(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/util/net/ExponentialBackOff;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    .line 69
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mPlayer:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    .line 70
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 71
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static createExponentialBackOffPolicy(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/util/net/ExponentialBackOff;
    .locals 8

    .prologue
    .line 289
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v7

    .line 290
    new-instance v0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getInitialIntervalInMs()I

    move-result v1

    .line 291
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getRandomizationFactor()D

    move-result-wide v2

    .line 292
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMultiplier()D

    move-result-wide v4

    .line 293
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxIntervalInMs()I

    move-result v6

    .line 294
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getMaxElapsedTimeInMs()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;-><init>(IDDII)V

    .line 290
    return-object v0
.end method

.method private createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;
    .locals 10

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mData:Lcom/netflix/mediaclient/media/SubtitleTrackData;

    .line 123
    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->canNotDownload:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    .line 164
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->pop()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    if-nez v0, :cond_2

    .line 130
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "We tried all URLs, see if we should retry from start..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/net/BackOff;->canRetry()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "We can not retry again..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->canNotDownload:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/net/BackOff;->nextBackOffInMs()J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mData:Lcom/netflix/mediaclient/media/SubtitleTrackData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->reset()V

    .line 143
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$1;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->retry:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserSubtitlePreferences()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mPlayer:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    iget v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mDisplayAspectRatio:F

    iget-wide v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBookmark:J

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mStartPositionForSubtitleQoeInMs:J

    move-object v7, p0

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserFactory;->createParser(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FJLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->load()V

    .line 164
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->downloading:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    goto :goto_0
.end method

.method private isDownloadUrlsAvailable(Lcom/netflix/mediaclient/media/SubtitleTrackData;)Z
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportLastSubtitleQoe()V
    .locals 8

    .prologue
    .line 253
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "reportLastSubtitleQoe::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    if-eqz v0, :cond_0

    .line 256
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Dumping last Qoe data if available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfSubtitlesExpectedToBeDisplayed()I

    move-result v2

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfDisplayedSubtitles()I

    move-result v3

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    .line 260
    const-string/jumbo v1, ""

    .line 261
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    :goto_0
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v4, "For subtitle %s we where expected to show %d and we showed %d subtitles."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 269
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;->reportSubtitleQoe(Ljava/lang/String;II)V

    .line 273
    :goto_1
    return-void

    .line 271
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "reportLastSubtitleQoe:: parser is missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized reportSubtitleQoeIfSubtitleIsChanged(Z)V
    .locals 8

    .prologue
    .line 206
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfSubtitlesExpectedToBeDisplayed()I

    move-result v2

    .line 212
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfDisplayedSubtitles()I

    move-result v3

    .line 213
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    .line 214
    const-string/jumbo v1, ""

    .line 215
    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    :goto_0
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v4, "QoE: for subtitle %s we where expected to show %d and we showed %d subtitles."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;->reportSubtitleQoe(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parser is null, nothing to report!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized changeSubtitle(Lcom/netflix/mediaclient/media/SubtitleTrackData;FJJZ)V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mDisplayAspectRatio:F

    .line 90
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBookmark:J

    .line 91
    iput-wide p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mStartPositionForSubtitleQoeInMs:J

    .line 93
    invoke-direct {p0, p7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->reportSubtitleQoeIfSubtitleIsChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-nez p1, :cond_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->isDownloadUrlsAvailable(Lcom/netflix/mediaclient/media/SubtitleTrackData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mData:Lcom/netflix/mediaclient/media/SubtitleTrackData;

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createExponentialBackOffPolicy(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/util/net/ExponentialBackOff;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    .line 110
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized downloadFailed(Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mCurrentSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    if-ne v2, p1, :cond_2

    .line 179
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Failed to download current subtitle, go for next..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->createParserAndStartDownload()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    move-result-object v2

    .line 182
    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->downloading:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    if-ne v2, v3, :cond_0

    .line 183
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Parser created..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return v0

    .line 185
    :cond_0
    :try_start_1
    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;->retry:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    if-ne v2, v3, :cond_1

    .line 186
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Will retry download..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "We failed all available links, report final failure!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 190
    goto :goto_0

    :cond_2
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public declared-synchronized getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubtitlesQoeReport()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->reportLastSubtitleQoe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;->toJsonArray()Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 248
    :goto_0
    monitor-exit p0

    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    :try_start_2
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Failed getSubtitlesQoeReport!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
