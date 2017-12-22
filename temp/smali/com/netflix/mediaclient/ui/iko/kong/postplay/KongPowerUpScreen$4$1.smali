.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4$1;
.super Ljava/lang/Object;
.source "KongPowerUpScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isPostPlayPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string/jumbo v0, "KongPowerUpScreen"

    const-string/jumbo v1, "Post play is in paused state. Ignoring request to start battle intro animation."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->playBattleTitleSound()V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showBattleIntro()V

    goto :goto_0
.end method
