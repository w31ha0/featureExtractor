.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 3253
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;)V
    .locals 4

    .prologue
    .line 3258
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 3260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 3261
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Episode selector was dismissed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    .line 3267
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 3269
    :cond_0
    return-void

    .line 3265
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto :goto_0
.end method
