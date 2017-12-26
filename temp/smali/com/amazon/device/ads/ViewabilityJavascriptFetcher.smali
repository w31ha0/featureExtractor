.class Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CDN_URL:Ljava/lang/String; = "https://dwxjayoxbnyrr.cloudfront.net/amazon-ads.viewablejs"

.field private static final LOGTAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private currentJSVersion:I

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final metrics:Lcom/amazon/device/ads/Metrics;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-direct {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    .line 42
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v2}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v3

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v4

    new-instance v5, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v6

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v7

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v8

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 64
    iput-object p2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 65
    iput-object p3, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 66
    iput-object p4, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    .line 67
    iput-object p5, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 68
    iput-object p6, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    .line 69
    iput-object p7, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 70
    iput-object p8, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 71
    iput-object p9, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 72
    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    return-object v0
.end method

.method private onFetchFailure()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Viewability Javascript fetch failed"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private shouldFetch()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Configuration;->getInt(Lcom/amazon/device/ads/Configuration$ConfigOption;)I

    move-result v1

    iput v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    .line 85
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "viewableJSVersionStored"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    if-ge v1, v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "viewableJSSettingsNameAmazonAdSDK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected beginFetch()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;-><init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 122
    return-void
.end method

.method protected createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 176
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v3, "https://dwxjayoxbnyrr.cloudfront.net/amazon-ads.viewablejs"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Configuration;->getStringWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 178
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 179
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.aaxConfigUseSecure"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    .line 180
    return-object v0
.end method

.method public fetchJavascript()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->shouldFetch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->beginFetch()V

    .line 110
    :cond_0
    return-void
.end method

.method public fetchJavascriptFromURLOnBackgroundThread()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "In ViewabilityJavascriptFetcher background thread"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v0

    .line 131
    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    .line 165
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 139
    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    goto :goto_0

    .line 148
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "viewableJSSettingsNameAmazonAdSDK"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "viewableJSVersionStored"

    iget v2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putInt(Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Viewability Javascript fetched and saved"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    goto :goto_0
.end method
