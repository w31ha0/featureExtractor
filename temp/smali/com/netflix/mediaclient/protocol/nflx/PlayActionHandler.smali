.class Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
.source "PlayActionHandler.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 42
    return-void
.end method


# virtual methods
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .prologue
    .line 50
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handlePlayAction starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "targetid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->extractJustUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->getVideoInfo()Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handlePlayAction fails, no video info found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 84
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->handleWithDelay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handlePlayAction ends, handling with delay."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    .line 61
    :cond_1
    if-eqz v1, :cond_5

    .line 62
    const-string/jumbo v2, "NflxHandler"

    const-string/jumbo v3, "handlePlayAction, handling."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 64
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_3

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTrackId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    .line 68
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v1, :cond_5

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getEpisodeId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no episode id"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    .line 75
    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTrackId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    .line 84
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method

.method protected handleEpisodeFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .prologue
    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

.method protected handleMovieFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 201
    :goto_0
    return-object v0

    .line 199
    :cond_0
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Video ID not found, return to LOLOMO"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->handleHomeAction()V

    .line 201
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method

.method protected handleMovieFromTinyUrl(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

.method protected play(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    .line 159
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Starting local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 186
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 169
    if-nez v0, :cond_1

    .line 171
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "MDX is null, go local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0

    .line 174
    :cond_1
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "MDX exist, check if target is available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setDialUuidAsCurrentTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->handleHomeAction()V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackForceRemote(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    .line 180
    :cond_2
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "MDX does not know target dial UUID, go local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;

    invoke-direct {v1, p0, p4, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v3, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;

    invoke-direct {v1, p0, p4, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v3, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 144
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v1

    new-instance v2, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;

    invoke-direct {v2, p0, p4, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v3, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
