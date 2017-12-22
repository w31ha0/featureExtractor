.class public abstract Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;
.super Lcom/netflix/mediaclient/ui/login/AccountActivity;
.source "WebViewAccountActivity.java"


# static fields
.field private static final COOKIE_SUFFIX:Ljava/lang/String; = "; "

.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "en"

.field private static final NETFLIX_DOMAIN:Ljava/lang/String; = ".netflix.com"

.field private static final TAG:Ljava/lang/String; = "WebViewAccountActivity"

.field protected static final USE_LATEST_COOKIES:Ljava/lang/String; = "useDynecomCookies"


# instance fields
.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mSharedContextSessionUuid:Ljava/lang/String;

.field private mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

.field private mWebViewLoaded:Z

.field private mWebViewVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;-><init>()V

    .line 52
    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private appendCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->updateToLatestNonMemberCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private buildNonMemberCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 343
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 356
    new-instance v1, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->getReactNativeMode()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    const-string/jumbo v1, "flow=websiteSignUp; "

    .line 359
    const/4 v2, 0x2

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method private cookiesIncludeNetflixId(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 265
    const-string/jumbo v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 266
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 267
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    const/4 v0, 0x1

    .line 271
    :cond_0
    return v0

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private enableWebViewDebugging()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 85
    const-string/jumbo v0, "WebViewAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempting to enable WebView Debugging. API Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method private getCookieFromList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 328
    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 333
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 334
    goto :goto_0

    .line 332
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private setCookieAndSync([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 275
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 277
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 278
    const-string/jumbo v4, ".netflix.com"

    invoke-virtual {v1, v4, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 282
    return-void
.end method

.method private setNonMemberCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;Z)V
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string/jumbo v1, ".netflix.com"

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz p1, :cond_0

    .line 257
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->cookiesIncludeNetflixId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 258
    :cond_0
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "using existing cookies. "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->buildNonMemberCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->appendCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setCookieAndSync([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateToLatestNonMemberCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 293
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getCookieFromList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getCookieFromList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 299
    array-length v6, v2

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_5

    aget-object v7, v2, v0

    .line 300
    invoke-static {v7}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 299
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 305
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 306
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "; "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 312
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 313
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "; "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 319
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "; "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clearCookies()V
    .locals 2

    .prologue
    .line 370
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "Removing cookies"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 372
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 374
    return-void
.end method

.method public abstract createJSBridge()Ljava/lang/Object;
.end method

.method public createWebViewClient()Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$1;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    return-object v0
.end method

.method public getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    return-object v0
.end method

.method public abstract getBootUrl()Ljava/lang/String;
.end method

.method public getDeviceLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "en"

    goto :goto_0
.end method

.method public abstract getErrorHandler()Ljava/lang/Runnable;
.end method

.method public abstract getNextTask()Ljava/lang/Runnable;
.end method

.method public abstract getTimeout()J
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWebViewLoaded()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewLoaded:Z

    return v0
.end method

.method protected noConnectivityWarning()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0300f9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setContentView(I)V

    .line 93
    const v0, 0x7f10036e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    .line 94
    const v0, 0x7f1001d8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mFlipper:Landroid/widget/ViewFlipper;

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->createWebViewClient()Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    .line 101
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->setWindowSecureFlag(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onStop()V

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onWebViewLoaded()V
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "UI ready to interact"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v1, 0x0

    const v2, 0x7f090156

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 211
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 213
    return-void
.end method

.method public provideTwoButtonDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 216
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const v2, 0x7f090156

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f0900bd

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 219
    return-void
.end method

.method protected reload(Z)V
    .locals 2

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->clearCookies()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;->clearHistory()V

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method protected setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getBootUrl()Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 125
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 126
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->createJSBridge()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "nfandroid"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$2;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/signup/Bootloader;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    .line 147
    const-string/jumbo v0, "nextUrl"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    const-string/jumbo v0, "nextUrl"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getBootUrl()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setUrl(Ljava/lang/String;)V

    .line 155
    :cond_1
    const-string/jumbo v0, "WebViewAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportStartSharedContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string/jumbo v1, ".netflix.com"

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "WebViewAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "All the cookies in a string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_3

    const-string/jumbo v1, "useDynecomCookies"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setNonMemberCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;Z)V

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportStartSharedContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "Adding timeout for webview to load"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    :cond_2
    return-void

    :cond_3
    move v0, v6

    .line 162
    goto :goto_0
.end method

.method protected showToast(I)V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->showToast(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    :cond_0
    return-void
.end method

.method protected startNextActivity(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "Removing jumpToSignIn"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    invoke-virtual {p0, v2, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->overridePendingTransition(II)V

    .line 251
    :cond_0
    return-void
.end method

.method protected webViewVisibility(Z)V
    .locals 3

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    if-eq p1, v0, :cond_0

    .line 203
    const-string/jumbo v0, "WebViewAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebView visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 205
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    .line 207
    :cond_0
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
