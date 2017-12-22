.class Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;
.super Ljava/lang/Object;
.source "EsnCdmProvider.java"


# instance fields
.field private deviceId:[B

.field private deviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V
    .locals 3

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 152
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne p1, v1, :cond_0

    .line 153
    const-string/jumbo v1, "ESN"

    const-string/jumbo v2, "Setting security level to L3"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->setSecurityLevelL3(Landroid/media/MediaDrm;)V

    .line 157
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getDeviceId(Landroid/media/MediaDrm;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;->deviceId:[B

    .line 158
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getDeviceType(Landroid/media/MediaDrm;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;->deviceType:Ljava/lang/String;

    .line 159
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 160
    return-void
.end method


# virtual methods
.method public getDeviceId()[B
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;->deviceId:[B

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider$DeviceDescriptor;->deviceType:Ljava/lang/String;

    return-object v0
.end method
