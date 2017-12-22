.class public Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;
.super Ljava/lang/Object;
.source "EndpointRegistryProvider.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;


# static fields
.field private static final ANDROID_API_ENDPOINT_PATH:Ljava/lang/String; = "/android/5.1/api"

.field private static final ANDROID_CONFIG_ENDPOINT_PATH:Ljava/lang/String; = "/android/samurai/config"

.field private static final API_ENDPOINT:Ljava/lang/String; = "api-global.netflix.com"

.field private static final CHIPSET:Ljava/lang/String; = "chipset"

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field protected static final IMG_PREFERENCE_JPG:Ljava/lang/String; = "jpg"

.field protected static final IMG_PREFERENCE_WEBP:Ljava/lang/String; = "webp"

.field private static final PARAM_API_LEVEL:Ljava/lang/String; = "api"

.field private static final PARAM_APP_INSTALL_STORE:Ljava/lang/String; = "store"

.field private static final PARAM_APP_TYPE:Ljava/lang/String; = "appType"

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PARAM_APP_VERSION_CODE:Ljava/lang/String; = "appVer"

.field private static final PARAM_BUILD_BOARD:Ljava/lang/String; = "osBoard"

.field private static final PARAM_BUILD_DEVICE:Ljava/lang/String; = "osDevice"

.field private static final PARAM_BUILD_DISPLAY:Ljava/lang/String; = "osDisplay"

.field private static final PARAM_DEBUG_BUILD:Ljava/lang/String; = "dbg"

.field private static final PARAM_DEVICE_LOCALE:Ljava/lang/String; = "deviceLocale"

.field private static final PARAM_DEVICE_MEM_LEVEL:Ljava/lang/String; = "memLevel"

.field private static final PARAM_DOWNLOAD_ENABLED:Ljava/lang/String; = "dlEnabled"

.field private static final PARAM_FIRST_LOLOMO_AFTER_ONRAMP:Ljava/lang/String; = "isFirstLolomoAfterOnRamp"

.field private static final PARAM_FORM_FACTOR:Ljava/lang/String; = "ffbc"

.field private static final PARAM_IMG_TYPE_PREFERENCE:Ljava/lang/String; = "imgpref"

.field private static final PARAM_IS_DEVICE_LOCALE_IN_APP:Ljava/lang/String; = "lackLocale"

.field private static final PARAM_KUBRICK_KIDS_EXPERIENCE:Ljava/lang/String; = "kk"

.field private static final PARAM_LANGUAGES:Ljava/lang/String; = "languages"

.field private static final PARAM_MANUFACTURER:Ljava/lang/String; = "mnf"

.field private static final PARAM_MODEL_ID:Ljava/lang/String; = "mId"

.field private static final PARAM_PATH_FORMAT:Ljava/lang/String; = "pathFormat"

.field private static final PARAM_PROFILE_TYPE:Ljava/lang/String; = "prfType"

.field private static final PARAM_PROGRESSIVE:Ljava/lang/String; = "progressive"

.field private static final PARAM_RESOLUTION:Ljava/lang/String; = "res"

.field private static final PARAM_RESPONSE_FORMAT:Ljava/lang/String; = "responseFormat"

.field private static final PARAM_REVISION:Ljava/lang/String; = "revision"

.field private static final PARAM_ROUTING:Ljava/lang/String; = "routing"

.field private static final PARAM_VIDEO_CAPABILITY:Ljava/lang/String; = "qlty"

.field private static final TAG:Ljava/lang/String; = "EndpointRegistryProvider"


# instance fields
.field private mAppBootUrl:Ljava/net/URL;

.field private mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mContext:Landroid/content/Context;

.field private mEndpointHost:Ljava/lang/String;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 100
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 101
    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    .line 102
    const-string/jumbo v0, "api-global.netflix.com"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private createBuilderAndAddProtocol()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :goto_0
    return-object v0

    .line 350
    :cond_0
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private declared-synchronized getConfigParams(Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v1}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    .line 126
    const-string/jumbo v0, "responseFormat"

    const-string/jumbo v2, "json"

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v0, "progressive"

    const-string/jumbo v2, "false"

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v0, "pathFormat"

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->value:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    if-eqz p1, :cond_2

    .line 133
    const-string/jumbo v0, "routing"

    const-string/jumbo v2, "redirect"

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    .line 140
    const-string/jumbo v0, "appType"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v0, "dbg"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceHd()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "hd"

    .line 148
    :goto_1
    const-string/jumbo v3, "qlty"

    invoke-interface {v1, v3, v0}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v0, "ffbc"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getFormFactor()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v0, "osBoard"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getBuildPropBoard()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v0, "osDevice"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getBuildPropDevice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v0, "osDisplay"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getBuildPropDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v0, "appVer"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v0, "appVersion"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "mId"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getEsnModelId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "api"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getApiLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v0, "mnf"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v0, "store"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getInstallationSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v0, "memLevel"

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMemLevel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v0, "lackLocale"

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->isApkMissingDeviceLocaleSupport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "deviceLocale"

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v0, "chipset"

    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getSystemPropety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string/jumbo v2, "channelId"

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    const-string/jumbo v0, "isNetflixPreloaded"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isNetflixPreloaded()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_2
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    const-string/jumbo v2, "esn"

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    monitor-exit p0

    return-object v1

    .line 136
    :cond_2
    :try_start_1
    const-string/jumbo v0, "routing"

    const-string/jumbo v2, "reject"

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_3
    :try_start_2
    const-string/jumbo v0, "sd"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 170
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getImagePreference()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImagePreference()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "webp"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "jpg"

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized getApiRequestParams(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    .line 183
    const-string/jumbo v1, "responseFormat"

    const-string/jumbo v2, "json"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v1, "progressive"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v1, "routing"

    const-string/jumbo v2, "reject"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v1, "ffbc"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getFormFactor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v1, "languages"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    const-string/jumbo v1, "prfType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    :cond_1
    const-string/jumbo v1, "kk"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->isOfflineFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    const-string/jumbo v1, "dlEnabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->getOnRampLatch()Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;->getValueAndLatch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    const-string/jumbo v1, "isFirstLolomoAfterOnRamp"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_4
    if-eqz p1, :cond_5

    .line 216
    const-string/jumbo v1, "pathFormat"

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :goto_0
    const-string/jumbo v1, "res"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImageResolutionClass()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->urlParamValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v1, "imgpref"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getImagePreference()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-object v0

    .line 221
    :cond_5
    :try_start_1
    const-string/jumbo v1, "pathFormat"

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApiUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->createBuilderAndAddProtocol()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_0
    const-string/jumbo v1, "/android/5.1/api"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to create URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppbootUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/net/URL;

    .line 281
    :goto_0
    return-object v0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v1, "appboot.netflix.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string/jumbo v1, "/appboot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/net/URL;

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to create URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClientLoggingUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->createBuilderAndAddProtocol()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConfigRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getConfigParams(Z)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->createBuilderAndAddProtocol()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_0
    const-string/jumbo v1, "/android/samurai/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNccpUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getApiUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public updateApiEndpointHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    .line 243
    return-void
.end method
