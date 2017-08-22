.class Lcom/vpon/ad/VponInterstitial$1;
.super Ljava/lang/Object;
.source "VponInterstitial.java"

# interfaces
.implements Lcom/vpadn/ads/VpadnAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/ad/VponInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/ad/VponInterstitial;


# direct methods
.method constructor <init>(Lcom/vpon/ad/VponInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vpon/ad/VponInterstitial;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$000(Lcom/vpon/ad/VponInterstitial;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$000(Lcom/vpon/ad/VponInterstitial;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->destroy()V

    .line 50
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpon/ad/VponInterstitial;->access$002(Lcom/vpon/ad/VponInterstitial;Lcom/vpadn/ads/VpadnInterstitialAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 52
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Vpon interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 56
    :cond_1
    return-void
.end method

.method public onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;
    .param p2, "arg1"    # Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$000(Lcom/vpon/ad/VponInterstitial;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$000(Lcom/vpon/ad/VponInterstitial;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->destroy()V

    .line 62
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpon/ad/VponInterstitial;->access$002(Lcom/vpon/ad/VponInterstitial;Lcom/vpadn/ads/VpadnInterstitialAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 64
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Vpon interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 68
    :cond_1
    return-void
.end method

.method public onVpadnLeaveApplication(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 73
    return-void
.end method

.method public onVpadnPresentScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 77
    const-string v0, "MoPub"

    const-string v1, "onVpadnPresentScreen interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 81
    :cond_0
    return-void
.end method

.method public onVpadnReceiveAd(Lcom/vpadn/ads/VpadnAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 85
    const-string v0, "MoPub"

    const-string v1, "Vpon interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/vpon/ad/VponInterstitial$1;->this$0:Lcom/vpon/ad/VponInterstitial;

    invoke-static {v0}, Lcom/vpon/ad/VponInterstitial;->access$100(Lcom/vpon/ad/VponInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 89
    :cond_0
    return-void
.end method
