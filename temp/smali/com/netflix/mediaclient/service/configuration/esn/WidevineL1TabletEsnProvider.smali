.class public Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1TabletEsnProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
.source "WidevineL1TabletEsnProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;-><init>()V

    .line 16
    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Widevine L1 tablet ESN Provider created..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method


# virtual methods
.method public getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method protected getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method
