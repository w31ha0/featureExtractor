.class Lcom/ads/AdInterstitialManager$1;
.super Ljava/lang/Object;
.source "AdInterstitialManager.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ads/AdInterstitialManager;->requestInterstitial_1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ads/AdInterstitialManager;


# direct methods
.method constructor <init>(Lcom/ads/AdInterstitialManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ads/AdInterstitialManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ads/AdInterstitialManager$1;->this$0:Lcom/ads/AdInterstitialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 52
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ads/AdInterstitialManager$1;->this$0:Lcom/ads/AdInterstitialManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ads/AdInterstitialManager;->isReadyAd_1:Z

    .line 57
    iget-object v0, p0, Lcom/ads/AdInterstitialManager$1;->this$0:Lcom/ads/AdInterstitialManager;

    invoke-static {v0}, Lcom/ads/AdInterstitialManager;->access$100(Lcom/ads/AdInterstitialManager;)V

    .line 58
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ads/AdInterstitialManager$1;->this$0:Lcom/ads/AdInterstitialManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ads/AdInterstitialManager;->isReadyAd_1:Z

    .line 41
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/ads/AdInterstitialManager$1;->this$0:Lcom/ads/AdInterstitialManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ads/AdInterstitialManager;->isReadyAd_1:Z

    .line 36
    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ads/AdInterstitialManager$1;->this$0:Lcom/ads/AdInterstitialManager;

    iget-boolean v0, v0, Lcom/ads/AdInterstitialManager;->isReadyAd_2:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ads/AdInterstitialManager$1;->this$0:Lcom/ads/AdInterstitialManager;

    invoke-static {v0}, Lcom/ads/AdInterstitialManager;->access$000(Lcom/ads/AdInterstitialManager;)V

    .line 47
    :cond_0
    return-void
.end method
