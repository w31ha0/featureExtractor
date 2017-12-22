.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;
.source "OfflineManifestRequestParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mDxid:Ljava/lang/String;

.field protected mOxid:Ljava/lang/String;

.field private mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p2, p1, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAllowHevcMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowHEVC:Z

    .line 31
    return-void
.end method

.method public static getPresetFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceHEVC:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video/hevc"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceVP9:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "video/avc"

    goto :goto_0
.end method

.method public static presetVideoFormat(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceVP9:Z

    .line 46
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceHEVC:Z

    .line 47
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceHEVC:Z

    .line 49
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowAVC:Z

    .line 56
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presetVideoFormat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 50
    :cond_0
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceVP9:Z

    .line 52
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowAVC:Z

    goto :goto_0

    .line 54
    :cond_1
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowAVC:Z

    goto :goto_0
.end method


# virtual methods
.method protected buildVideoProfiles()Lorg/json/JSONArray;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 67
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowAVC:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->addAVCProfiles(Lorg/json/JSONArray;)V

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->isWidevineHdAllowed:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureHEVCDecoder()Z

    move-result v0

    .line 72
    :goto_0
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowHEVC:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    sget-boolean v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceHEVC:Z

    if-eqz v4, :cond_3

    .line 73
    :cond_2
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->addHevcProfiles(Lorg/json/JSONArray;)V

    .line 77
    :cond_3
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->isWidevineHdAllowed:Z

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    .line 80
    :goto_1
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowVP9:Z

    if-eqz v4, :cond_4

    if-nez v0, :cond_5

    :cond_4
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->forceVP9:Z

    if-eqz v0, :cond_6

    .line 81
    :cond_5
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->addVP9Profiles(Lorg/json/JSONArray;)V

    .line 84
    :cond_6
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->isWidevineHdAllowed:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHdr10Decoder()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 85
    :goto_2
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowHdr10:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->addHDR10Profiles(Lorg/json/JSONArray;)V

    .line 87
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "device supports Hdr10"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_7
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->isWidevineHdAllowed:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasDolbyVisionDecoder()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    :goto_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowDolbyVision:Z

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 92
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->addDolbyVisionProfiles(Lorg/json/JSONArray;)V

    .line 93
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "device supports dolby vision"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_8
    return-object v3

    .line 71
    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHEVCHardwareDecoder()Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_a
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->allowHEVC:Z

    if-eqz v4, :cond_b

    if-nez v0, :cond_c

    .line 78
    :cond_b
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isSupportVP9()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9HardwareDecoder()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v0, v2

    goto :goto_1

    :cond_e
    move v0, v1

    goto :goto_1

    :cond_f
    move v0, v1

    .line 84
    goto :goto_2

    :cond_10
    move v2, v1

    .line 90
    goto :goto_3
.end method

.method downloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 41
    return-object p0
.end method

.method setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method protected setSpecialProperties(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "type"

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v0, "downloadQuality"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 107
    const-string/jumbo v0, "oxid"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v0, "dxid"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    return-void
.end method
