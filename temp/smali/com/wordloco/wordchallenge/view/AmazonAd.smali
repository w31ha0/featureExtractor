.class public Lcom/wordloco/wordchallenge/view/AmazonAd;
.super Lcom/google/example/games/basegameutils/BaseGameActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;


# instance fields
.field private a:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/AmazonAd;)Lcom/amazon/device/ads/AdLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->loadAd()Z

    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/AmazonAd;->setContentView(I)V

    .line 187
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onDestroy()V

    .line 48
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    .line 52
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onPause()V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onResume()V

    .line 62
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "pasando 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    .line 76
    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 78
    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    .line 79
    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    .line 78
    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    .line 81
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 82
    const/4 v2, -0x2

    const/16 v3, 0x51

    .line 81
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 85
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/AmazonAd;->a:Lcom/amazon/device/ads/AdLayout;

    new-instance v1, Lcom/wordloco/wordchallenge/view/a;

    invoke-direct {v1, p0, p2}, Lcom/wordloco/wordchallenge/view/a;-><init>(Lcom/wordloco/wordchallenge/view/AmazonAd;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 137
    :try_start_0
    const-string v0, "36eccea9de8f4218a107d1042c49c0d3"

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/AmazonAd;->a()V

    .line 145
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "SimpleAdSample"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException thrown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
