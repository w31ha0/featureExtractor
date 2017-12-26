.class Lcom/wordloco/wordchallenge/view/b;
.super Lcom/amazon/device/ads/DefaultAdListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/AmazonInt;

.field private final synthetic b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/AmazonInt;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/b;->a:Lcom/wordloco/wordchallenge/view/AmazonInt;

    iput-object p2, p0, Lcom/wordloco/wordchallenge/view/b;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 73
    invoke-direct {p0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeeee int onAdDismissed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/b;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    .line 97
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eeeee int onAdFailedToLoad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/b;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 90
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/b;->a:Lcom/wordloco/wordchallenge/view/AmazonInt;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/AmazonInt;->a(Lcom/wordloco/wordchallenge/view/AmazonInt;)Lcom/amazon/device/ads/InterstitialAd;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " eee  int loaded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/b;->a:Lcom/wordloco/wordchallenge/view/AmazonInt;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/AmazonInt;->a(Lcom/wordloco/wordchallenge/view/AmazonInt;)Lcom/amazon/device/ads/InterstitialAd;

    move-result-object v0

    sput-object v0, Lcom/wordloco/wordchallenge/d/b;->b:Lcom/amazon/device/ads/InterstitialAd;

    .line 80
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/b;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    .line 82
    :cond_0
    return-void
.end method
