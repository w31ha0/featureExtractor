.class Lcom/vpadn/ads/VpadnInterstitialAd$1;
.super Ljava/lang/Object;
.source "VpadnInterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnInterstitialAd;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnAdRequest;

.field final synthetic b:Lcom/vpadn/ads/VpadnInterstitialAd;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnInterstitialAd;Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vpadn/ads/VpadnInterstitialAd$1;->b:Lcom/vpadn/ads/VpadnInterstitialAd;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnInterstitialAd$1;->a:Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd$1;->b:Lcom/vpadn/ads/VpadnInterstitialAd;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd$1;->b:Lcom/vpadn/ads/VpadnInterstitialAd;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnInterstitialAd$1;->a:Lcom/vpadn/ads/VpadnAdRequest;

    invoke-virtual {v0, v1}, Lvpadn/ah;->a(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 164
    :cond_0
    return-void
.end method
