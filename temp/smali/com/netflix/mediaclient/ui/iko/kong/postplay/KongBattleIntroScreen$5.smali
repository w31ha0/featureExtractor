.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;
.super Ljava/lang/Object;
.source "KongBattleIntroScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->hasTimerExpired()Z

    move-result v5

    .line 591
    if-nez v5, :cond_1

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setUserInteraction()V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleWinVideoId()I

    move-result v1

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleLoseVideoId()I

    move-result v2

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleWinTrackId()I

    move-result v3

    .line 598
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleLoseTrackId()I

    move-result v4

    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$2000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 601
    :goto_0
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v6}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$2000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 603
    :goto_1
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v6, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 604
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v0, v3, v2, v5}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->startPlayback(IILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    .line 610
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 600
    goto :goto_0

    :cond_3
    move v3, v4

    .line 601
    goto :goto_1

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v4, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->POWERUP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-eq v0, v4, :cond_5

    if-ne v1, v2, :cond_6

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->startPlayback(IILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    goto :goto_2

    .line 608
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showGearSelection()V

    goto :goto_2
.end method
