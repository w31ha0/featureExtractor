.class public interface abstract Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# virtual methods
.method public abstract fetchBillboards(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchCW(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchCWFromNetwork(ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchIQ(IZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchRecommendedList(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
.end method

.method public abstract prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation
.end method
