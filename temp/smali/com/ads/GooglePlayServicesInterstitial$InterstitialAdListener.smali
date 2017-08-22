.class Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "GooglePlayServicesInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ads/GooglePlayServicesInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterstitialAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ads/GooglePlayServicesInterstitial;


# direct methods
.method private constructor <init>(Lcom/ads/GooglePlayServicesInterstitial;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ads/GooglePlayServicesInterstitial;Lcom/ads/GooglePlayServicesInterstitial$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ads/GooglePlayServicesInterstitial;
    .param p2, "x1"    # Lcom/ads/GooglePlayServicesInterstitial$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;-><init>(Lcom/ads/GooglePlayServicesInterstitial;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 93
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 97
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 109
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 117
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "MoPub"

    const-string v1, "Showing Google Play Services interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/ads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesInterstitial;->access$100(Lcom/ads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 125
    :cond_0
    return-void
.end method
