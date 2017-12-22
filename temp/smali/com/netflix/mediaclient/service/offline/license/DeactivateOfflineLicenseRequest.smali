.class public final Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;
.super Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;
.source "DeactivateOfflineLicenseRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_offlineLicenseMgr"

.field static final USE_OFFLINE_SECURE_STOP:Z


# instance fields
.field private final mWasDownloadedCompletely:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZLcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 41
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p8

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mKeySetId:[B

    .line 44
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mWasDownloadedCompletely:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->handleDeactivateResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private handleDeactivateResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :cond_0
    invoke-virtual {p0, v1, v1, p2}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 116
    return-void
.end method


# virtual methods
.method public sendRequest()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    :try_start_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivate playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mKeySetId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mKeySetId:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 90
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "handleLicenseResponse keySetId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mKeySetId:[B

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 64
    const-string/jumbo v0, ""

    .line 66
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mLiceneseLink:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mWasDownloadedCompletely:Z

    new-instance v4, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;-><init>(Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->deactivateOfflineLicense(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 84
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "deactivate getKeyRequest NotProvisionedException"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mOfflineLicenseManagerCallback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;->onOfflineLicenseRequestDone(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 86
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 87
    const-string/jumbo v2, "nf_offlineLicenseMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeactivateOfflineLicenseRequest Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
