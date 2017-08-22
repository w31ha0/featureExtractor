.class public abstract Lcom/mopub/mobileads/MoPubRewardedAd;
.super Lcom/mopub/mobileads/CustomEventRewardedAd;
.source "MoPubRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
    }
.end annotation


# instance fields
.field private mIsLoaded:Z

.field private mRewardedAdCurrencyAmount:I

.field private mRewardedAdCurrencyName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedAd;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MoPubRewardedAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedAd;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return p1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
    .param p1, "launcherActivity"    # Landroid/app/Activity;
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
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method createListener(Ljava/lang/Class;)Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/MoPubRewardedAd;",
            ">;)",
            "Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/MoPubRewardedAd;>;"
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRewardedAdCurrencyAmount()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    return v0
.end method

.method protected getRewardedAdCurrencyName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
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
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 48
    const-string v4, "activity cannot be null"

    invoke-static {p1, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-string v4, "localExtras cannot be null"

    invoke-static {p2, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v4, "serverExtras cannot be null"

    invoke-static {p3, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-string v4, "Rewarded-Ad-Currency-Name"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    .local v3, "rewardedAdCurrencyName":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 55
    check-cast v3, Ljava/lang/String;

    .end local v3    # "rewardedAdCurrencyName":Ljava/lang/Object;
    iput-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    .line 61
    :goto_0
    const-string v4, "Rewarded-Ad-Currency-Value-String"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, "rewardedAdCurrencyAmount":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 65
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    iget v4, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    if-gez v4, :cond_0

    .line 82
    const-string v4, "Negative currency amount specified for rewarded ad. Using the default reward amount: 0"

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 85
    iput v6, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    .line 87
    :cond_0
    return-void

    .line 57
    .end local v2    # "rewardedAdCurrencyAmount":Ljava/lang/Object;
    .restart local v3    # "rewardedAdCurrencyName":Ljava/lang/Object;
    :cond_1
    const-string v4, "No currency name specified for rewarded video. Using the default name."

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 58
    const-string v4, ""

    iput-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    goto :goto_0

    .line 67
    .end local v3    # "rewardedAdCurrencyName":Ljava/lang/Object;
    .restart local v2    # "rewardedAdCurrencyAmount":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert currency amount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Using the default reward amount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 72
    iput v6, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    goto :goto_1

    .line 75
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v4, "No currency amount specified for rewarded ad. Using the default reward amount: 0"

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 78
    iput v6, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    goto :goto_1
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    .line 92
    return-void
.end method

.method setIsLoaded(Z)V
    .locals 0
    .param p1, "isLoaded"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    .line 188
    return-void
.end method
