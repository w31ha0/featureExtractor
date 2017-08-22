.class Lcom/vpadn/ads/VpadnInterstitialAd$3;
.super Ljava/lang/Object;
.source "VpadnInterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnInterstitialAd;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnInterstitialAd;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnInterstitialAd;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/vpadn/ads/VpadnInterstitialAd$3;->a:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd$3;->a:Lcom/vpadn/ads/VpadnInterstitialAd;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd$3;->a:Lcom/vpadn/ads/VpadnInterstitialAd;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->b()V

    .line 367
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd$3;->a:Lcom/vpadn/ads/VpadnInterstitialAd;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->k()V

    .line 368
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd$3;->a:Lcom/vpadn/ads/VpadnInterstitialAd;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    .line 370
    :cond_0
    return-void
.end method
