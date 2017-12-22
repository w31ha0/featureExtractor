.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "NfDrmManager.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

.field final synthetic val$sessionId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->val$sessionId:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 105
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "fetchLicense movie %d, result %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->val$sessionId:Ljava/lang/Long;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 106
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$300(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;ZLorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method
