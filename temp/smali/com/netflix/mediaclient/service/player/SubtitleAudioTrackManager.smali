.class public Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;
.super Ljava/lang/Object;
.source "SubtitleAudioTrackManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mAspectRatio:F

.field private mBookmark:J

.field private mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

.field private mPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

.field private mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

.field private mSubtitleTrackData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtittleHandler:Landroid/os/Handler;

.field private final mSubtittleThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleTrackData:Ljava/util/Map;

    .line 44
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SubtitleAudioTrackManagerWorkerThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtittleThread:Landroid/os/HandlerThread;

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtittleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtittleThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtittleHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mBookmark:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleTrackData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->shouldReportSubtitleQoe(Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    move-result v0

    return v0
.end method

.method private shouldReportSubtitleQoe(Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    if-nez p2, :cond_0

    .line 180
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    .line 172
    if-nez v1, :cond_1

    .line 173
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "isNewSubtitle: current subtitle is null, can not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "isNewSubtitle: subtitle is not changed, do not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "isNewSubtitle: subtitle is changed, report QoE..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtittleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public declared-synchronized getSubtitle(I)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
    .locals 4

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 115
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubtitlesQoeReport()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitlesQoeReport()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized initSubtitle(Ljava/util/List;Ljava/lang/String;JF)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            ">;",
            "Ljava/lang/String;",
            "JF)V"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mBookmark:J

    .line 74
    iput p5, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mAspectRatio:F

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleTrackData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    if-nez p1, :cond_0

    .line 78
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "no subtitletracks available. "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    .line 83
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleTrackData:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_1
    :try_start_2
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleTrackData:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    .line 87
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getSubtitleInfo()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    .line 88
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtittleHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;-><init>(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/SubtitleTrackData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 98
    :cond_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "No initial subtitle, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized seekTo(I)V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtitleDownloadManager:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->seeked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectAudioSubtitleTrack(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;JZ)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 7

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->mSubtittleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;-><init>(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/Subtitle;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-object p2

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSubtitleSettings(Z)V
    .locals 0

    .prologue
    .line 62
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateSubtitleSettingsFromQaLocalOverride(I)V
    .locals 0

    .prologue
    .line 66
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
