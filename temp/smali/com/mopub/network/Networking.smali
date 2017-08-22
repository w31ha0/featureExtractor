.class public Lcom/mopub/network/Networking;
.super Ljava/lang/Object;
.source "Networking.java"


# static fields
.field static final CACHE_DIRECTORY_NAME:Ljava/lang/String; = "mopub-volley-cache"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static volatile sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

.field private static volatile sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

.field private static sUseHttps:Z

.field private static volatile sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/network/Networking;->sUseHttps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearForTesting()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 170
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit v1

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBaseUrlScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "http"

    return-object v0
.end method

.method public static getCachedUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 162
    .local v0, "userAgent":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 165
    .end local v0    # "userAgent":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    sget-object v2, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    .line 84
    .local v2, "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    if-nez v2, :cond_1

    .line 85
    const-class v6, Lcom/mopub/network/Networking;

    monitor-enter v6

    .line 86
    :try_start_0
    sget-object v2, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    .line 87
    if-nez v2, :cond_0

    .line 88
    invoke-static {p0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v4

    .line 89
    .local v4, "queue":Lcom/mopub/volley/RequestQueue;
    invoke-static {p0}, Lcom/mopub/common/util/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v0

    .line 90
    .local v0, "cacheSize":I
    new-instance v1, Lcom/mopub/network/Networking$1;

    invoke-direct {v1, v0}, Lcom/mopub/network/Networking$1;-><init>(I)V

    .line 100
    .local v1, "imageCache":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    new-instance v3, Lcom/mopub/network/MaxWidthImageLoader;

    new-instance v5, Lcom/mopub/network/Networking$2;

    invoke-direct {v5, v1}, Lcom/mopub/network/Networking$2;-><init>(Landroid/support/v4/util/LruCache;)V

    invoke-direct {v3, v4, p0, v5}, Lcom/mopub/network/MaxWidthImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v2    # "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    .local v3, "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    :try_start_1
    sput-object v3, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 113
    .end local v0    # "cacheSize":I
    .end local v1    # "imageCache":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v3    # "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    .end local v4    # "queue":Lcom/mopub/volley/RequestQueue;
    .restart local v2    # "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    :cond_0
    :try_start_2
    monitor-exit v6

    .line 115
    :cond_1
    return-object v2

    .line 113
    :catchall_0
    move-exception v5

    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v2    # "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    .restart local v0    # "cacheSize":I
    .restart local v1    # "imageCache":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .restart local v3    # "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    .restart local v4    # "queue":Lcom/mopub/volley/RequestQueue;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    .restart local v2    # "imageLoader":Lcom/mopub/network/MaxWidthImageLoader;
    goto :goto_0
.end method

.method public static getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    sget-object v4, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 53
    .local v4, "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    if-nez v4, :cond_1

    .line 54
    const-class v11, Lcom/mopub/network/Networking;

    monitor-enter v11

    .line 55
    :try_start_0
    sget-object v4, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 56
    if-nez v4, :cond_0

    .line 59
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v1

    .line 60
    .local v1, "clientMetadata":Lcom/mopub/common/ClientMetadata;
    new-instance v7, Lcom/mopub/network/PlayServicesUrlRewriter;

    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, p0}, Lcom/mopub/network/PlayServicesUrlRewriter;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 61
    .local v7, "urlRewriter":Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    const/16 v10, 0x2710

    invoke-static {v10}, Lcom/mopub/network/CustomSSLSocketFactory;->getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;

    move-result-object v6

    .line 63
    .local v6, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "userAgent":Ljava/lang/String;
    new-instance v2, Lcom/mopub/network/RequestQueueHttpStack;

    invoke-direct {v2, v8, v7, v6}, Lcom/mopub/network/RequestQueueHttpStack;-><init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 66
    .local v2, "httpStack":Lcom/mopub/volley/toolbox/HttpStack;
    new-instance v3, Lcom/mopub/volley/toolbox/BasicNetwork;

    invoke-direct {v3, v2}, Lcom/mopub/volley/toolbox/BasicNetwork;-><init>(Lcom/mopub/volley/toolbox/HttpStack;)V

    .line 67
    .local v3, "network":Lcom/mopub/volley/Network;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "mopub-volley-cache"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v9, "volleyCacheDir":Ljava/io/File;
    new-instance v0, Lcom/mopub/volley/toolbox/DiskBasedCache;

    const-wide/32 v12, 0xa00000

    invoke-static {v9, v12, v13}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v12

    long-to-int v10, v12

    invoke-direct {v0, v9, v10}, Lcom/mopub/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 70
    .local v0, "cache":Lcom/mopub/volley/Cache;
    new-instance v5, Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {v5, v0, v3}, Lcom/mopub/network/MoPubRequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v4    # "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    .local v5, "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    :try_start_1
    sput-object v5, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 72
    invoke-virtual {v5}, Lcom/mopub/network/MoPubRequestQueue;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 74
    .end local v0    # "cache":Lcom/mopub/volley/Cache;
    .end local v1    # "clientMetadata":Lcom/mopub/common/ClientMetadata;
    .end local v2    # "httpStack":Lcom/mopub/volley/toolbox/HttpStack;
    .end local v3    # "network":Lcom/mopub/volley/Network;
    .end local v5    # "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    .end local v6    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v7    # "urlRewriter":Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    .end local v8    # "userAgent":Ljava/lang/String;
    .end local v9    # "volleyCacheDir":Ljava/io/File;
    .restart local v4    # "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    :cond_0
    :try_start_2
    monitor-exit v11

    .line 77
    :cond_1
    return-object v4

    .line 74
    :catchall_0
    move-exception v10

    :goto_0
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .end local v4    # "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    .restart local v0    # "cache":Lcom/mopub/volley/Cache;
    .restart local v1    # "clientMetadata":Lcom/mopub/common/ClientMetadata;
    .restart local v2    # "httpStack":Lcom/mopub/volley/toolbox/HttpStack;
    .restart local v3    # "network":Lcom/mopub/volley/Network;
    .restart local v5    # "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    .restart local v6    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v7    # "urlRewriter":Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    .restart local v8    # "userAgent":Ljava/lang/String;
    .restart local v9    # "volleyCacheDir":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    .restart local v4    # "requestQueue":Lcom/mopub/network/MoPubRequestQueue;
    goto :goto_0
.end method

.method public static getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/mopub/network/Networking;->useHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    sget-object v1, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 128
    .local v1, "userAgent":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 129
    const-class v3, Lcom/mopub/network/Networking;

    monitor-enter v3

    .line 130
    :try_start_0
    sget-object v1, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 131
    if-nez v1, :cond_0

    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_2

    .line 133
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_0
    sput-object v1, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 147
    :cond_0
    monitor-exit v3

    .line 150
    :cond_1
    return-object v1

    .line 134
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 138
    :try_start_1
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 141
    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static declared-synchronized setImageLoaderForTesting(Lcom/mopub/network/MaxWidthImageLoader;)V
    .locals 2
    .param p0, "imageLoader"    # Lcom/mopub/network/MaxWidthImageLoader;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 182
    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setRequestQueueForTesting(Lcom/mopub/network/MoPubRequestQueue;)V
    .locals 2
    .param p0, "queue"    # Lcom/mopub/network/MoPubRequestQueue;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 177
    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit v0

    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUserAgentForTesting(Ljava/lang/String;)V
    .locals 2
    .param p0, "userAgent"    # Ljava/lang/String;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static useHttps(Z)V
    .locals 0
    .param p0, "useHttps"    # Z

    .prologue
    .line 194
    sput-boolean p0, Lcom/mopub/network/Networking;->sUseHttps:Z

    .line 195
    return-void
.end method

.method public static useHttps()Z
    .locals 1

    .prologue
    .line 198
    sget-boolean v0, Lcom/mopub/network/Networking;->sUseHttps:Z

    return v0
.end method
