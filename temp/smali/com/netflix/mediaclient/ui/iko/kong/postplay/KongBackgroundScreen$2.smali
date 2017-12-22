.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;
.super Ljava/lang/Object;
.source "KongBackgroundScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setUserInteraction()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isInGearSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-eq v0, v1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cancelCurrentAnimation()V

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showBattleIntro()V

    .line 130
    :cond_2
    :goto_0
    return-void

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isEndOfPlayPostPlay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cleanup()V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->access$002(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;Z)Z

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->hide()V

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cleanup()V

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    goto :goto_0
.end method
