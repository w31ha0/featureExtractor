.class Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "PlayActionHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

.field private final trackId:Ljava/lang/String;

.field final synthetic val$targetDialUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 126
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->play(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    iget-object v0, v0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 130
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 119
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->play(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    iget-object v0, v0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 123
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 133
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->play(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    iget-object v0, v0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 137
    return-void
.end method
