.class public Lcom/ads/AdbertMopubInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "AdbertMopubInterstitial.java"


# instance fields
.field adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
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
    .line 23
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/adbert/AdbertInterstitialAD;

    invoke-direct {v2, p1}, Lcom/adbert/AdbertInterstitialAD;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    .line 24
    const-string v2, "appid"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    .local v0, "appid":Ljava/lang/String;
    const-string v2, "appkey"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    .local v1, "appkey":Ljava/lang/String;
    iget-object v2, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adbert/AdbertInterstitialAD;->setMediationAPPID(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    new-instance v3, Lcom/ads/AdbertMopubInterstitial$1;

    invoke-direct {v3, p0, p2}, Lcom/ads/AdbertMopubInterstitial$1;-><init>(Lcom/ads/AdbertMopubInterstitial;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v2, v3}, Lcom/adbert/AdbertInterstitialAD;->setListener(Lcom/adbert/AdbertListener;)V

    .line 43
    iget-object v2, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    invoke-virtual {v2}, Lcom/adbert/AdbertInterstitialAD;->loadAd()V

    .line 45
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    invoke-virtual {v0}, Lcom/adbert/AdbertInterstitialAD;->destroy()V

    .line 57
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ads/AdbertMopubInterstitial;->adbertInterstitialAD:Lcom/adbert/AdbertInterstitialAD;

    invoke-virtual {v0}, Lcom/adbert/AdbertInterstitialAD;->show()V

    .line 51
    :cond_0
    return-void
.end method
