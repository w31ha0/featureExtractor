.class Lcom/amazon/device/ads/Metrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final TYPED_METRIC:Z = true

.field private static instance:Lcom/amazon/device/ads/Metrics;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private metricsCollector:Lcom/amazon/device/ads/MetricsCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Metrics;->LOGTAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/amazon/device/ads/Metrics;

    invoke-direct {v0}, Lcom/amazon/device/ads/Metrics;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Metrics;->instance:Lcom/amazon/device/ads/Metrics;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Metrics;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Metrics;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 191
    new-instance v0, Lcom/amazon/device/ads/MetricsCollector;

    invoke-direct {v0}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Metrics;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/amazon/device/ads/Metrics;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/device/ads/Metrics;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/amazon/device/ads/Metrics;->instance:Lcom/amazon/device/ads/Metrics;

    return-object v0
.end method

.method private getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method private sendMetrics(Lcom/amazon/device/ads/WebRequest;)V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/amazon/device/ads/Metrics$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Metrics$1;-><init>(Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/WebRequest;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method


# virtual methods
.method public getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    return-object v0
.end method

.method public submitAndResetMetrics(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;)V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/amazon/device/ads/Metrics;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "METRIC Submit and Reset"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/amazon/device/ads/AdMetrics;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AdMetrics;-><init>(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;)V

    .line 222
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdMetrics;->canSubmit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 225
    new-instance v2, Lcom/amazon/device/ads/MetricsCollector;

    invoke-direct {v2}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    iput-object v2, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 226
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdMetrics;->addGlobalMetrics(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 228
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdMetrics;->getAaxWebRequestAndResetAdMetrics()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/Metrics;->sendMetrics(Lcom/amazon/device/ads/WebRequest;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-interface {p1}, Lcom/amazon/device/ads/Metrics$MetricsSubmitter;->resetMetricsCollector()V

    goto :goto_0
.end method
