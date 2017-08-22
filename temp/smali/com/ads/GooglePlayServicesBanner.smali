.class Lcom/ads/GooglePlayServicesBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "GooglePlayServicesBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ads/GooglePlayServicesBanner$AdViewListener;
    }
.end annotation


# static fields
.field public static final AD_HEIGHT_KEY:Ljava/lang/String; = "adHeight"

.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitID"

.field public static final AD_WIDTH_KEY:Ljava/lang/String; = "adWidth"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"


# instance fields
.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private mGoogleAdView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/ads/GooglePlayServicesBanner;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/ads/GooglePlayServicesBanner;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method private calculateAdSize(II)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 107
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 115
    :goto_0
    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 109
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 110
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 111
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 112
    :cond_2
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 113
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 115
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
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
    .line 95
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "adWidth"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    const-string v1, "adHeight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const-string v1, "adUnitID"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getGoogleAdView()Lcom/google/android/gms/ads/AdView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
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
    .line 46
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/ads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 51
    invoke-direct {p0, p4}, Lcom/ads/GooglePlayServicesBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    const-string v6, "adUnitID"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    .local v3, "adUnitId":Ljava/lang/String;
    const-string v6, "adWidth"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 54
    .local v4, "adWidth":I
    const-string v6, "adHeight"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "adHeight":I
    new-instance v6, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v6, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    .line 61
    iget-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v7, Lcom/ads/GooglePlayServicesBanner$AdViewListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/ads/GooglePlayServicesBanner$AdViewListener;-><init>(Lcom/ads/GooglePlayServicesBanner;Lcom/ads/GooglePlayServicesBanner$1;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 62
    iget-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, v4, v0}, Lcom/ads/GooglePlayServicesBanner;->calculateAdSize(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    .line 65
    .local v2, "adSize":Lcom/google/android/gms/ads/AdSize;
    if-nez v2, :cond_1

    .line 66
    iget-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v6, v7}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 82
    .end local v0    # "adHeight":I
    .end local v2    # "adSize":Lcom/google/android/gms/ads/AdSize;
    .end local v3    # "adUnitId":Ljava/lang/String;
    .end local v4    # "adWidth":I
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v6, v7}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 70
    .restart local v0    # "adHeight":I
    .restart local v2    # "adSize":Lcom/google/android/gms/ads/AdSize;
    .restart local v3    # "adUnitId":Ljava/lang/String;
    .restart local v4    # "adWidth":I
    :cond_1
    iget-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 72
    new-instance v6, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v6}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v7, "MoPub"

    .line 73
    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 77
    .local v1, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :try_start_0
    iget-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    iget-object v6, p0, Lcom/ads/GooglePlayServicesBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v6, v7}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 89
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner;->mGoogleAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 91
    :cond_0
    return-void
.end method
