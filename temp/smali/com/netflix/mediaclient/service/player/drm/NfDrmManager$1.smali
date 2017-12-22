.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;
.super Landroid/os/Handler;
.source "NfDrmManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getSessionId(II)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 74
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->getSessionId(II)Ljava/lang/Long;

    move-result-object v1

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/media/MediaDrm$ProvisionRequest;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$000(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaDrm$ProvisionRequest;

    .line 85
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$100(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Landroid/media/MediaDrm$ProvisionRequest;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->failedToFetch(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    .line 97
    const-string/jumbo v2, "NfPlayerDrmManager"

    const-string/jumbo v3, "about to fetchLicense for session %s, challenge [%d], %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 99
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getBase64Challenge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 100
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getmLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    move-result-object v5

    aput-object v5, v4, v7

    .line 97
    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$400(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;

    invoke-direct {v3, p0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1$1;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;Ljava/lang/Long;)V

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchLicense(Lcom/netflix/mediaclient/service/player/drm/LicenseContext;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    .line 145
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isAndroid6AndHihger()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    instance-of v2, v0, Landroid/media/MediaDrmResetException;

    if-eqz v2, :cond_2

    .line 147
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v2, "DrmSession reported MediaDrmResetException with session %d"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$500(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Landroid/media/MediaDrm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$600(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)V

    goto/16 :goto_0

    .line 159
    :cond_2
    const-string/jumbo v2, "NfPlayerDrmManager"

    const-string/jumbo v3, "DrmSession reported Exception %s with session %d"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 162
    :cond_3
    const-string/jumbo v2, "NfPlayerDrmManager"

    const-string/jumbo v3, "DrmSession reported Exception %s with session %d"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 166
    :cond_4
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "DrmSession reported error, unknown cause.BUG!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v0

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
