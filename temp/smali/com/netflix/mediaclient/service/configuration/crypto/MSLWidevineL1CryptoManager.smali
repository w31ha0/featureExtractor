.class public Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineL1CryptoManager;
.super Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;
.source "MSLWidevineL1CryptoManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected setSecurityLevel()V
    .locals 2

    .prologue
    .line 20
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "No need to set security level L1..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method
