.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentlyShowingAdUnitId:Ljava/lang/String;

.field final synthetic val$customEventClass:Ljava/lang/Class;

.field final synthetic val$moPubReward:Lcom/mopub/common/MoPubReward;

.field final synthetic val$thirdPartyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$customEventClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$thirdPartyId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 791
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$customEventClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/RewardedAdData;->getLastShownMoPubReward(Ljava/lang/Class;)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    .line 790
    invoke-static {v3, v4}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->chooseReward(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .line 794
    .local v0, "chosenReward":Lcom/mopub/common/MoPubReward;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 795
    .local v2, "rewardedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 796
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$customEventClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$thirdPartyId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 798
    .local v1, "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 805
    .end local v1    # "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 806
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    .line 809
    :cond_0
    return-void

    .line 802
    :cond_1
    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
