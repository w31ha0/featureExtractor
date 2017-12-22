.class public Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
.super Ljava/lang/Object;
.source "NfDrmSession.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_CLOSED:I = 0x1

.field public static final STATE_ERROR:I = 0x0

.field public static final STATE_OPENED:I = 0x3

.field public static final STATE_OPENED_WITH_KEYS:I = 0x4

.field public static final STATE_OPENING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NfPlayerDrmManager"

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field private inUse:Z

.field private lastException:Ljava/lang/Exception;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mIdHigh:I

.field private mIdLow:I

.field private mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

.field private mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

.field private mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

.field private mMovieId:Ljava/lang/Long;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private mediaDrm:Landroid/media/MediaDrm;

.field private sessionId:[B

.field private sessionInitTimeMs:J

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->WIDEVINE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    .line 82
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 83
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mMovieId:Ljava/lang/Long;

    .line 84
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    .line 85
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    .line 86
    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 87
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionInitTimeMs:J

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->openSessionGetKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->postProvisionRequest()V

    goto :goto_0
.end method

.method public static newWidevineDrmSession(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;-><init>(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)V

    return-object v0
.end method

.method private onError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->lastException:Ljava/lang/Exception;

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;->licenseError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 204
    :cond_0
    iput v4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->lastException:Ljava/lang/Exception;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method private openSessionGetKeyRequest()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    .line 150
    new-instance v0, Landroid/media/MediaCrypto;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    invoke-direct {v0, v1, v2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 151
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->postKeyRequest()V

    .line 153
    return-void
.end method

.method private postProvisionRequest()V
    .locals 5

    .prologue
    .line 156
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "postProvisionRequest ..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    iget v4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method private setCachedLicenseIfAny()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getLicenseData()[B

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->provideKeyResponse([B)V

    .line 117
    :cond_0
    return-void
.end method

.method private setInUse(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    .line 121
    return-void
.end method

.method private setLicenseListener(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    .line 110
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    .line 129
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 142
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public compareTo(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;)I
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 275
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionAgeInMs()J

    move-result-wide v2

    .line 276
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionAgeInMs()J

    move-result-wide v4

    .line 277
    iget-boolean v6, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    if-nez v6, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    iget-boolean v6, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    if-nez v6, :cond_2

    iget-boolean v6, p1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    if-eqz v6, :cond_2

    move v0, v1

    .line 280
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getPriority()I

    move-result v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getPriority()I

    move-result v7

    if-le v6, v7, :cond_3

    move v0, v1

    .line 282
    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getPriority()I

    move-result v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getPriority()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 285
    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    move v0, v1

    .line 286
    goto :goto_0

    .line 287
    :cond_4
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 290
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->compareTo(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;)I

    move-result v0

    return v0
.end method

.method failedToFetch(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;->licenseError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 252
    :cond_0
    return-void
.end method

.method getInUse()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    return v0
.end method

.method public getLastExceptionIfAny()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->lastException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getLicenseContext()Lcom/netflix/mediaclient/service/player/drm/LicenseContext;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    return-object v0
.end method

.method public getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method getMovieId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mMovieId:Ljava/lang/Long;

    return-object v0
.end method

.method getPriority()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method getSessionAgeInMs()J
    .locals 4

    .prologue
    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionInitTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getSessionId()[B
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    return-object v0
.end method

.method isClosedOrError()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 255
    iget v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLicenseAcquired()Z
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method postKeyRequest()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x2

    .line 161
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v2, "postKeyRequest start."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    .line 165
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    sget-object v3, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v1

    .line 178
    :goto_0
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getDrmHeader()[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setChallenge([B)V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "postKeyRequest succeeds."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 168
    :cond_0
    iget v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 169
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const/4 v4, 0x3

    .line 171
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V

    .line 172
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "request LDL."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    move v4, v0

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V

    .line 175
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "request STANDARD."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    move v4, v0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "keyRequest has NotProvisionedException."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    throw v0
.end method

.method provideKeyResponse([B)V
    .locals 2

    .prologue
    .line 232
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "provideKeyResponse start."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 235
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 236
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "provideKeyResponse succeeds."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mMovieId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;->licenseAcquired(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->onError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method provideProvisionResponse([B)V
    .locals 2

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->openSessionGetKeyRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->onError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->onError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setListenerAndUseSession(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->setLicenseListener(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;)V

    .line 105
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->setCachedLicenseIfAny()V

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->setInUse(Z)V

    .line 107
    return-void
.end method
