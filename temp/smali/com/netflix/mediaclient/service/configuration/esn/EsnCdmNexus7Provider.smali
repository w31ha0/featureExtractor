.class public Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;
.super Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
.source "EsnCdmNexus7Provider.java"


# static fields
.field private static final DEVICE_TYPE_PREFIX:Ljava/lang/String; = "PRV-"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mDrmUniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mDrmSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateEsnPrefix()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->ESN_PREFIX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    .line 40
    :cond_0
    return-void
.end method

.method public getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method protected getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method
