.class public Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;
.super Ljava/lang/Object;
.source "SubtitleOfflineManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitles_offline"


# instance fields
.field private mBookmark:J

.field private mDisplayAspectRatio:F

.field private mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

.field private mPlayer:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

.field private mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "User is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    if-nez p2, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Player is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 43
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mPlayer:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    .line 44
    return-void
.end method

.method private reportLastSubtitleQoe()V
    .locals 8

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "nf_subtitles_offline"

    const-string/jumbo v1, "Dumping last Qoe data if available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;->getNumberOfSubtitlesExpectedToBeDisplayed()I

    move-result v2

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;->getNumberOfDisplayedSubtitles()I

    move-result v3

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    .line 145
    const-string/jumbo v1, ""

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    :goto_0
    const-string/jumbo v1, "nf_subtitles_offline"

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

    .line 154
    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->reportSubtitleQoe(Ljava/lang/String;II)V

    .line 156
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private reportSubtitleQoe(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;->reportSubtitleQoe(Ljava/lang/String;II)V

    .line 136
    return-void
.end method

.method private declared-synchronized reportSubtitleQoeIfSubtitleIsChanged(Lcom/netflix/mediaclient/media/Subtitle;Z)V
    .locals 8

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->shouldReportSubtitleQoe(Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfSubtitlesExpectedToBeDisplayed()I

    move-result v2

    .line 110
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfDisplayedSubtitles()I

    move-result v3

    .line 111
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    .line 112
    const-string/jumbo v1, ""

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    :goto_0
    const-string/jumbo v1, "nf_subtitles_offline"

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

    .line 122
    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->reportSubtitleQoe(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_subtitles_offline"

    const-string/jumbo v1, "Parser is null, nothing to report!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private shouldReportSubtitleQoe(Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p2, :cond_0

    .line 173
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    .line 165
    if-nez v1, :cond_1

    .line 166
    const-string/jumbo v1, "nf_subtitles_offline"

    const-string/jumbo v2, "isNewSubtitle: current subtitle is null, can not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const-string/jumbo v1, "nf_subtitles_offline"

    const-string/jumbo v2, "isNewSubtitle: subtitle is not changed, do not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v0, "nf_subtitles_offline"

    const-string/jumbo v1, "isNewSubtitle: subtitle is changed, report QoE..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized changeSubtitle(Lcom/netflix/mediaclient/media/Subtitle;FJZ)V
    .locals 11

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mDisplayAspectRatio:F

    .line 60
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mBookmark:J

    .line 62
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserSubtitlePreferences()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v5

    .line 63
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v6

    .line 65
    move/from16 v0, p5

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->reportSubtitleQoeIfSubtitleIsChanged(Lcom/netflix/mediaclient/media/Subtitle;Z)V

    .line 67
    instance-of v2, p1, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    if-eqz v2, :cond_0

    .line 69
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mPlayer:Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    move-object v4, v0

    iget v7, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mDisplayAspectRatio:F

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mBookmark:J

    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleParserFactory;->createParser(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FJ)Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    .line 70
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;->load()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SubtitleOfflineManager handles only OfflineSubtitle!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mDisplayAspectRatio:F

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mBookmark:J

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-string/jumbo v0, "nf_subtitles_offline"

    const-string/jumbo v1, "getCurrentSubtitle:: parser is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mParser:Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;
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
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->reportLastSubtitleQoe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->mSubtitleQoeReporter:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeReporter;->toJsonArray()Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 190
    :goto_0
    monitor-exit p0

    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
