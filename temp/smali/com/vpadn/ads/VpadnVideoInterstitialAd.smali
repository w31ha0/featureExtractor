.class public Lcom/vpadn/ads/VpadnVideoInterstitialAd;
.super Lcom/vpadn/ads/VpadnInterstitialAd;
.source "VpadnVideoInterstitialAd.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/vpadn/ads/VpadnInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vpadn/ads/VpadnVideoInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->h()V

    .line 14
    invoke-super {p0, p1}, Lcom/vpadn/ads/VpadnInterstitialAd;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 15
    return-void
.end method
