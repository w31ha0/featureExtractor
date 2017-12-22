.class public Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ConfigurationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final ABSOLUTE_MIN_VIDEO_BUFFERSIZE:I = 0x800000

.field private static final APM_USER_SESSION_TIMEOUT_SEC:I = 0x708

.field private static final CONFIG_REFRESH_DELAY_MS:J = 0x1b77400L

.field private static final DATA_REQUEST_TIMEOUT_MS:I = 0x2710

.field public static final DEBUG_TOOGLE_MSL_FOR_ALL_NETWORK_REQUESTS:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DEBUG_MSL_FOR_ALL_NETWORK_REQUESTS"

.field public static final DEFAULT_IMAGE_CACHE_SIZE_BYTES:I

.field private static final DEFAULT_MIN_VIDEO_BUFFERSIZE:I = 0x1800000

.field private static final DEFAULT_USE_MSL_FOR_ALL_NETWORK_REQUESTS:Z = false

.field private static final DUMMY_KUBRICK_CONFIG:Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

.field public static final EXT_MSL_ON_VALUE:Ljava/lang/String; = "msl_for_all"

.field private static final HIGH_MEM_THREAD_COUNT:I = 0x4

.field private static final IMAGE_CACHE_SIZE_AS_PERCENTAGE_OF_MAX_HEAP:F = 0.5f

.field private static final LEVEL_HIGH:Ljava/lang/String; = "high"

.field private static final LEVEL_LOW:Ljava/lang/String; = "low"

.field private static final LOW_MEMORY_CONFIG_THRESHOLD_IN_BYTES:J = 0x2000000L

.field private static final LOW_MEM_THREAD_COUNT:I = 0x2

.field private static final MAX_VIDEO_BUFFERSIZE:I = 0x2a00000

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field public static final MINIMUM_IMAGE_CACHE_TTL:J = 0x48190800L

.field private static final MIN_CONFIG_REQUIRED_FOR_APP:I = 0x1

.field public static final RESOURCE_REQUEST_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "nf_configurationagent"

.field private static final sMemLevel:Ljava/lang/String;


# instance fields
.field private mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

.field private mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

.field private mAppVersionCode:I

.field private mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

.field private mChannelIdManager:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

.field private final mConfigAgentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigRefreshStatus:Lcom/netflix/mediaclient/android/app/Status;

.field private final mContext:Landroid/content/Context;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

.field private mDeviceModel:Lcom/netflix/mediaclient/service/configuration/DeviceModel;

.field private mDisableOfflineDeviceOverride:Z

.field private mDiskCacheSizeBytes:I

.field private mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

.field private mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

.field private mIsConfigRefreshInBackground:Z

.field private mIsNetflixPreloaded:Z

.field private final mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

.field private mMicrophoneExist:Z

.field private mNeedEsMigration:Z

.field private mNeedLogout:Z

.field private mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

.field private final mPlaybackConfiguration:Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

.field private mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

.field private mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

.field private mSoftwareVersion:Ljava/lang/String;

.field private mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

.field private mUseMslForAllNetworkRequestsQAOverride:Ljava/lang/Boolean;

.field private final refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->DEFAULT_IMAGE_CACHE_SIZE_BYTES:I

    .line 172
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->computeMemLevel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    .line 1126
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$9;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$9;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->DUMMY_KUBRICK_CONFIG:Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    .line 152
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    .line 174
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    .line 175
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    .line 836
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshRunnable:Ljava/lang/Runnable;

    .line 1075
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$7;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    .line 1113
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$8;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mPlaybackConfiguration:Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    .line 199
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    .line 200
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Current app version code=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Current softwareVersion=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceModel:Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    .line 206
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    .line 207
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    .line 208
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    .line 209
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    .line 210
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    .line 211
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    .line 212
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    .line 213
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    .line 214
    const-string/jumbo v0, "offline_blaclisted_device_override"

    invoke-static {p1, v0, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDisableOfflineDeviceOverride:Z

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->continueInitAfterDeviceConfig()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->handleMslForAllNetworkRequests(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->continueInitAfterEsnConfig(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigRefreshStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigRefreshStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->notifyConfigRefreshedAndClearListeners()V

    return-void
.end method

.method private computeImageResolutionClass(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 2

    .prologue
    .line 542
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    const-string/jumbo v1, "low"

    if-ne v0, v1, :cond_0

    .line 543
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Device is low memory category - use low resolution images"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->LOW:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 574
    :goto_0
    return-object v0

    .line 548
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenResolutionDpi(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    .line 549
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 550
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Device is a low-res, small tablet - use medium resolution images"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->MEDIUM:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    .line 573
    :cond_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Using high resolution images"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->HIGH:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0
.end method

.method private static computeMemLevel()Ljava/lang/String;
    .locals 6

    .prologue
    .line 379
    const-string/jumbo v0, "high"

    .line 381
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 382
    const-wide/32 v4, 0x2000000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 383
    const-string/jumbo v0, "low"

    .line 386
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 387
    invoke-static {}, Lcom/netflix/mediaclient/util/api/Api19Util;->isLowRamDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "isLowRamDevice() is true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v0, "low"

    .line 396
    :cond_1
    return-object v0
.end method

.method private continueInitAfterDeviceConfig()V
    .locals 8

    .prologue
    .line 249
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DRM_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 252
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->createESN(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    .line 254
    const-string/jumbo v2, "nf_configurationagent"

    const-string/jumbo v3, "createESN took=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->r(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCrypto()V

    .line 281
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "Failed to create ESN"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 260
    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "WidevineNotSupportedException:"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->couldRecoverWideVine(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Widevine not supported, but Widevine was used before, we may be able to recover"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/StatusCode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    const-string/jumbo v1, "MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 269
    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Widevine not supported, never used before, we will not be able to recover"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    const-string/jumbo v1, "MSL_LEGACY_CRYPTO"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_LEGACY_CRYPTO:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private continueInitAfterEsnConfig(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 967
    return-void
.end method

.method private doRefreshConfig(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 2

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    .line 495
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 509
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->allConfigPaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 510
    return-void
.end method

.method private fetchConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 788
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "fetchConfigData %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 789
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    .line 791
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;

    invoke-direct {v0, p0, p3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 810
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {v2, p1, p2, v0}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->createFetchConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 811
    return-void
.end method

.method private fetchDeviceConfigOnAppStart()V
    .locals 4

    .prologue
    .line 900
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->deviceConfigPql:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 929
    return-void
.end method

.method public static getDataRequestThreadPoolSize()I
    .locals 1

    .prologue
    .line 1530
    const/4 v0, 0x4

    return v0
.end method

.method public static getDataRequestTimeout()I
    .locals 1

    .prologue
    .line 1525
    const/16 v0, 0x2710

    return v0
.end method

.method private getFormerMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1268
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "formerMemberInfo"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getImageCacheMinimumTtl()J
    .locals 2

    .prologue
    .line 1534
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method public static getImageCacheSizeBytes()I
    .locals 1

    .prologue
    .line 1538
    sget v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->DEFAULT_IMAGE_CACHE_SIZE_BYTES:I

    return v0
.end method

.method private getMaxResolutionConfigured()I
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVideoResolutionOverride()I

    move-result v0

    .line 977
    return v0
.end method

.method public static getMemLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    return-object v0
.end method

.method public static getResFetcherThreadPoolSize()I
    .locals 1

    .prologue
    .line 1517
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getResourceRequestTimeout()I
    .locals 1

    .prologue
    .line 1521
    const/16 v0, 0x3e8

    return v0
.end method

.method private handleMslForAllNetworkRequests(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1490
    const-string/jumbo v0, "msl_for_all"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    const-string/jumbo v0, "msl_for_all"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mUseMslForAllNetworkRequestsQAOverride:Ljava/lang/Boolean;

    .line 1492
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "We received use MSL for all network requests override with value %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mUseMslForAllNetworkRequestsQAOverride:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1493
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "qa_override_use_msl_for_all_network_requests"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mUseMslForAllNetworkRequestsQAOverride:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1500
    :goto_0
    return-void

    .line 1496
    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "We received use MSL for all network reset to default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mUseMslForAllNetworkRequestsQAOverride:Ljava/lang/Boolean;

    .line 1498
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "qa_override_use_msl_for_all_network_requests"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private hasMicrophone()Z
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 352
    if-nez v0, :cond_0

    .line 353
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Unable to get PackageManager! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private initCrypto()V
    .locals 5

    .prologue
    .line 289
    :try_start_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "::init createCryptoInstance "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 291
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;J)V

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->createCryptoInstance(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "::init: Failed to create MSL crypto registry"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 334
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private isDeviceConfigInPrefs()Z
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "deviceConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHdrCapabilitySupported(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 625
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 627
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 632
    if-ne v4, p1, :cond_0

    .line 633
    const/4 v0, 0x1

    .line 639
    :goto_1
    return v0

    .line 631
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 639
    goto :goto_1
.end method

.method private loadConfigOverridesOnAppStart()V
    .locals 2

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDeviceConfigInPrefs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->clearLegacyDeviceConfigFromPreferences()V

    .line 885
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Device Config & Streaming Config in cache... proceed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->continueInitAfterDeviceConfig()V

    .line 887
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->primeDnsWhileEsnIsBuilt()V

    .line 892
    :goto_0
    return-void

    .line 889
    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Need to fetch device config on app start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchDeviceConfigOnAppStart()V

    goto :goto_0
.end method

.method private loadQAOverrides()V
    .locals 0

    .prologue
    .line 1508
    return-void
.end method

.method private notifyConfigRefreshedAndClearListeners()V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method private primeDnsAndHttps()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1559
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$10;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    .line 1566
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {v2, v3, v0}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->createDummyNetworkRequest(ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1567
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {v2, v3, v0}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->createDummyNetworkRequest(ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1568
    return-void
.end method

.method private primeDnsWhileEsnIsBuilt()V
    .locals 0

    .prologue
    .line 1571
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->primeDnsAndHttps()V

    .line 1572
    return-void
.end method

.method private registerReceiverForDebug()V
    .locals 0

    .prologue
    .line 1452
    return-void
.end method

.method public static shouldUseLowMemConfig()Z
    .locals 2

    .prologue
    .line 375
    const-string/jumbo v0, "low"

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->sMemLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static useAndroidHttpStack(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1545
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized addConfigAgentListener(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_0
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAccountConfigData()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->clear()V

    .line 820
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->clear()V

    .line 821
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->delete(Landroid/content/Context;)V

    .line 824
    return-void
.end method

.method public clearEsnDependedSavedData()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->clearCookies()V

    .line 342
    return-void
.end method

.method public clearFormerMemberData()V
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "formerMemberInfo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1275
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 462
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->clear()V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    if-eqz v0, :cond_3

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->destroy()V

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mChannelIdManager:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mChannelIdManager:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->destroy()V

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 483
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 485
    :cond_5
    return-void
.end method

.method public doDummyNetworkRequest(ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 2

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {v1, p1, p2}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->createDummyNetworkRequest(ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1552
    return-void
.end method

.method protected doInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    .line 225
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    .line 226
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    .line 228
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->loadQAOverrides()V

    .line 230
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->registerReceiverForDebug()V

    .line 232
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Use low mem config: %b "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->getCacheSizeInBytes(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    .line 236
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mChannelIdManager:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    .line 238
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    .line 240
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->hasMicrophone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMicrophoneExist:Z

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsNetflixPreloaded:Z

    .line 244
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->loadConfigOverridesOnAppStart()V

    .line 246
    return-void
.end method

.method public enableHTTPSAuth()Z
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->enableHTTPSAuth()Z

    move-result v0

    return v0
.end method

.method public enableLowBitrateStreams()Z
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->enableLowBitrateStreams()Z

    move-result v0

    return v0
.end method

.method public esnMigrationComplete()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    .line 774
    return-void
.end method

.method public fetchAccountConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->refreshConfig(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V

    .line 833
    return-void
.end method

.method public fetchEsnDependentConfigsOnAppStart(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 937
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isNrmCookiePresent()Z

    move-result v0

    .line 938
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->isNrmLangInPref(Landroid/content/Context;)Z

    move-result v1

    .line 939
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->isSignInConfigInPref(Landroid/content/Context;)Z

    move-result v2

    .line 941
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 942
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Skipping fetch of esn dependent configs"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v5, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 963
    :goto_0
    return-void

    .line 947
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 948
    if-nez v0, :cond_1

    .line 949
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->nrmInfoPql:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_1
    if-nez v1, :cond_2

    .line 952
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->nrmLangPql:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_2
    if-nez v2, :cond_3

    .line 955
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->signInConfigPql:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_3
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "fetching esnBasedConfigs pqls: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 962
    invoke-direct {p0, v5, v3, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    goto :goto_0
.end method

.method public getABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    return-object v0
.end method

.method public getAlertMsgForMissingLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getAlertMsgForMissingLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    return-object v0
.end method

.method public getApmUserSessionDurationInSeconds()I
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getUserSessionDurationInSeconds()I

    move-result v0

    .line 871
    if-lez v0, :cond_0

    .line 874
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x708

    goto :goto_0
.end method

.method public getAppVersionCode()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    return v0
.end method

.method public getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    move-result-object v0

    return-object v0
.end method

.method public getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getCastPrefetchSharedSecret()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1178
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->getCastKeyId()Ljava/lang/String;

    move-result-object v1

    .line 1179
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->getCastKey()Ljava/lang/String;

    move-result-object v2

    .line 1181
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1182
    :cond_0
    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "cast sharedSecret are null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :goto_0
    return-object v0

    .line 1187
    :cond_1
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 1191
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mChannelIdManager:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mChannelIdManager:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->requestChannelId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    .line 595
    :goto_0
    return-object v0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0

    .line 595
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0
.end method

.method public getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceModel:Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    return-object v0
.end method

.method public getDiskCacheSizeBytes()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDiskCacheSizeBytes:I

    return v0
.end method

.method public getDownloadAgentThreadPoolSize()I
    .locals 1

    .prologue
    .line 735
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImagePreference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getImgPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageResolutionClass()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->computeImageResolutionClass(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v0

    return-object v0
.end method

.method public getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getJPlayerConfig()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getJPlayerConfig()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJPlayerStreamErrorRestartCount()I
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getJPlayerStreamErrorRestartCount()I

    move-result v0

    return v0
.end method

.method public getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    return-object v0
.end method

.method public getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;
    .locals 1

    .prologue
    .line 1246
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getFormerMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNonMemberData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    goto :goto_0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineMaintenanceJobPeriodInHrs()I
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->getMaintenanceJobPeriodInHrs()I

    move-result v0

    return v0
.end method

.method public getOfflineUnavailableReason()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 1336
    :goto_0
    return-object v0

    .line 1329
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDisableOfflineDeviceOverride:Z

    if-eqz v0, :cond_1

    .line 1330
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_BY_SYSTEM_ID_4266_FROM_SERVER:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    goto :goto_0

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "4266"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mESN:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1333
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_BY_SYSTEM_ID_4266:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    goto :goto_0

    .line 1336
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mPlaybackConfiguration:Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    return-object v0
.end method

.method public getPreAppPartnerExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreAppPartnerExperience()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreAppWidgetExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreAppWidgetExperience()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresentationTrackingAggregationSize()I
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getPTAggregationSize()I

    move-result v0

    return v0
.end method

.method public getPreviewContentConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    if-nez v0, :cond_0

    .line 1234
    const/4 v0, 0x0

    .line 1236
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    return v0
.end method

.method public getRateLimitForNListChangeEvents()I
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getRateLimitForNListChangeEvents()I

    move-result v0

    return v0
.end method

.method public getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mSignInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    return-object v0
.end method

.method public getSignUpBootloader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getSignUpBootloader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignUpTimeout()J
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getSignUpTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->getStreamingConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getUserPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getUserPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoBufferSize()I
    .locals 6

    .prologue
    const/high16 v0, 0x2a00000

    const/high16 v2, 0x800000

    .line 650
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getVideoBufferSize()I

    move-result v1

    .line 652
    if-nez v1, :cond_0

    .line 653
    const/high16 v1, 0x1800000

    .line 654
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDeviceHd()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isWidevineL1Enabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "Device is enabled for HD"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    const-string/jumbo v1, "nf_configurationagent"

    const-string/jumbo v2, "VideoBufferSize: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 663
    return v0

    .line 658
    :cond_0
    if-lt v1, v2, :cond_1

    if-le v1, v0, :cond_2

    .line 659
    :cond_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Invalid video buffer size"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 660
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMaxResolutionConfigured()I

    move-result v0

    .line 671
    if-lez v0, :cond_0

    .line 673
    invoke-static {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getVideoResolutionRangeFromMaxHieght(I)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    .line 676
    :cond_0
    const v1, 0x7fffffff

    .line 678
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 680
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 681
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 685
    invoke-virtual {v4}, Landroid/view/Display;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    .line 686
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 687
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 688
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 693
    :goto_2
    invoke-static {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getVideoResolutionRangeFromMaxHieght(I)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    goto :goto_0

    .line 681
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public ignorePreloadForPlayBilling()Z
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->ignorePreloadForPlayBilling()Z

    move-result v0

    return v0
.end method

.method public isActivityTrackingDisabled()Z
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isActivivityTrackingDisabled()Z

    move-result v0

    return v0
.end method

.method public isAllowHevcMobile()Z
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isAllowHevcMobile()Z

    move-result v0

    .line 1369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isAllowVp9Mobile()Z

    move-result v0

    .line 1377
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    goto :goto_0
.end method

.method public isAppVersionObsolete()Z
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getAppMinimalVersion()I

    move-result v0

    .line 523
    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppVersionRecommended()Z
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getAppRecommendedVersion()I

    move-result v0

    .line 538
    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAssistiveAudioEnabled()Z
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AccessibilityUtils;->isSpokenAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isCurrentDrmWidevine()Z
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceHd()Z
    .locals 1

    .prologue
    .line 611
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->drmSupportsHd()Z

    move-result v0

    return v0
.end method

.method public isDeviceLowMem()Z
    .locals 1

    .prologue
    .line 405
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v0

    return v0
.end method

.method public isDisableCastFaststart()Z
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDisableCastFaststart()Z

    move-result v0

    .line 1205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisableLicensePrefetch()Z
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x1

    return v0
.end method

.method public isDisableMcQueenV2()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->toDisableMcQueenV2()Z

    move-result v0

    return v0
.end method

.method public isDolbyDigitalPlus20Supported()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getmAudioFormat()I

    move-result v0

    .line 1034
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->isEAC3supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const/4 v0, 0x1

    .line 1037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyDigitalPlus51Supported()Z
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getmAudioFormat()I

    move-result v0

    .line 1011
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->isEAC3supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    const/4 v0, 0x1

    .line 1014
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyVisionEnabled()Z
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDolbyVisionEnabled()Z

    move-result v0

    return v0
.end method

.method public isDolbyVisionSupported()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isHdrCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method public isEsnMigrationRequired()Z
    .locals 1

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedEsMigration:Z

    return v0
.end method

.method public isHdr10Enabled()Z
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isHdr10Enabled()Z

    move-result v0

    return v0
.end method

.method public isHdr10Supported()Z
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isHdrCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method public isLogoutRequired()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    return v0
.end method

.method public isMementoEnabledForWorld()Z
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isMementoEnabledForWorld()Z

    move-result v0

    return v0
.end method

.method public isNetflixPreloaded()Z
    .locals 1

    .prologue
    .line 1419
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsNetflixPreloaded:Z

    return v0
.end method

.method public isNrmCookiePresent()Z
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNonMemberData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNonMemberData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isNrmCookiePresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfflineFeatureDisabled()Z
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getOfflineUnavailableReason()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isPlayBillingDisabled()Z

    move-result v0

    return v0
.end method

.method public isPreviewContentEnabled()Z
    .locals 4

    .prologue
    .line 1222
    const/4 v0, 0x1

    .line 1223
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->isPreviewContentEnabled()Z

    move-result v0

    .line 1226
    :cond_0
    const-string/jumbo v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JPLAYER2, preview content is enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v0
.end method

.method public isSignUpEnabled()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isSignUpEnabled()Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 606
    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWidevineL1Enabled()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->enableWidevineL1()Z

    move-result v0

    return v0
.end method

.method public isWidevineL3SystemId4266Supported()Z
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isEnabledWidevineL3SystemId4266()Z

    move-result v0

    .line 1385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLogout()V
    .locals 0

    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->clearFormerMemberData()V

    .line 1577
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->clearEsnDependedSavedData()V

    .line 1578
    return-void
.end method

.method public persistConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getDeviceConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mStreamingConfigOverride:Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getStreamingConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->persistStreamingOverride(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getAccountConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->persistAccountConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mABTestConfigOverride:Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getABTestConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->persistABTestConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->persistNrmConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getNrmLanguagesData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->persistNrmLanguagesOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;)V

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mCastKeyConfigOverride:Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getCastKeyData()Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->persistCastConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;)V

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mSignInConfigOverride:Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->persistSignInConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    .line 372
    return-void
.end method

.method public persistFormerMemberData(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V
    .locals 3

    .prologue
    .line 1257
    if-nez p1, :cond_0

    .line 1258
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "formerMemberData object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :goto_0
    return-void

    .line 1262
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "formerMemberInfo"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public persistNrmLanguagesData(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;)V
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNrmConfigOverride:Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->persistNrmLanguagesOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;)V

    .line 1280
    return-void
.end method

.method public declared-synchronized refreshConfig(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V
    .locals 2

    .prologue
    .line 416
    monitor-enter p0

    if-eqz p3, :cond_0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigAgentListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mIsConfigRefreshInBackground:Z

    if-nez v0, :cond_1

    .line 421
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Starting a config refresh "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->doRefreshConfig(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :goto_0
    monitor-exit p0

    return-void

    .line 424
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Ignoring request to refreshConfig because one is on-going."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDeviceAsOfflineBlacklisted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1342
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Offline disabled..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "offline_blaclisted_device_override"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1344
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDisableOfflineDeviceOverride:Z

    .line 1345
    return-void
.end method

.method public setShouldUseAndroidHttpStack(Z)V
    .locals 0

    .prologue
    .line 1362
    return-void
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->shouldAlertForMissingLocale()Z

    move-result v0

    return v0
.end method

.method public shouldDisableVoip()Z
    .locals 1

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mMicrophoneExist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    .line 1151
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->shouldDisableVoip()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAccountConfigOverride:Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->shouldDisableVoip()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1159
    :goto_0
    return v0

    .line 1151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldUseAndroidHttpStack()Z
    .locals 1

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->useAndroidHttpStack(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public showHelpForNonMemebers()Z
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowHelpForNonMember()Z

    move-result v0

    .line 1399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useMslForDataRequests()Z
    .locals 2

    .prologue
    .line 1436
    const/4 v0, 0x0

    .line 1442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/persistent/DataNetworkRequestConfig;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Current user is in AB test (cell 2) to use MSL for all requests"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const/4 v0, 0x1

    .line 1446
    :cond_0
    return v0
.end method

.method public userAgentLogoutComplete()V
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mNeedLogout:Z

    .line 769
    return-void
.end method

.method public verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 2

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->createVerifyLoginRequest(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1291
    return-void
.end method
