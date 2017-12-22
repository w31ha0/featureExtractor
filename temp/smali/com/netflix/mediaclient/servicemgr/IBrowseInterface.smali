.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;
.super Ljava/lang/Object;
.source "IBrowseInterface.java"


# virtual methods
.method public abstract addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;II)V
.end method

.method public abstract dumpCacheToDisk(Ljava/io/File;)V
.end method

.method public abstract fetchAdvisories(Ljava/lang/String;II)V
.end method

.method public abstract fetchCWVideos(IIII)V
.end method

.method public abstract fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
.end method

.method public abstract fetchFalkorVideo(Ljava/lang/String;II)V
.end method

.method public abstract fetchGenreLists(II)V
.end method

.method public abstract fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
.end method

.method public abstract fetchGenres(Ljava/lang/String;IIII)V
.end method

.method public abstract fetchIQVideos(IIZII)V
.end method

.method public abstract fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IIII)V
.end method

.method public abstract fetchKidsCharacterDetails(Ljava/lang/String;II)V
.end method

.method public abstract fetchLoLoMoSummary(Ljava/lang/String;II)V
.end method

.method public abstract fetchLoMos(IIII)V
.end method

.method public abstract fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract fetchNotifications(IIII)V
.end method

.method public abstract fetchPersonDetail(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract fetchPersonRelated(Ljava/lang/String;II)V
.end method

.method public abstract fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;II)V
.end method

.method public abstract fetchPreAppData(II)V
.end method

.method public abstract fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract fetchSeasonDetails(Ljava/lang/String;II)V
.end method

.method public abstract fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;II)V
.end method

.method public abstract fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZII)V
.end method

.method public abstract fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZII)V
.end method

.method public abstract fetchSimilarVideosForPerson(Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;II)V
.end method

.method public abstract fetchVideoSummary(Ljava/lang/String;II)V
.end method

.method public abstract fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZII)V
.end method

.method public abstract flushCaches()V
.end method

.method public abstract flushOnlyMemCache()V
.end method

.method public abstract forceFetchFromLocalCache(Z)V
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

.method public abstract logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V
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

.method public abstract prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZII)V
.end method

.method public abstract prefetchLoLoMo(IIIIIIZZZII)V
.end method

.method public abstract prefetchVideoListDetails(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract refreshCw(Z)V
.end method

.method public abstract refreshEpisodeData(Lcom/netflix/mediaclient/servicemgr/Asset;)V
.end method

.method public abstract refreshIq()V
.end method

.method public abstract refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
.end method

.method public abstract refreshLolomo()V
.end method

.method public abstract removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;II)V
.end method

.method public abstract runPrefetchLolomoJob(Z)V
.end method

.method public abstract searchNetflix(Ljava/lang/String;II)V
.end method

.method public abstract setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
.end method

.method public abstract updateCachedVideoPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V
.end method

.method public abstract updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
.end method
