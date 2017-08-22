.class Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;
.super Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;
.source "TWMInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    .line 197
    invoke-direct {p0, p2, p3}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;-><init>(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    return-object v0
.end method


# virtual methods
.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 64
    invoke-super {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->onResponse(Lorg/json/JSONObject;)V

    .line 65
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v0, v4}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Z)V

    .line 67
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 68
    const-string v0, "_context"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v2, "userAgent"

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v0, "adListener"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, "adRequest"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->c(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "mediaUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getMediaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "planId"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v0, "cvt"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getClickValidTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v0, "adType"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getReportClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Ljava/lang/String;)V

    .line 77
    const-string v0, "targetUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const-string v0, "clickUrl"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v0, "ad"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v0, "isOpenChrome"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->isOpenChrome()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getTxId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 83
    const-string v2, "_deviceId"

    const-string v3, "_deviceId"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->f(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/app/Activity;)V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;

    invoke-direct {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;)V

    invoke-virtual {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setIRBehavior(Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;)V

    .line 111
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    invoke-virtual {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 182
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->isRwd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 184
    invoke-virtual {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    return-void
.end method
