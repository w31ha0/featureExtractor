.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$1;
.super Ljava/lang/Object;
.source "KongUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isPostPlayPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "KongUnlockScreen"

    const-string/jumbo v1, "Post play is in paused state. Ignoring request to start unlock animation."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;)Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->startAnimation(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;)Z

    goto :goto_0
.end method
