.class public Lcom/vpon/ad/VponInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "VponInterstitial.java"


# static fields
.field private static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"


# instance fields
.field private interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    return-void
.end method

.method static synthetic access$000(Lcom/vpon/ad/VponInterstitial;)Lcom/vpadn/ads/VpadnInterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/vpon/ad/VponInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vpon/ad/VponInterstitial;Lcom/vpadn/ads/VpadnInterstitialAd;)Lcom/vpadn/ads/VpadnInterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/vpon/ad/VponInterstitial;
    .param p1, "x1"    # Lcom/vpadn/ads/VpadnInterstitialAd;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/vpon/ad/VponInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

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
    iput-object p2, p0, Lcom/vpon/ad/VponInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 35
    invoke-direct {p0, p4}, Lcom/vpon/ad/VponInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "placement_id"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "placementId":Ljava/lang/String;
    new-instance v1, Lcom/vpadn/ads/VpadnInterstitialAd;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const-string v2, "TW"

    invoke-direct {v1, p1, v0, v2}, Lcom/vpadn/ads/VpadnInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 44
    iget-object v1, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    new-instance v2, Lcom/vpon/ad/VponInterstitial$1;

    invoke-direct {v2, p0}, Lcom/vpon/ad/VponInterstitial$1;-><init>(Lcom/vpon/ad/VponInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/vpadn/ads/VpadnInterstitialAd;->setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V

    .line 92
    iget-object v1, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    new-instance v2, Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {v2}, Lcom/vpadn/ads/VpadnAdRequest;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vpadn/ads/VpadnInterstitialAd;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 93
    .end local v0    # "placementId":Ljava/lang/String;
    :goto_0
    return-void

    .line 38
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/vpon/ad/VponInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnInterstitialAd;->setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->destroy()V

    .line 109
    iput-object v1, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 111
    :cond_1
    return-void
.end method

.method protected showInterstitial()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->show()V

    .line 100
    :cond_0
    return-void
.end method
