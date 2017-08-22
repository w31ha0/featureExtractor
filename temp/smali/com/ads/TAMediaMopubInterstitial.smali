.class public Lcom/ads/TAMediaMopubInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "TAMediaMopubInterstitial.java"


# static fields
.field private static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"


# instance fields
.field private interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/ads/TAMediaMopubInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "placement_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "placementId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/ads/TAMediaMopubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 34
    invoke-direct {p0, p4}, Lcom/ads/TAMediaMopubInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "placement_id"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "placementId":Ljava/lang/String;
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v1, p1, v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    .line 43
    iget-object v1, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    new-instance v2, Lcom/ads/TAMediaMopubInterstitial$1;

    invoke-direct {v2, p0}, Lcom/ads/TAMediaMopubInterstitial$1;-><init>(Lcom/ads/TAMediaMopubInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V

    .line 84
    iget-object v1, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    invoke-direct {v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->loadAd(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)V

    .line 85
    .end local v0    # "placementId":Ljava/lang/String;
    :goto_0
    return-void

    .line 37
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/ads/TAMediaMopubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "MoPub"

    const-string v1, "TAMediaMopub interstitial ad show."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial;->interstitialAd:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->show()V

    .line 93
    :cond_0
    return-void
.end method
