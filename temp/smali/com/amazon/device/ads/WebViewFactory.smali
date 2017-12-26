.class Lcom/amazon/device/ads/WebViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/amazon/device/ads/WebViewFactory;


# instance fields
.field private final cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private final webViewConstructor:Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

.field private webViewDebugging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/amazon/device/ads/WebViewFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebViewFactory;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/WebViewFactory;->instance:Lcom/amazon/device/ads/WebViewFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-direct {v4}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

    invoke-direct {v5}, Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/WebViewFactory;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewDebugging:Z

    .line 43
    iput-object p1, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 44
    iput-object p2, p0, Lcom/amazon/device/ads/WebViewFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 45
    iput-object p3, p0, Lcom/amazon/device/ads/WebViewFactory;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 46
    iput-object p4, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    .line 47
    iput-object p5, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewConstructor:Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

    .line 48
    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/WebViewFactory;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/amazon/device/ads/WebViewFactory;->instance:Lcom/amazon/device/ads/WebViewFactory;

    return-object v0
.end method

.method private shouldDebugWebViews()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/device/ads/WebViewFactory;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.webViews"

    iget-boolean v2, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewDebugging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 143
    iget-boolean v1, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewDebugging:Z

    if-eq v0, v1, :cond_0

    .line 145
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewDebugging:Z

    .line 146
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewDebugging:Z

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->enableWebViewDebugging(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method private updateAdIdCookie()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->isCookieSyncManagerCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 82
    const-string v0, ""

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    const-string v2, "http://amazon-adsystem.com"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ad-id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; Domain=.amazon-adsystem.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/WebViewFactory;->shouldDebugWebViews()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewConstructor:Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DeviceInfo;->setUserAgentString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->createCookieSyncManager(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/amazon/device/ads/WebViewFactory;->updateAdIdCookie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWebViewOk(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setJavaScriptEnabledForWebView(ZLandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/WebViewFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-virtual {v0, p3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    .line 130
    const-string v1, "Could not set JavaScriptEnabled because a NullPointerException was encountered."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method
