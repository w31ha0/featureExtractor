.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentlyShowingAdUnitId:Ljava/lang/String;

.field final synthetic val$serverCompletionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$serverCompletionUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 764
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .line 766
    .local v0, "reward":Lcom/mopub/common/MoPubReward;
    if-nez v0, :cond_0

    const-string v2, ""

    .line 769
    .local v2, "rewardName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 770
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "rewardAmount":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$serverCompletionUrl:Ljava/lang/String;

    .line 776
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/RewardedAdData;->getCustomerId()Ljava/lang/String;

    move-result-object v5

    .line 773
    invoke-static {v3, v4, v5, v2, v1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void

    .line 768
    .end local v1    # "rewardAmount":Ljava/lang/String;
    .end local v2    # "rewardName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 771
    .restart local v2    # "rewardName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
