.class Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;
.super Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;
.source "RefreshOfflineLicenseRequest.java"


# instance fields
.field mInvokedFrom:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Landroid/os/Handler;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 35
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v11}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mKeySetId:[B

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mInvokedFrom:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    .line 39
    return-void
.end method


# virtual methods
.method protected sendLicenseRequest()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 52
    :try_start_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RefreshOfflineLicenseRequest sendLicenseRequest playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mSessionId:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mDrmHeader:[B

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mOptionalParams:Ljava/util/HashMap;

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mInvokedFrom:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mLiceneseLink:Ljava/lang/String;

    new-instance v4, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1;-><init>(Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->refreshOfflineLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 75
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "RefreshOfflineLicenseRequest getKeyRequest NotProvisionedException"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_1
    invoke-virtual {p0, v6, v6, v0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 77
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 78
    const-string/jumbo v2, "nf_offlineLicenseMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RefreshOfflineLicenseRequest Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendRequest()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mKeySetId:[B

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->tryCreateDrmSession([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->sendLicenseRequest()V

    .line 47
    :cond_0
    return-void
.end method
