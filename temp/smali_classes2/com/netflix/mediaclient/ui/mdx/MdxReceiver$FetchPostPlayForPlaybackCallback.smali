.class Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MdxReceiver.java"


# instance fields
.field private final mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private processed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;->processed:Z

    .line 195
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 196
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 201
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;->processed:Z

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_NEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "id"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.RDP_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->sendShowAndDisableIntent(Landroid/content/Context;)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;->processed:Z

    .line 212
    :cond_0
    return-void
.end method
