.class Lcom/netflix/mediaclient/service/error/crypto/LegacyCryptoWhenWidevineWasUsedBeforeErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;
.source "LegacyCryptoWhenWidevineWasUsedBeforeErrorHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;-><init>()V

    return-void
.end method

.method static canHandle(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public handle(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/LegacyCryptoWhenWidevineWasUsedBeforeErrorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Device is unable to used Widevine, but we detected that Widevine was used in past."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/LegacyCryptoWhenWidevineWasUsedBeforeErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->createMediaDrmErrorMessage(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/error/crypto/LegacyCryptoWhenWidevineWasUsedBeforeErrorHandler;->logHandledException(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/error/crypto/LegacyCryptoWhenWidevineWasUsedBeforeErrorHandler;->handleKillApp(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    return-object v0
.end method
