.class Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
.super Lcom/mopub/mobileads/VastVideoInterstitial;
.source "RewardedVastVideoInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;
    }
.end annotation


# instance fields
.field private mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method getRewardedVideoBroadcastReceiver()Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    return-object v0
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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
    .line 24
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/VastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 26
    instance-of v0, p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    check-cast p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;

    .end local p2    # "customEventInterstitialListener":Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    iget-wide v2, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mBroadcastIdentifier:J

    invoke-direct {v0, p2, v2, v3}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;-><init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;J)V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onInvalidate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/mopub/mobileads/VastVideoInterstitial;->onInvalidate()V

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setIsRewardedVideo(Z)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/mopub/mobileads/VastVideoInterstitial;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 40
    return-void
.end method
