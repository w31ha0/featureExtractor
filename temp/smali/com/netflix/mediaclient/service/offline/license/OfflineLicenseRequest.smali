.class public Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;
.super Ljava/lang/Object;
.source "OfflineLicenseRequest.java"


# static fields
.field static final TAG:Ljava/lang/String; = "nf_offlineLicenseMgr"


# instance fields
.field private mAborted:Z

.field protected final mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field protected mDrmHeader:[B

.field final mDxId:Ljava/lang/String;

.field protected mKeySetId:[B

.field protected mLiceneseLink:Ljava/lang/String;

.field protected mMediaDrm:Landroid/media/MediaDrm;

.field final mOfflineLicenseManagerCallback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;

.field final mOfflineLicenseRequestCallback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;

.field protected final mOptionalParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mOxId:Ljava/lang/String;

.field final mPlayableId:Ljava/lang/String;

.field protected mSessionId:[B

.field protected final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOptionalParams:Ljava/util/HashMap;

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOfflineLicenseManagerCallback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;

    .line 58
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOfflineLicenseRequestCallback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;

    .line 59
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mDrmHeader:[B

    .line 60
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mLiceneseLink:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 62
    iput-object p7, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    .line 63
    iput-object p8, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mWorkHandler:Landroid/os/Handler;

    .line 64
    iput-object p9, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOxId:Ljava/lang/String;

    .line 65
    iput-object p10, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mDxId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private closeMediaDrmSession()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closing mediaDrm session for mPlayableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    .line 228
    :cond_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error closing mediaDrm Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAborted()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mAborted:Z

    return v0
.end method

.method private sendLicenseActivateIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 231
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkActivate:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 232
    :cond_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "skip sending activate on error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    instance-of v0, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;

    if-eqz v0, :cond_1

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkActivate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->activateOfflineLicense(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryCreateDrmSession()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/ResourceBusyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    array-length v1, v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v5, v5, v1}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 212
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "tryCreateDrmSession DrmSession invalid"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    const-string/jumbo v2, "nf_offlineLicenseMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createDrmSession failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v5, v5, v1}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 204
    :catch_1
    move-exception v1

    .line 205
    const-string/jumbo v2, "nf_offlineLicenseMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createDrmSession failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_RESOURCE_BUSY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v5, v5, v1}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abortRequestAndCloseMediaSession()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mAborted:Z

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->closeMediaDrmSession()V

    .line 83
    return-void
.end method

.method protected doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 165
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doLicenseResponseCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->closeMediaDrmSession()V

    .line 167
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->setKeySetId([B)V

    .line 170
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->sendLicenseActivateIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOfflineLicenseManagerCallback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p3}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;->onOfflineLicenseRequestDone(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOfflineLicenseRequestCallback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;

    invoke-interface {v0, p0, p3}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;->onLicenseRequestDone(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 175
    :cond_1
    return-void
.end method

.method protected handleLicenseResponse(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "handleLicenseResponse request was aborted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLicenseData()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 129
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLicenseData()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLicenseData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mKeySetId:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mKeySetId:[B

    array-length v1, v1

    if-nez v1, :cond_2

    .line 134
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mKeySetId:[B

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mKeySetId:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mKeySetId:[B

    array-length v0, v0

    if-nez v0, :cond_5

    .line 138
    :cond_3
    sget-object p2, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_KEY_SET_EMPTY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 139
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "handleLicenseResponse provideKeyResponse returned null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mKeySetId:[B

    invoke-virtual {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 141
    :cond_5
    :try_start_1
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->dumpKeyStatus(Ljava/lang/String;Landroid/media/MediaDrm;[B)V

    .line 142
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "handleLicenseResponse keySetId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mKeySetId:[B

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    sget-object p2, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 150
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "handleLicenseResponse provideKeyResponse NotProvisionedException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    :cond_6
    :try_start_2
    sget-object p2, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_LICENSE_EMPTY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 146
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "handleLicenseResponse license is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    sget-object p2, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_SERVER_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 153
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "handleLicenseResponse provideKeyResponse DeniedByServerException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    :catch_2
    move-exception v0

    .line 155
    sget-object p2, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_EXCEPTION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 156
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleLicenseResponse provideKeyResponse Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isDrmSessionOpen()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendLicenseRequest()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 86
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 88
    :try_start_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendLicenseRequest playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mDrmHeader:[B

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOptionalParams:Ljava/util/HashMap;

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mLiceneseLink:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1;-><init>(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchOfflineLicense(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM_NOT_PROVISIONED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 109
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "deactivate getKeyRequest NotProvisionedException"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    invoke-virtual {p0, v6, v6, v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 111
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 112
    const-string/jumbo v2, "nf_offlineLicenseMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendLicenseRequest Exception"

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
    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->tryCreateDrmSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->sendLicenseRequest()V

    .line 73
    :cond_0
    return-void
.end method

.method protected tryCreateDrmSession([B)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 182
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "tryCreateDrmSession using keySetId"

    invoke-static {v1, v2, p1}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 183
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->tryCreateDrmSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 186
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mSessionId:[B

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->dumpKeyStatus(Ljava/lang/String;Landroid/media/MediaDrm;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    const-string/jumbo v2, "nf_offlineLicenseMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restorekeys failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v5, v5, v1}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->doLicenseResponseCallback(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
