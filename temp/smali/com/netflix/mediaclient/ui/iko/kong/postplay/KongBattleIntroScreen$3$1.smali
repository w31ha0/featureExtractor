.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3$1;
.super Ljava/lang/Object;
.source "KongBattleIntroScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isPostPlayPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const-string/jumbo v0, "KongBattleIntroScreen"

    const-string/jumbo v1, "Post play is in paused state. Ignoring request to start countdown timer."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1802(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;I)I

    .line 511
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->startTimer()V

    goto :goto_0
.end method
