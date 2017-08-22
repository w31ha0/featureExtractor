.class public Lcom/mopub/mraid/RewardedMraidInterstitial;
.super Lcom/mopub/mraid/MraidInterstitial;
.source "RewardedMraidInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;
    }
.end annotation


# instance fields
.field private mRewardedDuration:I

.field private mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mShouldRewardOnClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mopub/mraid/MraidInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method getRewardedDuration()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedDuration:I

    return v0
.end method

.method isShouldRewardOnClick()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mShouldRewardOnClick:Z

    return v0
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
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
    .line 35
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mraid/MraidInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 37
    instance-of v2, p2, Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    if-eqz v2, :cond_0

    .line 38
    new-instance v2, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    check-cast p2, Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    .end local p2    # "customEventInterstitialListener":Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    iget-wide v4, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mBroadcastIdentifier:J

    invoke-direct {v2, p2, v4, v5}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;-><init>(Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;J)V

    iput-object v2, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    .line 41
    iget-object v2, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    iget-object v3, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    invoke-virtual {v2, v3, p1}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 44
    :cond_0
    const-string v2, "Rewarded-Ad-Duration"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "rewardedDurationObject":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .line 46
    .end local v0    # "rewardedDurationObject":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedDuration:I

    .line 48
    const-string v2, "Should-Reward-On-Click"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "shouldRewardOnClickObject":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    .line 50
    .end local v1    # "shouldRewardOnClickObject":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mShouldRewardOnClick:Z

    .line 52
    return-void

    .line 46
    .restart local v0    # "rewardedDurationObject":Ljava/lang/Object;
    :cond_1
    const/16 v2, 0x1e

    goto :goto_0

    .line 50
    .end local v0    # "rewardedDurationObject":Ljava/lang/Object;
    .restart local v1    # "shouldRewardOnClickObject":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onInvalidate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/mopub/mraid/MraidInterstitial;->onInvalidate()V

    .line 64
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    iget-object v1, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 67
    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 8

    .prologue
    .line 56
    iget-object v1, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget-object v3, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mHtmlData:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mBroadcastIdentifier:J

    iget v6, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedDuration:I

    iget-boolean v7, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mShouldRewardOnClick:Z

    invoke-static/range {v1 .. v7}, Lcom/mopub/mobileads/RewardedMraidActivity;->start(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;JIZ)V

    .line 58
    return-void
.end method
