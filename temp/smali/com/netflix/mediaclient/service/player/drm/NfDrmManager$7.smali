.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$7;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$7;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 507
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "provision request aborted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$7;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$1200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V

    .line 509
    return-void
.end method

.method public done([B)V
    .locals 2

    .prologue
    .line 501
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "provision request has reponse."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$7;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$1200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V

    .line 503
    return-void
.end method
