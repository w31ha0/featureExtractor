.class public Lcom/wordloco/wordchallenge/view/AmazonInt;
.super Lcom/google/example/games/basegameutils/BaseGameActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# instance fields
.field private a:Lcom/amazon/device/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/AmazonInt;)Lcom/amazon/device/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonInt;->a:Lcom/amazon/device/ads/InterstitialAd;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AmazonInt;->setContentView(I)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onDestroy()V

    .line 30
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonInt;->a:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonInt;->a:Lcom/amazon/device/ads/InterstitialAd;

    .line 33
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onPause()V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onResume()V

    .line 43
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "pasando int 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    const-string v0, "36eccea9de8f4218a107d1042c49c0d3"

    .line 64
    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    .line 67
    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 69
    new-instance v1, Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {v1, p1}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/AmazonInt;->a:Lcom/amazon/device/ads/InterstitialAd;

    .line 71
    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonInt;->a:Lcom/amazon/device/ads/InterstitialAd;

    new-instance v1, Lcom/wordloco/wordchallenge/view/b;

    invoke-direct {v1, p0, p2}, Lcom/wordloco/wordchallenge/view/b;-><init>(Lcom/wordloco/wordchallenge/view/AmazonInt;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 102
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/AmazonInt;->a:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "pasando int 2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public showInterstitial()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
