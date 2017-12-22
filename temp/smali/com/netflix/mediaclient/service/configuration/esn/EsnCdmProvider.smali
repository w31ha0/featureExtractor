.class public abstract Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.source "EsnCdmProvider.java"


# static fields
.field private static final CATEGORY_TYPE_PHONE:Ljava/lang/String; = "P-"

.field private static final CATEGORY_TYPE_TABLET:Ljava/lang/String; = "T-"

.field private static final CRYPTO_PROVIDER_L3:Ljava/lang/String; = "L3-"

.field private static final DASH:Ljava/lang/String; = "-"

.field private static final DEVICE_TYPE_PREFIX:Ljava/lang/String; = "PRV-"


# instance fields
.field protected mCdmModelId:Ljava/lang/String;

.field protected mCryptoProvider:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field protected mDrmSystemId:Ljava/lang/String;

.field protected mDrmUniqueDeviceId:Ljava/lang/String;

.field protected mPhone:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;-><init>()V

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V

    .line 45
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;->getDeviceId()[B

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmSystemId:Ljava/lang/String;

    .line 48
    if-nez v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MediaDrm.uniqueDeviceId is null! We can not use this ESN implementation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmUniqueDeviceId:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->findCdmModelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private findCdmModelId()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2d

    const/4 v3, 0x0

    .line 56
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mPhone:Z

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mPhone:Z

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "PRV-"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mPhone:Z

    if-eqz v0, :cond_3

    .line 63
    const-string/jumbo v0, "P-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v2, :cond_1

    .line 69
    const-string/jumbo v0, "L3-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 79
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getManufactorer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmSystemId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_3
    const-string/jumbo v0, "T-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmUniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelId:Ljava/lang/String;

    return-object v0
.end method

.method protected generateEsnPrefix()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->ESN_PREFIX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mPhone:Z

    if-eqz v1, :cond_2

    .line 102
    const-string/jumbo v1, "P-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_0

    .line 108
    const-string/jumbo v1, "L3-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 115
    if-lez v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mEsnPrefix:Ljava/lang/String;

    .line 119
    :cond_1
    return-void

    .line 104
    :cond_2
    const-string/jumbo v1, "T-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmSystemId:Ljava/lang/String;

    return-object v0
.end method
