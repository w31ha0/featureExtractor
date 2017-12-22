.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;
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
    .line 389
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;->val$sessionId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;->val$sessionId:[B

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->getDrmSessionWithSessionId([B)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getMovieId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$1100(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V

    .line 397
    :cond_0
    return-void
.end method
