.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;->val$sessionId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;->val$sessionId:[B

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->getDrmSessionWithSessionId([B)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    .line 378
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->postKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method
