.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->areResourcesSuccessfullyLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->execute(Ljava/lang/Runnable;)V

    .line 1220
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
