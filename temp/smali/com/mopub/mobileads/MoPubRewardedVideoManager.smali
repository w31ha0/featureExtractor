.class public Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x1

.field private static final CURRENCIES_JSON_REWARDS_MAP_KEY:Ljava/lang/String; = "rewards"

.field private static final CURRENCIES_JSON_REWARD_AMOUNT_KEY:Ljava/lang/String; = "amount"

.field private static final CURRENCIES_JSON_REWARD_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DEFAULT_LOAD_TIMEOUT:I = 0x7530

.field private static sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;


# instance fields
.field private final mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCallbackHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCustomEventTimeoutHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGlobalMediationSettings:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MediationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceMediationSettings:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MediationSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainActivity:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimeoutMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2
    .param p1, "mainActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/mopub/mobileads/RewardedAdData;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedAdData;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    .line 132
    new-instance v0, Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-direct {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Lcom/mopub/network/AdResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdSuccess(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Lcom/mopub/volley/VolleyError;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->cancelTimeouts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStartedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosedAction(Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimeouts(Ljava/lang/String;)V
    .locals 2
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 579
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 580
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    :cond_0
    return-void
.end method

.method static chooseReward(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .param p0, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "networkReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    .end local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    .end local p1    # "networkReward":Lcom/mopub/common/MoPubReward;
    :goto_0
    return-object p1

    .restart local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    .restart local p1    # "networkReward":Lcom/mopub/common/MoPubReward;
    :cond_0
    if-eqz p0, :cond_1

    .end local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    :goto_1
    move-object p1, p0

    goto :goto_0

    .restart local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    :cond_1
    move-object p0, p1

    goto :goto_1
.end method

.method private failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 565
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 566
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getFailoverUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "failoverUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markFail(Ljava/lang/String;)V

    .line 571
    if-eqz v0, :cond_1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p2, v1}, Lcom/mopub/mobileads/MoPubErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v1, :cond_0

    .line 574
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v1, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method static getAdRequestStatusMapping()Lcom/mopub/mobileads/AdRequestStatusMapping;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 881
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 882
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 884
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
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
    .line 369
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 163
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v2, :cond_1

    .line 164
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 175
    :cond_0
    :goto_0
    return-object v1

    .line 168
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 170
    .local v0, "mediationSettings":Lcom/mopub/common/MediationSettings;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/MediationSettings;

    goto :goto_0
.end method

.method public static getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;
    .locals 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 190
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v3, :cond_1

    .line 191
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 208
    :cond_0
    :goto_0
    return-object v2

    .line 195
    :cond_1
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 196
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 197
    .local v0, "instanceMediationSettings":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MediationSettings;>;"
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/MediationSettings;

    .line 203
    .local v1, "mediationSettings":Lcom/mopub/common/MediationSettings;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/MediationSettings;

    goto :goto_0
.end method

.method static getRewardedAdData()Lcom/mopub/mobileads/RewardedAdData;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 871
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 872
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 874
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasVideo(Ljava/lang/String;)Z
    .locals 2
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 315
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v0

    .line 317
    .local v0, "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z

    move-result v1

    .line 320
    .end local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    :goto_0
    return v1

    .line 319
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs declared-synchronized init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2
    .param p0, "mainActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;

    .prologue
    .line 136
    const-class v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;-><init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit v1

    return-void

    .line 139
    :cond_0
    :try_start_1
    const-string v0, "Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
    .param p1, "customEvent"    # Lcom/mopub/mobileads/CustomEventRewardedAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 356
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 357
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->canPlay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/mopub/mobileads/CustomEventRewardedAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 9
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "requestParameters"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 236
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 238
    sget-object v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v6, :cond_0

    .line 239
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 285
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v6, v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 244
    invoke-virtual {v6}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "currentlyShowingAdUnitId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Did not queue rewarded ad request for ad unit %s. The ad is already showing."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    sget-object v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v6, v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v6, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->canPlay(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 252
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 254
    new-instance v5, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 269
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v3, "newInstanceMediationSettings":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MediationSettings;>;"
    invoke-static {v3, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 271
    sget-object v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v6, v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    invoke-interface {v6, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    if-nez p1, :cond_4

    move-object v2, v5

    .line 274
    .local v2, "customerId":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 275
    sget-object v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v6, v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v6, v2}, Lcom/mopub/mobileads/RewardedAdData;->setCustomerId(Ljava/lang/String;)V

    .line 278
    :cond_3
    new-instance v4, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v6, v6, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v8}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    .line 279
    .local v4, "urlGenerator":Lcom/mopub/common/AdUrlGenerator;
    invoke-virtual {v4, p0}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v7

    if-nez p1, :cond_5

    move-object v6, v5

    .line 280
    :goto_2
    invoke-virtual {v7, v6}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v6

    if-nez p1, :cond_6

    .line 281
    :goto_3
    invoke-virtual {v6, v5}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v5

    const-string v6, "ads.mopub.com"

    .line 282
    invoke-virtual {v5, v6}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "adUrlString":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v0    # "adUrlString":Ljava/lang/String;
    .end local v2    # "customerId":Ljava/lang/String;
    .end local v4    # "urlGenerator":Lcom/mopub/common/AdUrlGenerator;
    :cond_4
    iget-object v2, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    goto :goto_1

    .line 279
    .restart local v2    # "customerId":Ljava/lang/String;
    .restart local v4    # "urlGenerator":Lcom/mopub/common/AdUrlGenerator;
    :cond_5
    iget-object v6, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mKeywords:Ljava/lang/String;

    goto :goto_2

    .line 280
    :cond_6
    iget-object v5, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mLocation:Landroid/location/Location;

    goto :goto_3
.end method

.method private static loadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adUrlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 288
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v1, :cond_0

    .line 289
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 312
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->isLoading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Did not queue rewarded ad request for ad unit %s. A request is already pending."

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Lcom/mopub/network/AdRequest;

    sget-object v2, Lcom/mopub/common/AdFormat;->REWARDED_VIDEO:Lcom/mopub/common/AdFormat;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v4, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v5, v1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 307
    .local v0, "request":Lcom/mopub/network/AdRequest;
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v6

    .line 308
    .local v6, "requestQueue":Lcom/mopub/volley/RequestQueue;
    invoke-virtual {v6, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 309
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markLoading(Ljava/lang/String;)V

    .line 310
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Loading rewarded ad request for ad unit %s with URL %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v7

    aput-object p1, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logErrorNotInitialized()V
    .locals 1

    .prologue
    .line 834
    const-string v0, "MoPub rewarded ad was not initialized. You must call MoPub.initializeRewardedVideo() before loading or attempting to play rewarded ads."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method private onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 4
    .param p1, "volleyError"    # Lcom/mopub/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 508
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 509
    .local v1, "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    instance-of v2, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 510
    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 511
    .local v0, "err":Lcom/mopub/network/MoPubNetworkError;
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 519
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 522
    .end local v0    # "err":Lcom/mopub/network/MoPubNetworkError;
    :cond_0
    :goto_0
    instance-of v2, p1, Lcom/mopub/volley/NoConnectionError;

    if-eqz v2, :cond_1

    .line 523
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 525
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 526
    return-void

    .line 514
    .restart local v0    # "err":Lcom/mopub/network/MoPubNetworkError;
    :pswitch_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 515
    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAdSuccess(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 16
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;
    .param p2, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v13

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v14

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v15

    .line 394
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13, v14, v15}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v11

    .line 400
    .local v11, "timeoutMillis":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gtz v12, :cond_1

    .line 401
    :cond_0
    const/16 v12, 0x7530

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 404
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "customEventClassName":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 407
    const-string v12, "Couldn\'t create custom event, class name was null."

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 408
    sget-object v12, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 505
    :goto_0
    return-void

    .line 414
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v8

    .line 416
    .local v8, "oldRewardedVideo":Lcom/mopub/mobileads/CustomEventRewardedAd;
    if-eqz v8, :cond_3

    .line 417
    invoke-virtual {v8}, Lcom/mopub/mobileads/CustomEventRewardedAd;->onInvalidate()V

    .line 422
    :cond_3
    :try_start_0
    const-class v12, Lcom/mopub/mobileads/CustomEventRewardedAd;

    .line 423
    invoke-static {v4, v12}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/CustomEventRewardedAd;

    .line 428
    .local v3, "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 429
    .local v6, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "com_mopub_ad_unit_id"

    move-object/from16 v0, p2

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v12, "Rewarded-Ad-Currency-Name"

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v13

    .line 430
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v12, "Rewarded-Ad-Currency-Value-String"

    .line 433
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v13

    .line 432
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v12, "Rewarded-Ad-Duration"

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedDuration()Ljava/lang/Integer;

    move-result-object v13

    .line 434
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v12, "Should-Reward-On-Click"

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->shouldRewardOnClick()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 436
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v12, "mopub-intent-ad-report"

    new-instance v13, Lcom/mopub/common/AdReport;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 439
    invoke-static {v14}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v14, v1}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    .line 438
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v12, "broadcastIdentifier"

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v12, "Rewarded-Ad-Customer-Id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 443
    invoke-virtual {v13}, Lcom/mopub/mobileads/RewardedAdData;->getCustomerId()Ljava/lang/String;

    move-result-object v13

    .line 442
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedCurrencies()Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "rewardedCurrencies":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/mopub/mobileads/RewardedAdData;->resetAvailableRewards(Ljava/lang/String;)V

    .line 453
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 454
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v13

    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v14

    .line 454
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13, v14}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCompletionUrl()Ljava/lang/String;

    move-result-object v13

    .line 467
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitToServerCompletionUrlMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 471
    .local v7, "mainActivity":Landroid/app/Activity;
    if-nez v7, :cond_5

    .line 472
    const-string v12, "Could not load custom event because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads."

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 501
    .end local v3    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    .end local v6    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "mainActivity":Landroid/app/Activity;
    .end local v9    # "rewardedCurrencies":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 502
    .local v5, "e":Ljava/lang/Exception;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Couldn\'t create custom event with class name %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 503
    sget-object v12, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_0

    .line 459
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    .restart local v6    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "rewardedCurrencies":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->parseMultiCurrencyJson(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 460
    :catch_1
    move-exception v5

    .line 461
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error parsing rewarded currencies JSON header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 462
    sget-object v12, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_0

    .line 482
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "mainActivity":Landroid/app/Activity;
    :cond_5
    new-instance v10, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/mobileads/CustomEventRewardedAd;)V

    .line 491
    .local v10, "timeout":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v12, v10, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Loading custom event with class name %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v3, v7, v6, v12}, Lcom/mopub/mobileads/CustomEventRewardedAd;->loadCustomEvent(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 499
    invoke-virtual {v3}, Lcom/mopub/mobileads/CustomEventRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "adNetworkId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v3, v2}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitCustomEventMapping(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 684
    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "currentlyShowingAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 700
    :goto_0
    return-void

    .line 693
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoClickedAction(Ljava/lang/String;)V
    .locals 2
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 703
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 705
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 706
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClicked(Ljava/lang/String;)V

    .line 709
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 710
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getClickTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 709
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 712
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->clearClickUrl(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public static onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 717
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 718
    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "currentlyShowingAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 734
    :goto_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/RewardedAdData;->setCurrentlyShowingAdUnitId(Ljava/lang/String;)V

    .line 735
    return-void

    .line 727
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoClosedAction(Ljava/lang/String;)V
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 738
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 739
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClosed(Ljava/lang/String;)V

    .line 742
    :cond_0
    return-void
.end method

.method public static onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .param p2, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 750
    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "currentlyShowingAdUnitId":Ljava/lang/String;
    invoke-static {p0, p1, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    .line 753
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnServer(Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public static onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 618
    return-void
.end method

.method public static onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 607
    return-void
.end method

.method public static onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 655
    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "currentlyShowingAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 671
    :goto_0
    return-void

    .line 664
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;

    invoke-direct {v1, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 674
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 675
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 676
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 677
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 679
    :cond_0
    return-void
.end method

.method public static onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 623
    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "currentlyShowingAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 639
    :goto_0
    return-void

    .line 632
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoStartedAction(Ljava/lang/String;)V
    .locals 2
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 642
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 643
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 644
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    .line 646
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 647
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getImpressionTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 646
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 649
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->clearImpressionUrl(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private parseMultiCurrencyJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rewardedCurrencies"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 541
    invoke-static {p2}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 542
    .local v3, "rewardsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "rewards"

    .line 543
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "rewardsArray":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 547
    aget-object v4, v2, v6

    invoke-static {v4}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 548
    .local v0, "rewardData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const-string v4, "name"

    .line 550
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "amount"

    .line 551
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 548
    invoke-virtual {v7, p1, v4, v5}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v0    # "rewardData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 556
    .local v1, "rewardDataStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 557
    .restart local v0    # "rewardData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const-string v4, "name"

    .line 559
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "amount"

    .line 560
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 557
    invoke-virtual {v8, p1, v4, v5}, Lcom/mopub/mobileads/RewardedAdData;->addAvailableReward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 562
    .end local v0    # "rewardData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "rewardDataStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static postToInstance(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 828
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 829
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 831
    :cond_0
    return-void
.end method

.method private static rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .param p2, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentlyShowingAdUnitId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;-><init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method private static rewardOnServer(Ljava/lang/String;)V
    .locals 2
    .param p0, "currentlyShowingAdUnitId"    # Ljava/lang/String;

    .prologue
    .line 757
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->getServerCompletionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "serverCompletionUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 782
    :cond_0
    return-void
.end method

.method public static selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "selectedReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 385
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    goto :goto_0
.end method

.method public static setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/mopub/mobileads/MoPubRewardedVideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iput-object p0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    goto :goto_0
.end method

.method public static showVideo(Ljava/lang/String;)V
    .locals 4
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 325
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v1, :cond_3

    .line 326
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v0

    .line 327
    .local v0, "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 330
    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v1

    if-nez v1, :cond_0

    .line 331
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {v1, p0, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 353
    .end local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    :goto_0
    return-void

    .line 335
    .restart local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 337
    invoke-virtual {v3, p0}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    .line 335
    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/RewardedAdData;->updateCustomEventLastShownRewardMapping(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V

    .line 338
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->setCurrentlyShowingAdUnitId(Ljava/lang/String;)V

    .line 339
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markPlayed(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedAd;->show()V

    goto :goto_0

    .line 342
    :cond_1
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->isLoading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const-string v1, "Rewarded ad is not ready to be shown yet."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 348
    :goto_1
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {v1, p0, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 345
    :cond_2
    const-string v1, "No rewarded ad loading or loaded."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    .end local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedAd;
    :cond_3
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    goto :goto_0
.end method

.method public static updateActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    goto :goto_0
.end method
