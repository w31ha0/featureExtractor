.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;
.super Ljava/lang/Object;
.source "KongUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;)V

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showBattleIntro()V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->access$102(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;Z)Z

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;->this$1:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;)Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->startAnimation(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;)Z

    goto :goto_0
.end method
