.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
.super Ljava/lang/Object;
.source "DeviceConfigData.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alertMsgForLocaleSupport:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alertMsgForLocaleSupport"
    .end annotation
.end field

.field private allowHevcMobile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowHevcMobile"
    .end annotation
.end field

.field private allowVp9Mobile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowVp9Mobile"
    .end annotation
.end field

.field private appBootUrlSuffix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appBootUrlSuffix"
    .end annotation
.end field

.field private audioFormats:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioFormats"
    .end annotation
.end field

.field private breadcrumb_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "breadcrumb_logging_specification"
    .end annotation
.end field

.field private consolidated_logging_specification:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consolidated_logging_specification"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private current_version:I

.field private device_category:Ljava/lang/String;

.field private disableActivityTracking:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableActivityTracking"
    .end annotation
.end field

.field private disableCastFaststart:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableCastFaststart"
    .end annotation
.end field

.field private disableDataSaver:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableDataSaver"
    .end annotation
.end field

.field private disableLicensePrefetch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableLicensePrefetch"
    .end annotation
.end field

.field private disablePlayBilling:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disablePlayBilling"
    .end annotation
.end field

.field private disable_mdx:Z

.field private disable_websocket:Ljava/lang/String;

.field private enableDolbyVision:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableDolbyVision"
    .end annotation
.end field

.field private enableHdr10:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableHdr10"
    .end annotation
.end field

.field private enableLocalPlayback:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableLocalPlayback"
    .end annotation
.end field

.field private enableMdxRemoteControlLockScreen:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableMdxRemoteControlLockScreen"
    .end annotation
.end field

.field private enableMdxRemoteControlNotification:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableMdxRemoteControlNotification"
    .end annotation
.end field

.field private enableWidevineL1:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableWidevineL1"
    .end annotation
.end field

.field private enableWidevineL3SystemId4266:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableWidevineL3SystemId4266"
    .end annotation
.end field

.field private error_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_logging_specification"
    .end annotation
.end field

.field private forceLegacyCrypto:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceLegacyCrypto"
    .end annotation
.end field

.field private gcmBrowseEventRateLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gcmBrowseEventRateLimitInSecs"
    .end annotation
.end field

.field private gcmNListChangeEventRateLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gcmNListChangeEventRateLimitInSecs"
    .end annotation
.end field

.field private geoCountryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geoCountryCode"
    .end annotation
.end field

.field private ignorePreloadForPlayBilling:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ignorePreloadForPlayBilling"
    .end annotation
.end field

.field private image_pref:Ljava/lang/String;

.field private ip_connectivity_policy:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ip_connectivity_policy"
    .end annotation
.end field

.field private jPlayerRestartOnStreamErrors:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jPlayerRestartOnStreamErrors"
    .end annotation
.end field

.field private mDisableAndroidJobScheduler:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableAndroidJobScheduler"
    .end annotation
.end field

.field private mDisableAndroidJobSchedulerJobFinish:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableAndroidJobSchedulerJobFinish"
    .end annotation
.end field

.field private mementoEnabledForWorld:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mementoEnabledForWorld"
    .end annotation
.end field

.field private min_version:I

.field private offlineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlineConfig"
    .end annotation
.end field

.field private pt_aggregation_size:Ljava/lang/String;

.field private shouldAlertForLocaleSupport:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldAlertForLocaleSupport"
    .end annotation
.end field

.field private signup_enabled:Ljava/lang/String;

.field private signup_timeout:Ljava/lang/String;

.field private subtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitleDownloadRetryPolicy"
    .end annotation
.end field

.field private subtitle_configuration:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user_session_timeout_duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_session_timeout_duration"
    .end annotation
.end field

.field private videoResolutionOverride:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoResolutionOverride"
    .end annotation
.end field

.field private voipConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipConfig"
    .end annotation
.end field

.field private voipConfirmationDialogAllocationPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipConfirmationDialogAllocationPercentage"
    .end annotation
.end field

.field private voipEnabledOnDevice:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipEnabledOnDevice"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->consolidated_logging_specification:Ljava/util/List;

    .line 48
    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->ip_connectivity_policy:I

    .line 51
    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->user_session_timeout_duration:I

    .line 73
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableLocalPlayback:Z

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->jPlayerRestartOnStreamErrors:I

    .line 130
    const/16 v0, 0x19

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipConfirmationDialogAllocationPercentage:I

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowHevcMobile:Z

    .line 155
    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowVp9Mobile:Z

    .line 172
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableWidevineL3SystemId4266:Z

    .line 405
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->breadcrumb_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    .line 406
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->error_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    .line 407
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableMdxRemoteControlLockScreen:Z

    .line 408
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableMdxRemoteControlNotification:Z

    .line 409
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    .line 410
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->subtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 411
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->createDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->offlineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    .line 412
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
    .locals 2

    .prologue
    .line 391
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;-><init>()V

    .line 398
    :goto_0
    return-object v0

    .line 395
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 396
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    goto :goto_0
.end method


# virtual methods
.method public disableAndroidJobScheduler()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->mDisableAndroidJobScheduler:Z

    return v0
.end method

.method public disableAndroidJobSchedulerJobFinish()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->mDisableAndroidJobSchedulerJobFinish:Z

    return v0
.end method

.method public getAlertMsgForLocaleSupport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->alertMsgForLocaleSupport:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBootUrlSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->appBootUrlSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMinVresion()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->min_version:I

    return v0
.end method

.method public getAppRecommendedVresion()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->current_version:I

    return v0
.end method

.method public getAudioFormats()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->audioFormats:I

    return v0
.end method

.method public getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->breadcrumb_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    return-object v0
.end method

.method public getConsolidatedloggingSpecification()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->consolidated_logging_specification:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->device_category:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableCastFaststart()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableCastFaststart:Z

    return v0
.end method

.method public getDisableDataSaver()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableDataSaver:Z

    return v0
.end method

.method public getDisableLicensePrefetch()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableLicensePrefetch:Z

    return v0
.end method

.method public getEnableLocalPlayback()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableLocalPlayback:Z

    return v0
.end method

.method public getEnableMdxRemoteControlLockScreen()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableMdxRemoteControlLockScreen:Z

    return v0
.end method

.method public getEnableMdxRemoteControlNotification()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableMdxRemoteControlNotification:Z

    return v0
.end method

.method public getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->error_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->geoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->image_pref:Ljava/lang/String;

    return-object v0
.end method

.method public getIpConnectivityPolicy()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->ip_connectivity_policy:I

    return v0
.end method

.method public getJPlayerStreamErrorRestartCount()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->jPlayerRestartOnStreamErrors:I

    return v0
.end method

.method public getMdxDisabled()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disable_mdx:Z

    return v0
.end method

.method public getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->offlineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object v0
.end method

.method public getPTAggregationSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->pt_aggregation_size:Ljava/lang/String;

    return-object v0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->gcmBrowseEventRateLimit:I

    return v0
.end method

.method public getRateLimitForGcmNListChangeEvents()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->gcmNListChangeEventRateLimit:I

    return v0
.end method

.method public getSignUpEnabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->signup_enabled:Ljava/lang/String;

    return-object v0
.end method

.method public getSignUpTimeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->signup_timeout:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->subtitle_configuration:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->subtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object v0
.end method

.method public getUserSessionTimeoutDuration()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->user_session_timeout_duration:I

    return v0
.end method

.method public getVideoResolutionOverride()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->videoResolutionOverride:I

    return v0
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object v0
.end method

.method public getVoipConfirmationDialogAllocationPercentage()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipConfirmationDialogAllocationPercentage:I

    return v0
.end method

.method public getWebsocketDisabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disable_websocket:Ljava/lang/String;

    return-object v0
.end method

.method public isActivivityTrackingDisabled()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableActivityTracking:Z

    return v0
.end method

.method public isAllowHevcMobile()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowHevcMobile:Z

    return v0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowVp9Mobile:Z

    return v0
.end method

.method public isDolbyVisionEnabled()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableDolbyVision:Z

    return v0
.end method

.method public isEnabledWidevineL3SystemId4266()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableWidevineL3SystemId4266:Z

    return v0
.end method

.method public isHdr10Enabled()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableHdr10:Z

    return v0
.end method

.method public isMementoEnabledForWorld()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->mementoEnabledForWorld:Z

    return v0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disablePlayBilling:Z

    return v0
.end method

.method public isVoipEnabledOnDevice()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipEnabledOnDevice:Z

    return v0
.end method

.method public isWidevineL1Enabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableWidevineL1:Z

    return v0
.end method

.method public setAppMinVersion(I)V
    .locals 0

    .prologue
    .line 419
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->min_version:I

    .line 420
    return-void
.end method

.method public setAppRecommendedVersion(I)V
    .locals 0

    .prologue
    .line 423
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->current_version:I

    .line 424
    return-void
.end method

.method public setEnableWidevineL1(Z)V
    .locals 0

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableWidevineL1:Z

    .line 416
    return-void
.end method

.method public setGeoCountryCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->geoCountryCode:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForLocaleSupport:Z

    return v0
.end method

.method public shouldForceLegacyCrypto()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->forceLegacyCrypto:Z

    return v0
.end method

.method public toIgnorePrelaodForPlayBilling()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->ignorePreloadForPlayBilling:Z

    return v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 387
    return-object v0
.end method
