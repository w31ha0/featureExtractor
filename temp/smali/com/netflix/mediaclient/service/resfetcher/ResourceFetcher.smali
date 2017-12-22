.class public Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ResourceFetcher.java"


# static fields
.field private static final DOWNLOADS_CACHE_DIR:Ljava/lang/String; = "downloads"

.field private static final MINIMUM_IMAGE_CACHE_TTL:J = 0x48190800L

.field private static final RESOURCE_REQUEST_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "nf_service_resourcefetcher"

.field private static final VOLLEY_CACHE_DIR:Ljava/lang/String; = "volley"


# instance fields
.field private mDataRequestQueue:Lcom/android/volley/RequestQueue;

.field private mDownloadsDir:Ljava/io/File;

.field private mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

.field private mResourceRequestQueue:Lcom/android/volley/RequestQueue;

.field private mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method private addDirectRequest(Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 527
    const-string/jumbo v2, "nf_service_resourcefetcher"

    const-string/jumbo v3, "Adding direct request %s to queue..."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getName(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 529
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDataRequestTimeout()I

    move-result v2

    .line 530
    const-string/jumbo v3, "nf_service_resourcefetcher"

    const-string/jumbo v4, "Setting default timeout value for data request to %d ms"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 532
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 533
    new-instance v3, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;-><init>(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->setUserCredentialRegistry(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V

    .line 535
    :cond_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/WebApiUtils;->createRetryPolicy(I)Lcom/android/volley/RetryPolicy;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 537
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v2

    .line 538
    if-eqz v2, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->setApiEndpointRegistry(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V

    .line 549
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 550
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->setConfig(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    .line 551
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDataRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move v0, v1

    .line 556
    :goto_0
    return v0

    .line 541
    :cond_2
    const-string/jumbo v1, "nf_service_resourcefetcher"

    const-string/jumbo v2, "ApiEndpointRegistry is not available!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addMslRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v2, "MSL agent is not ready, droping request"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 608
    :goto_0
    return v0

    .line 602
    :cond_0
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v3, "Adding MSL request %s to queue..."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getName(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 604
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->prepareDataRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)V

    .line 606
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDataRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move v0, v2

    .line 608
    goto :goto_0
.end method

.method private createDiskCache()Lcom/android/volley/toolbox/DiskBasedCache;
    .locals 7

    .prologue
    .line 461
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->getCacheSizeInBytes(Landroid/content/Context;)I

    move-result v1

    .line 463
    const-string/jumbo v2, "nf_service_resourcefetcher"

    const-string/jumbo v3, "Creating new Volley DiskBasedCache, location: %s,  max size: %d bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 464
    new-instance v2, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v2, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-object v2
.end method

.method private createHttpStack()Lcom/android/volley/toolbox/HttpStack;
    .locals 2

    .prologue
    .line 453
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Create resource Http Stack"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private createImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 181
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "ResourceFetcher creating ImageLoader"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 183
    const-string/jumbo v0, "Attempting to create an ImageLoader with a null RequestQueue"

    .line 184
    const-string/jumbo v1, "nf_service_resourcefetcher"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :goto_0
    return-object v6

    .line 189
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getImageCacheMinimumTtl()J

    move-result-wide v4

    .line 190
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResourceRequestTimeout()I

    move-result v3

    .line 191
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Received request to create new ImageLoader with socketTimeout = %d and minimumTtl = %d ms"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v8

    const/4 v7, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v6

    .line 198
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    .line 200
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getImageCache(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    move-result-object v2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;IJLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    move-object v6, v0

    .line 198
    goto :goto_0
.end method

.method private declared-synchronized getImageCache(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;
    .locals 8

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/NetflixApplication;

    .line 428
    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->getImageCache()Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    move-result-object v2

    .line 429
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    if-eqz v3, :cond_0

    .line 430
    move-object v0, v2

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :goto_0
    monitor-exit p0

    return-object v1

    .line 433
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getImageCacheSizeBytes()I

    move-result v3

    .line 434
    const-string/jumbo v2, "nf_service_resourcefetcher"

    const-string/jumbo v4, "Creating new BitmapLruCache of size %d bytes"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 435
    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$VolleyImageCache;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$VolleyImageCache;-><init>(I)V

    .line 436
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/NetflixApplication;->setImageCache(Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 437
    goto :goto_0

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getName(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 563
    :cond_0
    instance-of v0, p0, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;

    if-eqz v0, :cond_3

    .line 564
    check-cast p0, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 565
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 566
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 567
    :cond_1
    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 570
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 572
    :cond_3
    instance-of v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;

    if-eqz v0, :cond_6

    .line 573
    check-cast p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 574
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 575
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 576
    :cond_4
    if-eqz v0, :cond_5

    .line 577
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_0

    .line 582
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 475
    if-nez p1, :cond_0

    .line 476
    const-string/jumbo v1, "nf_service_resourcefetcher"

    const-string/jumbo v2, "Resource fetcher callback is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private initCache()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "downloads"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;-><init>(Lcom/android/volley/toolbox/DiskBasedCache;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    .line 116
    return-void
.end method

.method private initDataQueue()V
    .locals 7

    .prologue
    .line 134
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDataRequestThreadPoolSize()I

    move-result v0

    .line 136
    const-string/jumbo v1, "nf_service_resourcefetcher"

    const-string/jumbo v2, "Creating MSL Volley RequestQueue with threadPoolsize of %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    new-instance v1, Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v2}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v4, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDataRequestTimeout()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    const-string/jumbo v4, "msl"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDataRequestQueue:Lcom/android/volley/RequestQueue;

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDataRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 142
    return-void
.end method

.method private initResourceQueue()V
    .locals 6

    .prologue
    .line 120
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResFetcherThreadPoolSize()I

    move-result v0

    .line 122
    const-string/jumbo v1, "nf_service_resourcefetcher"

    const-string/jumbo v2, "Creating Volley RequestQueue with threadPoolsize of %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    new-instance v1, Lcom/android/volley/RequestQueue;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->createDiskCache()Lcom/android/volley/toolbox/DiskBasedCache;

    move-result-object v2

    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->createHttpStack()Lcom/android/volley/toolbox/HttpStack;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    const-string/jumbo v4, "resources"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 3

    .prologue
    .line 501
    monitor-enter p0

    if-nez p1, :cond_0

    .line 502
    :try_start_0
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Request is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    const/4 v0, 0x0

    .line 512
    :goto_0
    monitor-exit p0

    return v0

    .line 506
    :cond_0
    :try_start_1
    instance-of v0, p1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;

    if-eqz v0, :cond_1

    .line 508
    check-cast p1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->addMslRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    move-result v0

    goto :goto_0

    .line 510
    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;

    if-eqz v0, :cond_2

    .line 512
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->addDirectRequest(Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;)Z

    move-result v0

    goto :goto_0

    .line 516
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not supported implementation of NetflixDataRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelRequests(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public deleteLocalResource(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 489
    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Stopping Volley RequestQueue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 151
    iput-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDataRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_1

    .line 154
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Stopping MSL Volley RequestQueue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDataRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 156
    iput-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDataRequestQueue:Lcom/android/volley/RequestQueue;

    .line 158
    :cond_1
    return-void
.end method

.method protected doInit()V
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "ResourceFetcher starting doInit."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->initResourceQueue()V

    .line 102
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->initDataQueue()V

    .line 103
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->initCache()V

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 106
    return-void
.end method

.method public fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 9

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 307
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v1

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;->getEntryMetaData(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_1

    .line 311
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getByteOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getByteLength()J

    move-result-wide v6

    sget-object v8, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;

    new-instance v5, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;

    invoke-direct {v5, p0, v1, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResourceRequestTimeout()I

    move-result v6

    iget-object v7, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;)V

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 11

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 349
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v8

    .line 351
    new-instance v9, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$4;

    invoke-direct {v9, p0, v8, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$4;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 361
    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/volley/HttpRangeRequest;

    .line 362
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResourceRequestTimeout()I

    move-result v10

    move-object v3, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/service/resfetcher/volley/HttpRangeRequest;-><init>(Ljava/lang/String;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;I)V

    .line 364
    iget-object v3, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 365
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 7

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 276
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v2

    .line 277
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/FileDownloadRequest;

    new-instance v3, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$2;

    invoke-direct {v3, p0, v2, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$2;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResourceRequestTimeout()I

    move-result v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/resfetcher/volley/FileDownloadRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/android/volley/Request$Priority;Ljava/io/File;)V

    .line 289
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 290
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 267
    return-void
.end method

.method public fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 6

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 235
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v2

    .line 237
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;

    new-instance v3, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$1;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResourceRequestTimeout()I

    move-result v4

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/android/volley/Request$Priority;)V

    .line 248
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 249
    return-void
.end method

.method public fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 217
    return-void
.end method

.method public getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    if-nez v0, :cond_1

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->createImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    .line 170
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prefetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 4

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Request to prefetch resource with null URL"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;

    invoke-direct {v1, p0, p3, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 394
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v0

    .line 395
    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/volley/PrefetchResourceRequest;

    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getResourceRequestTimeout()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/volley/PrefetchResourceRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;I)V

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mResourceRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
