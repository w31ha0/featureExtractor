.class Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;
.super Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
.source "MoPubRewardedVideo.java"

# interfaces
.implements Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoPubRewardedVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 61
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "No rewarded video was loaded, so no reward is possible"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 71
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 72
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 73
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getRewardedAdCurrencyAmount()I

    move-result v3

    .line 72
    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    goto :goto_0
.end method
