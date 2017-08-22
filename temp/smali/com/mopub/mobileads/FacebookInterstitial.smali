.class public Lcom/mopub/mobileads/FacebookInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "FacebookInterstitial.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# static fields
.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"


# instance fields
.field private mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
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
    .line 114
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "placement_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
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
.method getInterstitialAd()Lcom/facebook/ads/InterstitialAd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    return-object v0
.end method

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
    .line 31
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 34
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/FacebookInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "placement_id"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "placementId":Ljava/lang/String;
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    .line 42
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, p0}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 43
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 44
    .end local v0    # "placementId":Ljava/lang/String;
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 98
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 100
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 74
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 76
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "error"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 80
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    if-ne p2, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    if-ne p2, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 109
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 111
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 92
    const-string v0, "MoPub"

    const-string v1, "Showing Facebook interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 94
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    .line 66
    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 105
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Facebook interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial;->mFacebookInterstitial:Lcom/facebook/ads/InterstitialAd;

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/FacebookInterstitial;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Interstitial listener not instantiated. Please load interstitial again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
