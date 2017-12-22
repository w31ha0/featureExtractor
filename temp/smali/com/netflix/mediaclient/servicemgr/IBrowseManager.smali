.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IBrowseManager;
.super Ljava/lang/Object;
.source "IBrowseManager.java"


# virtual methods
.method public abstract addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract dumpCacheToDisk(Ljava/io/File;)V
.end method

.method public abstract dumpHomeLoLoMosAndVideos(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
.end method

.method public abstract fetchCWVideos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchGenreLists(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchIQVideos(IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchLoMos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
.end method

.method public abstract fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
.end method

.method public abstract fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z
.end method

.method public abstract fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
.end method

.method public abstract fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract flushCaches()Z
.end method

.method public abstract getLolomoId()Ljava/lang/String;
.end method

.method public abstract getModelProxy()Lcom/netflix/falkor/ModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
.end method

.method public abstract logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V
.end method

.method public abstract markNotificationsAsRead(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract prefetchLoLoMo(IIIIIIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/ManagerCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract refreshCw(Z)V
.end method

.method public abstract refreshIq()V
.end method

.method public abstract refreshIrisNotifications(Z)V
.end method

.method public abstract refreshLolomo()V
.end method

.method public abstract removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract runPrefetchLolomoJob(Z)Z
.end method

.method public abstract searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
.end method

.method public abstract updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
.end method
