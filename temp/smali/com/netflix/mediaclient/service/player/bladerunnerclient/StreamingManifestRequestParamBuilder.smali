.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;
.source "StreamingManifestRequestParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static forceDolbyVision:Z

.field private static forceHdr10:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->TAG:Ljava/lang/String;

    .line 25
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    .line 26
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p2, p1, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 31
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAllowHevcMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->allowHEVC:Z

    .line 33
    return-void
.end method

.method public static getPresetFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video/dolby-vision"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceVP9:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "video/avc"

    goto :goto_0
.end method

.method public static presetVideoFormat(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    .line 85
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    .line 86
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceVP9:Z

    .line 87
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    .line 89
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    .line 101
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->TAG:Ljava/lang/String;

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

    .line 102
    return-void

    .line 90
    :cond_0
    const-string/jumbo v0, "video/dolby-vision"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    .line 92
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    goto :goto_0

    .line 93
    :cond_1
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceVP9:Z

    .line 95
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    .line 96
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    goto :goto_0

    .line 98
    :cond_2
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    .line 99
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    goto :goto_0
.end method


# virtual methods
.method protected buildVideoProfiles()Lorg/json/JSONArray;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->isWidevineHdAllowed:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    .line 44
    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "nf_disable_vp9_playback"

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 50
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8355;->isInTest(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceVP9:Z

    if-eqz v0, :cond_2

    .line 51
    :cond_1
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->addVP9Profiles(Lorg/json/JSONArray;)V

    .line 54
    :cond_2
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->allowAVC:Z

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->addAVCProfiles(Lorg/json/JSONArray;)V

    .line 60
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->allowHEVC:Z

    if-eqz v0, :cond_4

    :cond_4
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHEVC:Z

    if-eqz v0, :cond_5

    .line 61
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->addHevcProfiles(Lorg/json/JSONArray;)V

    .line 64
    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->isWidevineHdAllowed:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHdr10Decoder()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 65
    :goto_1
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->allowHdr10:Z

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceHdr10:Z

    if-eqz v0, :cond_6

    .line 66
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->addHDR10Profiles(Lorg/json/JSONArray;)V

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "device supports Hdr10"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_6
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->isWidevineHdAllowed:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasDolbyVisionDecoder()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 71
    :goto_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->allowDolbyVision:Z

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->forceDolbyVision:Z

    if-eqz v0, :cond_7

    .line 72
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->addDolbyVisionProfiles(Lorg/json/JSONArray;)V

    .line 73
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "device supports dolby vision"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_7
    return-object v3

    .line 42
    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isSupportVP9()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9HardwareDecoder()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v1

    .line 64
    goto :goto_1

    :cond_c
    move v2, v1

    .line 70
    goto :goto_2
.end method

.method protected setSpecialProperties(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
