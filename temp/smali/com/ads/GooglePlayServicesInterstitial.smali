.class public Lcom/ads/GooglePlayServicesInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "GooglePlayServicesInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitID"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"


# instance fields
.field private mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/ads/GooglePlayServicesInterstitial;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
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
    .line 80
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "adUnitID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getGoogleInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
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
    .line 37
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/ads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 40
    invoke-direct {p0, p4}, Lcom/ads/GooglePlayServicesInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string v3, "adUnitID"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "adUnitId":Ljava/lang/String;
    new-instance v3, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v3, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 48
    iget-object v3, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v4, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;-><init>(Lcom/ads/GooglePlayServicesInterstitial;Lcom/ads/GooglePlayServicesInterstitial$1;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 49
    iget-object v3, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 51
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v4, "MoPub"

    .line 52
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 56
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :try_start_0
    iget-object v3, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v1    # "adUnitId":Ljava/lang/String;
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/ads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 57
    .restart local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .restart local v1    # "adUnitId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    iget-object v3, p0, Lcom/ads/GooglePlayServicesInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial;->mGoogleInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Google Play Services interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
