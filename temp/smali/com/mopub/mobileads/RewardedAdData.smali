.class Lcom/mopub/mobileads/RewardedAdData;
.super Ljava/lang/Object;
.source "RewardedAdData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
    }
.end annotation


# instance fields
.field private final mAdUnitToAvailableRewardsMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MoPubReward;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdUnitToCustomEventMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdUnitToRewardMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdUnitToServerCompletionUrlMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentlyShowingAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCustomEventToMoPubIdMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCustomEventToRewardMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method addAvailableReward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currencyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "currencyAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 69
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Currency name and amount cannot be null: name = %s, amount = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 76
    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 83
    .local v2, "intCurrencyAmount":I
    if-gez v2, :cond_2

    .line 84
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Currency amount cannot be negative: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v2    # "intCurrencyAmount":I
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Currency amount must be an integer: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "intCurrencyAmount":I
    :cond_2
    iget-object v3, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 91
    invoke-static {p2, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v0, "availableRewards":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mopub/common/MoPubReward;>;"
    invoke-static {p2, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method associateCustomEventWithMoPubId(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adNetworkId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedAd;>;"
    new-instance v3, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    invoke-direct {v3, p1, p2}, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    .local v3, "newCustomEventMapping":Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 236
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 237
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 255
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_1
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 256
    .local v2, "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 257
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 258
    .restart local v2    # "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method clear()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 286
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 287
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 288
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 290
    iput-object v1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCurrentlyShowingAdUnitId:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomerId:Ljava/lang/String;

    .line 292
    return-void
.end method

.method existsInAvailableRewards(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currencyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currencyAmount"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 305
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    .line 308
    .local v0, "reward":Lcom/mopub/common/MoPubReward;
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 309
    const/4 v1, 0x1

    .line 313
    .end local v0    # "reward":Lcom/mopub/common/MoPubReward;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 103
    .local v0, "availableRewards":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MoPubReward;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "availableRewards":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MoPubReward;>;"
    :cond_0
    return-object v0
.end method

.method getCurrentlyShowingAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCurrentlyShowingAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/CustomEventRewardedAd;

    return-object v0
.end method

.method getCustomerId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method getLastShownMoPubReward(Ljava/lang/Class;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;)",
            "Lcom/mopub/common/MoPubReward;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedAd;>;"
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    return-object v0
.end method

.method getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adNetworkId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedAd;>;"
    if-nez p2, :cond_1

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v0, "allIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    iget-object v1, v4, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->customEventClass:Ljava/lang/Class;

    .line 156
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p1, v1, :cond_0

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 162
    .end local v0    # "allIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v3, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    invoke-direct {v3, p1, p2}, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 163
    .local v3, "key":Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 164
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    :goto_1
    move-object v0, v4

    .line 163
    .end local v3    # "key":Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
    :cond_2
    return-object v0

    .line 165
    .restart local v3    # "key":Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_1
.end method

.method getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    return-object v0
.end method

.method getServerCompletionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method resetAvailableRewards(Ljava/lang/String;)V
    .locals 2
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 130
    .local v0, "availableRewards":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MoPubReward;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    :cond_0
    return-void
.end method

.method selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 5
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selectedReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 111
    .local v0, "availableRewards":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MoPubReward;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "AdUnit %s does not have any rewards."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Selected reward is invalid for AdUnit %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p0, p1, v1, v2}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCurrentlyShowingAdUnitId(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentAdUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCurrentlyShowingAdUnitId:Ljava/lang/String;

    .line 265
    return-void
.end method

.method setCustomerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "customerId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomerId:Ljava/lang/String;

    .line 274
    return-void
.end method

.method updateAdUnitCustomEventMapping(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;Ljava/lang/String;)V
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEvent"    # Lcom/mopub/mobileads/CustomEventRewardedAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adNetworkId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p1}, Lcom/mopub/mobileads/RewardedAdData;->associateCustomEventWithMoPubId(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currencyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "currencyAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 181
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 182
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_0
    return-void

    .line 190
    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    .local v1, "intCurrencyAmount":I
    if-gez v1, :cond_2

    .line 198
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Currency amount cannot be negative: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v1    # "intCurrencyAmount":I
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Currency amount must be an integer: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "intCurrencyAmount":I
    :cond_2
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method updateAdUnitToServerCompletionUrlMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serverCompletionUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method updateCustomEventLastShownRewardMapping(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedAd;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method
