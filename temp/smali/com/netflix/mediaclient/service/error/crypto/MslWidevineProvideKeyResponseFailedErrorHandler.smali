.class Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyResponseFailedErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;
.source "MslWidevineProvideKeyResponseFailedErrorHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;-><init>()V

    return-void
.end method

.method static canHandle(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

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
    .line 13
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public handle(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyResponseFailedErrorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaDrm provide key update failed. Unregister device, logout user, and kill app process after error is displayed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyResponseFailedErrorHandler;->handleKillApp(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    return-object v0
.end method
