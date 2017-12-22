.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PlayerFragment.java"


# instance fields
.field private final playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 1

    .prologue
    .line 3334
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 3335
    const-string/jumbo v0, "PlayerFragment"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 3336
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 3337
    return-void
.end method

.method private handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 3360
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 3354
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3355
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3356
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 3341
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3342
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3343
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 3347
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3348
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3349
    return-void
.end method
