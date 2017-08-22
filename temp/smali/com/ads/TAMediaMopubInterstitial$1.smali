.class Lcom/ads/TAMediaMopubInterstitial$1;
.super Ljava/lang/Object;
.source "TAMediaMopubInterstitial.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ads/TAMediaMopubInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ads/TAMediaMopubInterstitial;


# direct methods
.method constructor <init>(Lcom/ads/TAMediaMopubInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ads/TAMediaMopubInterstitial;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .prologue
    .line 71
    const-string v0, "MoPub"

    const-string v1, "TAMediaMopub interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 75
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 2
    .param p1, "ad"    # Lcom/taiwanmobile/pt/adp/view/TWMAd;
    .param p2, "errorCode"    # Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    .prologue
    .line 55
    const-string v0, "MoPub"

    const-string v1, "TAMediaMopub interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 80
    return-void
.end method

.method public onPresentScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .prologue
    .line 63
    const-string v0, "MoPub"

    const-string v1, "TAMediaMopub  onPresentScreen interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 67
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .prologue
    .line 47
    const-string v0, "MoPub"

    const-string v1, "TAMediaMopub interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ads/TAMediaMopubInterstitial$1;->this$0:Lcom/ads/TAMediaMopubInterstitial;

    invoke-static {v0}, Lcom/ads/TAMediaMopubInterstitial;->access$000(Lcom/ads/TAMediaMopubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 51
    :cond_0
    return-void
.end method
