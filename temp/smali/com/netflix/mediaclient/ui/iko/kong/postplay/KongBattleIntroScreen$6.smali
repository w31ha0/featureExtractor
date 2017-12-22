.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;
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
    .line 613
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$2100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 620
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$2200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 621
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->hasTimerExpired()Z

    move-result v0

    .line 622
    if-nez v0, :cond_1

    .line 623
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setUserInteraction()V

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$2300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)I

    move-result v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->startPlayback(IILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    .line 626
    return-void
.end method
