.class public final Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;
.super Ljava/lang/Object;
.source "CryptoManagerRegistry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl"

.field private static sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized createCryptoInstance(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V
    .locals 5

    .prologue
    .line 40
    const-class v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v2, "CryptoManagerRegistry::createCryptoInstance:  CryptoManager can not be instantiated more than once!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit v1

    return-void

    .line 48
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 49
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry$1;->$SwitchMap$com$netflix$mediaclient$service$configuration$crypto$CryptoProvider:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 72
    const-string/jumbo v2, "nf_msl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not supported crypto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 51
    :pswitch_0
    :try_start_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->couldRecoverWideVine(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v2, "Legacy crypto provider, unable to create Crypto, but Widevine was used before, we may be able to recover"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v2, "Legacy crypto provider, unable to create Crypto"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 64
    :pswitch_1
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v2, "CryptoManagerRegistry::createCryptoInstance: create CryptoManager Widevine L1 starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineL1CryptoManager;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-direct {v0, p0, v2, p2}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineL1CryptoManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    .line 76
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->init()V

    .line 77
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v2, "CryptoManagerRegistry::createCryptoInstance: create CryptoManager done."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 68
    :pswitch_2
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v2, "CryptoManagerRegistry::createCryptoInstance: create CryptoManager Widevine L3 starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineL3CryptoManager;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-direct {v0, p0, v2, p2}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineL3CryptoManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 3

    .prologue
    .line 87
    const-class v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "CryptoManagerRegistry:: crypto manager is NULL!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->sCryptoManager:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
