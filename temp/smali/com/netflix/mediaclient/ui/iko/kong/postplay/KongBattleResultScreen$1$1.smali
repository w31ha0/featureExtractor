.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1$1;
.super Ljava/lang/Object;
.source "KongBattleResultScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isPostPlayPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "KongBattleResultScreen"

    const-string/jumbo v1, "Post play is in paused state. Ignoring request to start battle intro animation after result."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->playBattleAgainSound()V

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showBattleIntro()V

    goto :goto_0
.end method
