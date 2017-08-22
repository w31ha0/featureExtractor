.class public Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "RewardedPlayableBroadcastReceiver.java"


# static fields
.field private static sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;J)V
    .locals 0
    .param p1, "rewardedVideoListener"    # Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "broadcastIdentifier"    # J

    .prologue
    .line 25
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 26
    iput-object p1, p0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    .line 27
    invoke-virtual {p0}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    .line 28
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    .line 34
    sget-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.rewardedplayable.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    :cond_0
    sget-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    iget-object v1, p0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mopub.action.rewardedplayable.complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    invoke-interface {v1}, Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;->onMraidComplete()V

    .line 52
    invoke-virtual {p0, p0}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
