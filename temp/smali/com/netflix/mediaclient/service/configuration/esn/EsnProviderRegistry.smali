.class public final Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;
.super Ljava/lang/Object;
.source "EsnProviderRegistry.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_esn"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static createESN(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 5

    .prologue
    .line 38
    const-string/jumbo v0, "nf_esn"

    const-string/jumbo v1, "Create ESN"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string/jumbo v0, "nf_esn"

    const-string/jumbo v1, "JB MR2+ device with Widewine support, return ESN CDM implementation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isDevicePredeterminedToUseWV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v0, "nf_esn"

    const-string/jumbo v1, "JB MR2+ device with legacy Widewine support, return ESN CDM Nexus 7 implementation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;-><init>()V

    .line 66
    :goto_0
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->initialize(Landroid/content/Context;)V

    .line 72
    return-object v0

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 48
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getCryptoProvider(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_1

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException;-><init>()V

    throw v0

    .line 53
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_2

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1PhoneEsnProvider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1PhoneEsnProvider;-><init>()V

    goto :goto_0

    .line 55
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_3

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_3

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1TabletEsnProvider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1TabletEsnProvider;-><init>()V

    goto :goto_0

    .line 57
    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_4

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_4

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3PhoneEsnProvider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3PhoneEsnProvider;-><init>()V

    goto :goto_0

    .line 59
    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_5

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v2, :cond_5

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3TabletEsnProvider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL3TabletEsnProvider;-><init>()V

    goto :goto_0

    .line 62
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not able to create ESN provider for not supported combination. Device category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", Crypto provider: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
