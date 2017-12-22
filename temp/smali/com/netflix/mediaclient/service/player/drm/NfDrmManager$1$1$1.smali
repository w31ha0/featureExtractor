.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

.field final synthetic val$fetchLicenseSuceeded:Z

.field final synthetic val$license:Lorg/json/JSONObject;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;ZLorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$fetchLicenseSuceeded:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$license:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->this$1:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->this$2:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;->val$sessionId:Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->getDrmSession(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 115
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "fetchLicense returned, no matching session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$fetchLicenseSuceeded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$license:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    .line 119
    :cond_2
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "fetchLicense failed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->failedToFetch(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getLicenseContext()Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1$1;->val$license:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->addLicenseReponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getLicenseData()[B

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->provideKeyResponse([B)V

    goto :goto_0
.end method
