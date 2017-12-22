.class public Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;
.super Ljava/lang/Object;
.source "BrowseAgentCallbackWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimingBrowseAgentCallback"


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

.field private final start:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->start:J

    .line 46
    return-void
.end method

.method private handleResultTiming(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 50
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->start:J

    sub-long/2addr v0, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 54
    return-void
.end method

.method private wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .prologue
    .line 61
    return-object p1
.end method


# virtual methods
.method public onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .prologue
    .line 191
    const-string/jumbo v0, "onActorDetailsAndRelatedFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    .line 193
    return-void
.end method

.method public onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    const-string/jumbo v0, "onAdvisoriesFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 277
    return-void
.end method

.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    const-string/jumbo v0, "onBBVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 92
    return-void
.end method

.method public onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 269
    const-string/jumbo v0, "onBrowsePlaySessionEnd"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 271
    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    const-string/jumbo v0, "onCWVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 86
    return-void
.end method

.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 161
    const-string/jumbo v0, "onEpisodeDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 163
    return-void
.end method

.method public onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    const-string/jumbo v0, "onEpisodesFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 116
    return-void
.end method

.method public onFalkorVideoFetched(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "onFalkorVideoFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onFalkorVideoFetched(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 139
    return-void
.end method

.method public onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    const-string/jumbo v0, "onGenreListsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 211
    return-void
.end method

.method public onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "onGenreLoLoMoPrefetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 74
    return-void
.end method

.method public onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    const-string/jumbo v0, "onGenresFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 217
    return-void
.end method

.method public onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "onInteractiveMomentsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 169
    return-void
.end method

.method public onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v0, "onIrisNotificationsMarkedAsRead"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 265
    return-void
.end method

.method public onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 155
    const-string/jumbo v0, "onKidsCharacterDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 157
    return-void
.end method

.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "onLoLoMoPrefetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 68
    return-void
.end method

.method public onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 126
    const-string/jumbo v0, "onLoLoMoSummaryFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 128
    return-void
.end method

.method public onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "onLoMosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 80
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "onMovieDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 145
    return-void
.end method

.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 257
    const-string/jumbo v0, "onIrisNotificationsListFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 259
    return-void
.end method

.method public onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    const-string/jumbo v0, "onOfflineGeoPlayabilityReceived"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 283
    return-void
.end method

.method public onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 197
    const-string/jumbo v0, "onPersonDetailFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 199
    return-void
.end method

.method public onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/branches/FalkorPerson;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    const-string/jumbo v0, "onPersonRelatedFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 205
    return-void
.end method

.method public onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 102
    const-string/jumbo v0, "onPostPlayVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 104
    return-void
.end method

.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "onPostPlayVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 98
    return-void
.end method

.method public onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 227
    const-string/jumbo v0, "onQueueAdd"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 229
    return-void
.end method

.method public onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "onQueueRemove"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 235
    return-void
.end method

.method public onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "onScenePositionFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 151
    return-void
.end method

.method public onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "onSearchResultsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 247
    return-void
.end method

.method public onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "onSeasonDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 175
    return-void
.end method

.method public onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v0, "onSeasonsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 122
    return-void
.end method

.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    const-string/jumbo v0, "onShowDetailsAndSeasonsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 187
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v0, "onShowDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 181
    return-void
.end method

.method public onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 251
    const-string/jumbo v0, "onSimilarVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 253
    return-void
.end method

.method public onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 239
    const-string/jumbo v0, "onVideoHide"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 241
    return-void
.end method

.method public onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 221
    const-string/jumbo v0, "onVideoRatingSet"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 223
    return-void
.end method

.method public onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "onVideoSummaryFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 134
    return-void
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v0, "onVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 110
    return-void
.end method
