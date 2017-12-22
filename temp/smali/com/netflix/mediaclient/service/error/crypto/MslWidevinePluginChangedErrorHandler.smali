.class Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;
.source "MslWidevinePluginChangedErrorHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;-><init>()V

    return-void
.end method

.method static canHandle(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

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
    .line 18
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public handle(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 4

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaDrm Widevine plugin changed, unregister device and logout user"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->createMediaDrmErrorMessage(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;->logHandledException(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;->getForceStopTask(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    const v3, 0x7f090104

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V

    return-object v0
.end method
