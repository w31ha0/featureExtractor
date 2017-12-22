.class public Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# static fields
.field private static BASE_BOOTLOADER_URL:Ljava/lang/String; = null

.field private static BOOTLOADER_URL_SUFFIX:Ljava/lang/String; = null

.field public static final DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

.field private static final DISABLE_MDX_DEF:Z = false

.field private static final DISABLE_WEBSOCKET_DEF:Z = true

.field private static final FORCE_DISABLE_VOIP_IN_CODE:Z = false

.field public static final SIGNUP_TIMEOUT_MS:J = 0x1d4c0L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConsolidatedLoggingSpecification:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

.field private mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

.field private mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

.field private mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "nf_configuration_device"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

    .line 44
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getBootloaderUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->BASE_BOOTLOADER_URL:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "/applanding/android"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->BOOTLOADER_URL_SUFFIX:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "deviceConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->setDeviceConfigData()V

    .line 61
    return-void
.end method

.method private loadConsolidateLoggingSpecification()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getConsolidatedloggingSpecification()Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->toMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private setDeviceConfigData()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->loadConsolidateLoggingSpecification()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleConfiguration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getIpConnectivityPolicy()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->from(I)Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    .line 75
    return-void
.end method

.method private static toMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    if-eqz p0, :cond_1

    .line 199
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    .line 200
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_1
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    .line 65
    const-string/jumbo v1, "deviceConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    .line 67
    return-void
.end method

.method public clearLegacyDeviceConfigFromPreferences()V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isLegacyDeviceConfigInCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    .line 354
    const-string/jumbo v1, "nf_device_config_cached"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 355
    const-string/jumbo v1, "image_pref"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 356
    const-string/jumbo v1, "signup_enabled"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 357
    const-string/jumbo v1, "signup_timeout"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 358
    const-string/jumbo v1, "nf_subtitle_configuraton"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 359
    const-string/jumbo v1, "cl_configuration"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 360
    const-string/jumbo v1, "ip_connectivity_policy_overide"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 361
    const-string/jumbo v1, "apm_user_session_timeout_duration_override"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 362
    const-string/jumbo v1, "breadcrumb_log_configuration"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 363
    const-string/jumbo v1, "error_log_configuration"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 364
    const-string/jumbo v1, "voip_configuration"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 365
    const-string/jumbo v1, "offline_config"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 366
    const-string/jumbo v1, "pt_aggregation_size"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 367
    const-string/jumbo v1, "config_recommended_version"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 368
    const-string/jumbo v1, "config_min_version"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 369
    const-string/jumbo v1, "disable_mdx"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 370
    const-string/jumbo v1, "disable_websocket"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 371
    const-string/jumbo v1, "enable_widevine_l1"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 372
    const-string/jumbo v1, "enable_dynecom_signin"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 373
    const-string/jumbo v1, "enable_voip_on_device"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 374
    const-string/jumbo v1, "memento_enabled_for_world"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 375
    const-string/jumbo v1, "video_resolution_override"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 376
    const-string/jumbo v1, "gcm_browse_rate_limit"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 377
    const-string/jumbo v1, "gcm_tray_change_rate_limit"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 378
    const-string/jumbo v1, "playback_configuration_local_playback_enabled"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 379
    const-string/jumbo v1, "mdx_configuration_remote_lockscreen_enabled"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 380
    const-string/jumbo v1, "mdx_configuration_remote_notification_enabled"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 381
    const-string/jumbo v1, "jplayer_restart_count"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 382
    const-string/jumbo v1, "device_locale_not_supported"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 383
    const-string/jumbo v1, "device_locale_not_supported_msg"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 384
    const-string/jumbo v1, "disable_playbilling"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 385
    const-string/jumbo v1, "ignore_preload_playbilling"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 386
    const-string/jumbo v1, "device_config_geo_country_code"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 387
    const-string/jumbo v1, "subtitle_download_retry_policy"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 388
    const-string/jumbo v1, "disable_cast_faststart"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 389
    const-string/jumbo v1, "disable_data_saver"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 390
    const-string/jumbo v1, "prefs_allow_hevc_mobile"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 391
    const-string/jumbo v1, "prefs_allow_vp9_mobile"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 392
    const-string/jumbo v1, "prefs_activity_tracking"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 393
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    goto/16 :goto_0
.end method

.method public enableWidevineL1()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isWidevineL1Enabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlertMsgForMissingLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppMinimalVersion()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVresion()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAppRecommendedVersion()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVresion()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    goto :goto_0
.end method

.method public getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
    .locals 1

    .prologue
    .line 166
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    goto :goto_0
.end method

.method public getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    goto :goto_0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getImgPreference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    return-object v0
.end method

.method public getJPlayerStreamErrorRestartCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getJPlayerStreamErrorRestartCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPTAggregationSize()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 91
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRateLimitForNListChangeEvents()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignUpBootloader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->BASE_BOOTLOADER_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->BOOTLOADER_URL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppBootUrlSuffix()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->BOOTLOADER_URL_SUFFIX:Ljava/lang/String;

    .line 336
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->BASE_BOOTLOADER_URL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSignUpBootloader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSignUpTimeout()J
    .locals 4

    .prologue
    const-wide/32 v0, 0x1d4c0

    .line 320
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-wide v0

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserSessionDurationInSeconds()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getUserSessionTimeoutDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public getVideoResolutionOverride()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->DEF_VOIP_CONIFG:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    goto :goto_0
.end method

.method public getmAudioFormat()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAudioFormats()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorePreloadForPlayBilling()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePrelaodForPlayBilling()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivivityTrackingDisabled()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isActivivityTrackingDisabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowHevcMobile()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowHevcMobile()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowVp9Mobile()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    goto :goto_0
.end method

.method public isDisableCastFaststart()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableCastFaststart()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisableLicensePrefetch()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableLicensePrefetch()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisableMdx()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMdxDisabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisableWebsocket()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 116
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDolbyVisionEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDolbyVisionEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabledWidevineL3SystemId4266()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnabledWidevineL3SystemId4266()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHdr10Enabled()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdr10Enabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegacyDeviceConfigInCache()Z
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_device_config_cached"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLocalPlaybackEnabled()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableLocalPlayback()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMdxRemoteControlLockScreenEnabled()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlLockScreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isMdxRemoteControlNotificationEnabled()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlNotification()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isMementoEnabledForWorld()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isMementoEnabledForWorld()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignUpEnabled()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    .line 313
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 316
    :goto_0
    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpEnabled()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V
    .locals 3

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deviceConfig object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "deviceConfig"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 183
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->setDeviceConfigData()V

    goto :goto_0
.end method

.method public recoverAndClearLegacyConfigs()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x1

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enable_widevine_l1"

    invoke-static {v0, v1, v7}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "config_recommended_version"

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 399
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "config_min_version"

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 400
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_config_geo_country_code"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->setEnableWidevineL1(Z)V

    .line 403
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v4, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->setAppRecommendedVersion(I)V

    .line 404
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v4, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->setAppMinVersion(I)V

    .line 405
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->setGeoCountryCode(Ljava/lang/String;)V

    .line 407
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "recoverAndClearLegacyConfigs: L1: %b, appRecoVersion: %d, appMinVersion: %d, geo: %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    .line 409
    return-void
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForMissingLocale()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDisableVoip()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 268
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isVoipEnabledOnDevice()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
