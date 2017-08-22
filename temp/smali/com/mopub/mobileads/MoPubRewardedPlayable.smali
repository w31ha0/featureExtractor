.class public Lcom/mopub/mobileads/MoPubRewardedPlayable;
.super Lcom/mopub/mobileads/MoPubRewardedAd;
.source "MoPubRewardedPlayable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;
    }
.end annotation


# static fields
.field private static final MOPUB_REWARDED_PLAYABLE_ID:Ljava/lang/String; = "mopub_rewarded_playable_id"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;-><init>()V

    .line 22
    new-instance v0, Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-direct {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    .line 23
    return-void
.end method


# virtual methods
.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    const-string v0, "mopub_rewarded_playable_id"

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
    .line 29
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/mobileads/MoPubRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedPlayable;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/mraid/RewardedMraidInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;->onInvalidate()V

    .line 44
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    .line 45
    return-void
.end method

.method setRewardedMraidInterstitial(Lcom/mopub/mraid/RewardedMraidInterstitial;)V
    .locals 0
    .param p1, "rewardedMraidInterstitial"    # Lcom/mopub/mraid/RewardedMraidInterstitial;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    .line 81
    return-void
.end method

.method protected show()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "Showing MoPub rewarded playable."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;->showInterstitial()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, "MoPub rewarded playable not loaded. Unable to show playable."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
