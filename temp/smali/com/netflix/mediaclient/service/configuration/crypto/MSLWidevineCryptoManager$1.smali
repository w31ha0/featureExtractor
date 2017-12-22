.class Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;
.super Ljava/lang/Object;
.source "MSLWidevineCryptoManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Blacklisted Widevine plugin? Do NOT use it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->access$000(Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;)V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "15002. Provisiong failed with status code 400 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public done([B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    if-eqz p1, :cond_1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->init()V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server declined Widewine provisioning request. Server URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Fatal error on seting Widewine provisioning response"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 153
    :cond_1
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Failed to get provisiong certificate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
