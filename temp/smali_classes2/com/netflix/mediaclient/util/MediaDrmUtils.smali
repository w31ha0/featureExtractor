.class public Lcom/netflix/mediaclient/util/MediaDrmUtils;
.super Ljava/lang/Object;
.source "MediaDrmUtils.java"


# static fields
.field public static final DRM_SYSTEM_ID_FORCE_LEGACY:Ljava/lang/String; = "FORCE_LEGACY"

.field public static final DRM_SYSTEM_ID_LEGACY:Ljava/lang/String; = "LEGACY"

.field public static final DRM_SYSTEM_ID_M_PLUS_MGK:Ljava/lang/String; = "M_PLUS_MGK"

.field private static final NETFLIX_MEDIADRM_APPID:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final NEXUS7_DEB_DEVICE:Ljava/lang/String; = "deb"

.field private static final NEXUS7_FLO_DEVICE:Ljava/lang/String; = "flo"

.field public static final PROPERTY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final PROPERTY_SYSTEM_ID:Ljava/lang/String; = "systemId"

.field public static final SECURITY_LEVEL_FAILURE_TO_RETRIEVE:Ljava/lang/String; = "SECURITY_LEVEL_GET_FAILURE"

.field public static final SYSTEM_ID_4266:Ljava/lang/String; = "4266"

.field public static final SYSTEM_ID_FAILURE_TO_RETRIEVE:Ljava/lang/String; = "SYSTEMID_GET_FAILURE"

.field private static TAG:Ljava/lang/String;

.field private static final WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

.field public static final WIDEVINE_SCHEME:Ljava/util/UUID;

.field private static sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field private static sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field private static sPreviousSystemId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 28
    const-string/jumbo v0, "MediaDrmUtils"

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;-><init>(Lcom/netflix/mediaclient/util/MediaDrmUtils$1;)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static couldRecoverWideVine(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z
    .locals 1

    .prologue
    .line 601
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x1

    .line 605
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->wasWidevineEverUsedBefore(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static drmSupportsHd()Z
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$200(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z

    move-result v0

    return v0
.end method

.method public static dumpKeyStatus(Ljava/lang/String;Landroid/media/MediaDrm;[B)V
    .locals 3

    .prologue
    .line 406
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LicenseType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "PersistAllowed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "RenewalServerUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "LicenseDurationRemaining"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "RenewAllowed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "PlaybackDurationRemaining"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "PlayAllowed"

    aput-object v2, v0, v1

    .line 415
    const-string/jumbo v0, "SessionId"

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 416
    const-string/jumbo v0, "===== key status ======"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    const-string/jumbo v0, "===== end of key status ======"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const-string/jumbo v0, "failed to queryKeyStatus()"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized findCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 6

    .prologue
    .line 256
    const-class v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidewineSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider: Widevine is NOT supported on this device."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_0
    monitor-exit v1

    return-object v0

    .line 261
    :cond_0
    const/4 v0, 0x1

    .line 263
    :try_start_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL1Enabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Widevine L1 is enabled, check if we failed before"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineL1FailedOnDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Widevine L1 was whitelisted, but it failed on this device, see fallback option."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineL3FailedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Widevine L3 failed on this device, fallback to MGK."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    .line 274
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Widevine L1 did not failed on this device and L1 was whitelisted, check if device really supports L1. PlayerRequiredAdaptivePlayback : %b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 276
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineSecurityLevelL1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider:Widevine L1 will be used"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    .line 282
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider:Widevine L1 is not supported on device or it has problem in playback, go for fallback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 287
    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Widevine L1 is NOT enabled, see fallback option."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    :cond_4
    invoke-static {p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isValidWidevineL3SystemID(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider: for kitkat: Widevine L3"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    .line 301
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCryptoProvider: use legacy crypto because KK device can not support L3!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static getAndroidVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string/jumbo v0, ""

    .line 114
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 2

    .prologue
    .line 241
    const-class v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-nez v0, :cond_0

    .line 242
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->findCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 244
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDeviceId(Landroid/media/MediaDrm;)[B
    .locals 3

    .prologue
    .line 459
    if-nez p0, :cond_1

    .line 460
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x0

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 463
    :cond_1
    const-string/jumbo v0, "deviceUniqueId"

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 464
    if-nez v0, :cond_0

    .line 469
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "MediaDrm device ID is null! It should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDeviceType(Landroid/media/MediaDrm;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    if-nez p0, :cond_0

    .line 479
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    .line 486
    :goto_0
    return-object v0

    .line 482
    :cond_0
    const-string/jumbo v0, "systemId"

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrmInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 328
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    .line 329
    const-string/jumbo v0, "WVL3"

    .line 333
    :goto_0
    return-object v0

    .line 330
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_1

    .line 331
    const-string/jumbo v0, "WVL1"

    goto :goto_0

    .line 333
    :cond_1
    const-string/jumbo v0, "PLRD"

    goto :goto_0
.end method

.method public static getNewMediaDrmInstance(Landroid/media/MediaDrm$OnEventListener;)Landroid/media/MediaDrm;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 396
    if-eqz p0, :cond_0

    .line 397
    invoke-virtual {v0, p0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 399
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->setSecurityLevelIfNeeded(Landroid/media/MediaDrm;)V

    .line 400
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->setAppId(Landroid/media/MediaDrm;)V

    .line 401
    return-object v0
.end method

.method private static final getPreviousDrm(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 503
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eqz v0, :cond_0

    .line 504
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "This should not be called twice, we already found previous DRM!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    return-void

    .line 508
    :cond_0
    const-string/jumbo v0, "nf_drm_system_id"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousSystemId:Ljava/lang/String;

    .line 509
    const-string/jumbo v0, "nf_drm_crypto_provider"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->fromName(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 511
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "currentDrmSystem: %s, previousDrmSystem: %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v4, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "N/A"

    goto :goto_1
.end method

.method public static getPropertyByteArrayAsStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 453
    :goto_0
    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to retrieve MediaDrm property %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 453
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPropertyStringSafely(Landroid/media/MediaDrm;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 440
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to retrieve MediaDrm property %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 443
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportedCryptoProvider()I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    goto :goto_0
.end method

.method public static getUsedCryptoProvider()I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    return v0
.end method

.method public static getWidevineSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$100(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo v0, ""

    .line 100
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$100(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasEsnChanged(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;)Z
    .locals 1

    .prologue
    .line 525
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->hasEsnChangedInternal(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;)Z

    move-result v0

    .line 526
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->updateDrm(Landroid/content/Context;)V

    .line 527
    return v0
.end method

.method private static hasEsnChangedInternal(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 532
    if-nez p1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 536
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getPreviousEsn()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    .line 539
    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cached ESN is same as existing ESN"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_2
    if-nez v2, :cond_3

    .line 545
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "We do NOT have old ESN, new installation..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getPreviousDrm(Landroid/content/Context;)V

    .line 550
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eqz v2, :cond_0

    .line 554
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousSystemId:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isLegacyDrmSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 555
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Previous DRM is legacy, ESN is changed"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 556
    goto :goto_0

    .line 559
    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->getSystemId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 561
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Widevine System ID changed, ESN is changed"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 562
    goto :goto_0

    .line 566
    :cond_5
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Widevine System ID is NOT changed, verify if security level is changed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v3, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v2, v3, :cond_6

    .line 569
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Same crypto provider %s. No change!"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 572
    :cond_6
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Crypto provider is changed from %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sPreviousCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 573
    goto/16 :goto_0
.end method

.method public static isDevicePredeterminedToUseWV()Z
    .locals 2

    .prologue
    .line 319
    const-string/jumbo v0, "flo"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "deb"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLegacyDrmSystem(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 495
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FORCE_LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "M_PLUS_MGK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidWidevineL3SystemID(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$100(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Ljava/lang/String;

    move-result-object v2

    .line 165
    sget-object v3, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "MediaDrm system ID is: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    const-string/jumbo v3, "4266"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    if-eqz p0, :cond_2

    .line 174
    sget-object v2, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Device is using Widevine L3 4266! Valid %b per config"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL3SystemId4266Supported()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL3SystemId4266Supported()Z

    move-result v0

    goto :goto_0

    .line 177
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Device is using Widevine L3 4266! Not valid, config is missing! Go with allowed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 178
    goto :goto_0

    .line 182
    :cond_3
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 187
    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 190
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Valid System ID."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 191
    goto :goto_0
.end method

.method private static isWidevineL1FailedOnDevice(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 202
    const-string/jumbo v0, "disable_widevine"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isWidevineL3FailedOnDevice(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 212
    const-string/jumbo v0, "nf_disable_widevine_l3_v3"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWidevineSecurityLevelL1()Z
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$200(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z

    move-result v0

    return v0
.end method

.method public static isWidevineSecurityLevelL3()Z
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$300(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z

    move-result v0

    return v0
.end method

.method public static isWidewineSupported()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->access$400(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z

    move-result v0

    return v0
.end method

.method public static removeWideVineFailedPrefs(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 591
    const-string/jumbo v0, "disable_widevine"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 592
    const-string/jumbo v0, "nf_disable_widevine_l3_v3"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 593
    return-void
.end method

.method public static safeBase64Encode([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 429
    const-string/jumbo v0, "[null]"

    .line 433
    :goto_0
    return-object v0

    .line 430
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 431
    const-string/jumbo v0, "[empty]"

    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static setAppId(Landroid/media/MediaDrm;)V
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 385
    :try_start_0
    const-string/jumbo v0, "appId"

    const-string/jumbo v1, "com.netflix.mediaclient"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string/jumbo v1, "WidevineMediaDrm"

    const-string/jumbo v2, "ignore exceptions"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setSecurityLevelIfNeeded(Landroid/media/MediaDrm;)V
    .locals 2

    .prologue
    .line 344
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 345
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    .line 346
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->setSecurityLevelL3(Landroid/media/MediaDrm;)V

    .line 348
    :cond_0
    return-void
.end method

.method private static setSecurityLevelL3()V
    .locals 4

    .prologue
    .line 357
    :try_start_0
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 358
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Forcing L3 security level..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string/jumbo v1, "securityLevel"

    const-string/jumbo v2, "L3"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to create MediaDrm to set security level L3"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static setSecurityLevelL3(Landroid/media/MediaDrm;)V
    .locals 2

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MediaDrm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Forcing L3 security level..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string/jumbo v0, "securityLevel"

    const-string/jumbo v1, "L3"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private static updateDrm(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 586
    const-string/jumbo v0, "nf_drm_system_id"

    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE:Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 587
    const-string/jumbo v0, "nf_drm_crypto_provider"

    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->sCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    return-void
.end method

.method public static useWidevineSecurityLevelL1(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z
    .locals 1

    .prologue
    .line 126
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineSecurityLevelL1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static wasWidevineEverUsedBefore(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 617
    const-string/jumbo v2, "nf_drm_system_id"

    invoke-static {p0, v2, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "4266"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v0

    .line 623
    :cond_1
    const-string/jumbo v2, "nf_drm_acckeymap"

    invoke-static {p0, v2, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 625
    goto :goto_0

    .line 629
    :cond_2
    const-string/jumbo v2, "nf_msl_store_json"

    invoke-static {p0, v2, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 631
    goto :goto_0
.end method
