.class public Lcom/mopub/mobileads/MoPubRewardedVideo;
.super Lcom/mopub/mobileads/MoPubRewardedAd;
.source "MoPubRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;
    }
.end annotation


# static fields
.field private static final MOPUB_REWARDED_VIDEO_ID:Ljava/lang/String; = "mopub_rewarded_video_id"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;-><init>()V

    .line 23
    new-instance v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 24
    return-void
.end method


# virtual methods
.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 29
    const-string v0, "mopub_rewarded_video_id"

    return-object v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/mobileads/MoPubRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 46
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->onInvalidate()V

    .line 35
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    .line 36
    return-void
.end method

.method setRewardedVastVideoInterstitial(Lcom/mopub/mobileads/RewardedVastVideoInterstitial;)V
    .locals 0
    .param p1, "rewardedVastVideoInterstitial"    # Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 83
    return-void
.end method

.method protected show()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Showing MoPub rewarded video."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->showInterstitial()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "Unable to show MoPub rewarded video"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
