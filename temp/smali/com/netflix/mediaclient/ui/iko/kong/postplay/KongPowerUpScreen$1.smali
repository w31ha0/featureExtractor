.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$1;
.super Ljava/lang/Object;
.source "KongPowerUpScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isPostPlayPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string/jumbo v0, "KongPowerUpScreen"

    const-string/jumbo v1, "Post play is in paused state. Ignoring request to start power up animation."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->startAnimation()Z

    goto :goto_0
.end method
