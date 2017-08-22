.class Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;
.super Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
.source "MoPubRewardedPlayable.java"

# interfaces
.implements Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedPlayable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoPubRewardedPlayableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubRewardedPlayable;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 60
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedPlayable;

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onMraidComplete()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "No rewarded video was loaded, so no reward is possible"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 69
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 70
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 71
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getRewardedAdCurrencyAmount()I

    move-result v3

    .line 70
    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 68
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    goto :goto_0
.end method
