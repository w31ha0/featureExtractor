.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

.field final synthetic val$response:[B


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;->val$response:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;->val$response:[B

    if-eqz v0, :cond_0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$500(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Landroid/media/MediaDrm;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;->val$response:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$002(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Z)Z

    .line 525
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "provision failed %s"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
