.class Lcom/wordloco/wordchallenge/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/AmazonAd;

.field private final synthetic b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/AmazonAd;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/a;->a:Lcom/wordloco/wordchallenge/view/AmazonAd;

    iput-object p2, p0, Lcom/wordloco/wordchallenge/view/a;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeeee onAdCollapsed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/a;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClosed()V

    .line 124
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeeee onAdDismissed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/a;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClosed()V

    .line 130
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeeee onAdExpanded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/a;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClicked()V

    .line 116
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eeeee onAdFailedToLoad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/a;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    .line 106
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/a;->a:Lcom/wordloco/wordchallenge/view/AmazonAd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeeee onAdLoaded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/a;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/a;->a:Lcom/wordloco/wordchallenge/view/AmazonAd;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/AmazonAd;->a(Lcom/wordloco/wordchallenge/view/AmazonAd;)Lcom/amazon/device/ads/AdLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    .line 96
    return-void
.end method
