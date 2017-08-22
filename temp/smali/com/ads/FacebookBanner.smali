.class public Lcom/ads/FacebookBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "FacebookBanner.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# static fields
.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"


# instance fields
.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private mFacebookBanner:Lcom/facebook/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method private calculateAdSize(II)Lcom/facebook/ads/AdSize;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 126
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    .line 132
    :goto_0
    return-object v0

    .line 127
    :cond_0
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 128
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 130
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private localExtrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com_mopub_ad_width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const-string v0, "com_mopub_ad_height"

    .line 119
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private serverExtrasAreValid(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "placement_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "placementId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAdView()Lcom/facebook/ads/AdView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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
    .line 38
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 41
    invoke-direct {p0, p4}, Lcom/ads/FacebookBanner;->serverExtrasAreValid(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "placement_id"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, "placementId":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/ads/FacebookBanner;->localExtrasAreValid(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    const-string v4, "com_mopub_ad_width"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 52
    .local v3, "width":I
    const-string v4, "com_mopub_ad_height"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    .local v1, "height":I
    invoke-direct {p0, v3, v1}, Lcom/ads/FacebookBanner;->calculateAdSize(II)Lcom/facebook/ads/AdSize;

    move-result-object v0

    .line 59
    .local v0, "adSize":Lcom/facebook/ads/AdSize;
    if-nez v0, :cond_2

    .line 60
    iget-object v4, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v4, v5}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 68
    .end local v0    # "adSize":Lcom/facebook/ads/AdSize;
    .end local v1    # "height":I
    .end local v2    # "placementId":Ljava/lang/String;
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v4, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v4, v5}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 54
    .restart local v2    # "placementId":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v4, v5}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 64
    .restart local v0    # "adSize":Lcom/facebook/ads/AdSize;
    .restart local v1    # "height":I
    .restart local v3    # "width":I
    :cond_2
    new-instance v4, Lcom/facebook/ads/AdView;

    invoke-direct {v4, p1, v2, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v4, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    .line 65
    iget-object v4, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v4, p0}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 66
    iget-object v4, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v4}, Lcom/facebook/ads/AdView;->disableAutoRefresh()V

    .line 67
    iget-object v4, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v4}, Lcom/facebook/ads/AdView;->loadAd()V

    goto :goto_0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 103
    const-string v0, "MoPub"

    const-string v1, "Facebook banner ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 105
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 85
    const-string v0, "MoPub"

    const-string v1, "Facebook banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "error"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 91
    const-string v0, "MoPub"

    const-string v1, "Facebook banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    if-ne p2, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    if-ne p2, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ads/FacebookBanner;->mFacebookBanner:Lcom/facebook/ads/AdView;

    .line 77
    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 110
    return-void
.end method
