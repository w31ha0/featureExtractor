.class public interface abstract Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;
.super Ljava/lang/Object;
.source "INetflixServiceCallback.java"


# virtual methods
.method public abstract onActorDetailsAndRelatedFetched(ILjava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdvisoriesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAllocateABTestCompleted(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAutoLoginTokenCreated(ILjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAvailableAvatarsListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBBVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onCWVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onEpisodeDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onEpisodesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFalkorVideoFetched(ILcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onGenreListsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGenreLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onGenresFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onInteractiveMomentsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onIrisNotificationsListFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onKidsCharacterDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLoLoMoSummaryFetched(ILcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLoMosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLoginComplete(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLogoutComplete(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onMovieDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onOnRampEligibilityAction(ILcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onPersonDetailFetched(ILcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onPersonRelatedFetched(ILcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/model/branches/FalkorPerson;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPostPlayImpressionLogged(IZLcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onPostPlayVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onProfileListUpdateStatus(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onQueueAdd(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onQueueRemove(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onResourceCached(ILjava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onResourceFetched(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onResourceRawFetched(ILjava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onScenePositionFetched(IILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSearchResultsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSeasonDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSeasonsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onShowDetailsAndSeasonsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onShowDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSimilarVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSurveyFetched(ILcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVerified(IZLcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideoHide(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideoRatingSet(ILcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideoSummaryFetched(ILcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method
