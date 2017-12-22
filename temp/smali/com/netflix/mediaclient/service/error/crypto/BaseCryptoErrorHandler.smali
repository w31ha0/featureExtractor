.class abstract Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;
.super Ljava/lang/Object;
.source "BaseCryptoErrorHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;


# static fields
.field protected static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "nf_crypto_error_handler"

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getErrorMessageForFatalError()I
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getErrorSource()Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->getErrorMessageForFatalError(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;)I

    move-result v0

    return v0
.end method

.method abstract getErrorSource()Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
.end method

.method getForceStopTask(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$1;-><init>(Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;Landroid/content/Context;)V

    .line 46
    new-instance v1, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;-><init>(Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;Ljava/lang/Runnable;Landroid/content/Context;)V

    return-object v1
.end method

.method abstract getStatusCode()Lcom/netflix/mediaclient/StatusCode;
.end method

.method protected handleKillApp(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->createMediaDrmErrorMessage(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->logHandledException(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getForceStopTask(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getErrorMessageForFatalError()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V

    return-object v0
.end method

.method protected handleLogoutUserAndKillApp(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->createMediaDrmErrorMessage(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->logHandledException(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->logoutUser()V

    .line 86
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getForceStopTask(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getErrorMessageForFatalError()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V

    return-object v0
.end method

.method protected logHandledException(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->getErrorLogger()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected logHandledException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->getErrorLogger()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->createMediaDrmErrorMessage(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 63
    return-void
.end method
