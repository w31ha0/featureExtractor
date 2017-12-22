.class public Lcom/netflix/mediaclient/service/logging/logblob/Startup;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "Startup.java"


# static fields
.field public static final ANDROID_API_LEVEL:Ljava/lang/String; = "android_api_level"

.field public static final ANDROID_DEVICE_ID:Ljava/lang/String; = "AndroidDeviceID"

.field public static final ANDROID_VERSION:Ljava/lang/String; = "android_version"

.field public static final CARRIER_INFO:Ljava/lang/String; = "carrierinfo"

.field public static final CHANNEL_ID:Ljava/lang/String; = "channelId"

.field public static final CHIPSET:Ljava/lang/String; = "chipset"

.field public static final CRIT_SESSION_ID:Ljava/lang/String; = "crit_session_id"

.field public static final DALVIK_VM_HEAPSIZE:Ljava/lang/String; = "dalvikVMHeapSize"

.field public static final DEVICE_CATEGORY:Ljava/lang/String; = "devicecategory"

.field public static final DEVICE_STORAGE_INFO:Ljava/lang/String; = "deviceStorageInfo"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "devicetype"

.field public static final FESN:Ljava/lang/String; = "fesn"

.field public static final FINGER_PRINT:Ljava/lang/String; = "fingerprint"

.field public static final GMS_CLIENT_VERSION:Ljava/lang/String; = "gms_client_version"

.field public static final GMS_PKG_VERSION:Ljava/lang/String; = "gms_pkg_version"

.field public static final INSTALLATION_SOURCE:Ljava/lang/String; = "installationsource"

.field public static final IS_NETFLIX_PRELOADED:Ljava/lang/String; = "isNetflixPreloaded"

.field public static final LVER:Ljava/lang/String; = "lver"

.field public static final MDXJS:Ljava/lang/String; = "mdxjs"

.field public static final MDX_LIB_VERSION:Ljava/lang/String; = "mdxlib_version"

.field public static final MOD_VERSION:Ljava/lang/String; = "modversion"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final SDK_VER:Ljava/lang/String; = "sdkver"

.field public static final SUPPORTED_CRYPTO:Ljava/lang/String; = "supported_crypto"

.field public static final SYSTEM_ID:Ljava/lang/String; = "system_id"

.field public static final USED_CRYPTO:Ljava/lang/String; = "used_crypto"

.field public static final VIDEO_DECODERS:Ljava/lang/String; = "video_decoders"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 60
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v3

    .line 61
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v4

    .line 63
    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getFesn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 64
    :goto_0
    const-string/jumbo v1, "fesn2"

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getFesn2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 68
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getGooglePlayClientSDKVersion(Landroid/content/Context;)I

    move-result v6

    .line 69
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getGMSPkgVersion(Landroid/content/Context;)I

    move-result v7

    .line 71
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StorageStateUtils;->buildDeviceExternalStorageLogblobInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v10, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->gCritSessionId:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v10, "AndroidDeviceID"

    invoke-virtual {v2, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "android_api_level"

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "android_version"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    if-eqz p3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "carrierinfo"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_0
    const-string/jumbo v1, "ro.modversion"

    invoke-static {v1}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getSystemPropety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getSystemPropety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v2, "0"

    .line 86
    :cond_1
    iget-object v10, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v11, "chipset"

    invoke-virtual {v10, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v10, "crit_session_id"

    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v9, "dalvikVMHeapSize"

    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v5, "deviceStorageInfo"

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v5, "devicecategory"

    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "devicetype"

    const-string/jumbo v5, "JPlayer2"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "esn"

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "fesn"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "fingerprint"

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "gms_client_version"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "gms_pkg_version"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "installationsource"

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getInstallationSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "lver"

    const-string/jumbo v3, "2014.1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "mdxjs"

    const-string/jumbo v3, "1.1.6-android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "mdxlib_version"

    const-string/jumbo v3, "2014.1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "stock"

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "modversion"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "platform"

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "sdkver"

    const-string/jumbo v2, "4.1.5"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "supported_crypto"

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getSupportedCryptoProvider()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "system_id"

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "used_crypto"

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v2

    iget v2, v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "video_decoders"

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->getDecoderCapbilityForFormatIfUpdated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "channelId"

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "isNetflixPreloaded"

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isNetflixPreloaded()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_2
    return-void

    .line 63
    :cond_2
    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getFesn()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 103
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "startup"

    return-object v0
.end method
