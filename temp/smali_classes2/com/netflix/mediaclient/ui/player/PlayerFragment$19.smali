.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 3183
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeSelectedForPlayback(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3235
    :cond_0
    :goto_0
    return-void

    .line 3194
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 3196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3197
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Request to play same episode, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 3199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto :goto_0

    .line 3201
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3202
    const-string/jumbo v0, "SPY-8951 - mScreen is null inside onEpisodeSelectedForPlayback. Ignoring playback."

    .line 3203
    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3206
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 3210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->resetCurrentPlayback()V

    .line 3212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    .line 3213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    .line 3215
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 3216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setSeekbarTrackingEnabled(Z)V

    .line 3218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-static {v1, p2, v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2502(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "AssetExtra"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 3226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 3228
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3229
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->postPlayDismissed()V

    .line 3231
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->reset()V

    .line 3232
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->hide()V

    goto/16 :goto_0
.end method
