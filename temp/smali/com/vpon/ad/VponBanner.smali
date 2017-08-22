.class public Lcom/vpon/ad/VponBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "VponBanner.java"


# static fields
.field private static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"


# instance fields
.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private vponBanner:Lcom/vpadn/ads/VpadnBanner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    return-void
.end method

.method static synthetic access$000(Lcom/vpon/ad/VponBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/vpon/ad/VponBanner;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vpon/ad/VponBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vpon/ad/VponBanner;)Lcom/vpadn/ads/VpadnBanner;
    .locals 1
    .param p0, "x0"    # Lcom/vpon/ad/VponBanner;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    return-object v0
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
    .line 109
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "placement_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
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

.method private getVponAdSizeByAdSize(Lcom/google/ads/AdSize;)Lcom/vpadn/ads/VpadnAdSize;
    .locals 5
    .param p1, "adSize"    # Lcom/google/ads/AdSize;

    .prologue
    .line 115
    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->BANNER:Lcom/vpadn/ads/VpadnAdSize;

    .line 153
    :goto_0
    return-object v2

    .line 117
    :cond_0
    sget-object v2, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 119
    :cond_1
    sget-object v2, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_LEADERBOARD:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 121
    :cond_2
    sget-object v2, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_MRECT:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 123
    :cond_3
    sget-object v2, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_WIDE_SKYSCRAPER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 125
    :cond_4
    sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 129
    :cond_5
    const/4 v0, 0x0

    .line 130
    .local v0, "isAutoHeight":Z
    const/4 v1, 0x0

    .line 131
    .local v1, "isFullWidth":Z
    invoke-virtual {p1}, Lcom/google/ads/AdSize;->isAutoHeight()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    const/4 v0, 0x1

    .line 134
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/AdSize;->isFullWidth()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    const/4 v1, 0x1

    .line 138
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 139
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 142
    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    .line 143
    new-instance v2, Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/vpadn/ads/VpadnAdSize;-><init>(II)V

    goto :goto_0

    .line 145
    :cond_9
    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    .line 146
    new-instance v2, Lcom/vpadn/ads/VpadnAdSize;

    const/4 v3, -0x2

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/vpadn/ads/VpadnAdSize;-><init>(II)V

    goto :goto_0

    .line 149
    :cond_a
    invoke-virtual {p1}, Lcom/google/ads/AdSize;->isCustomAdSize()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 150
    new-instance v2, Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/vpadn/ads/VpadnAdSize;-><init>(II)V

    goto :goto_0

    .line 153
    :cond_b
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto/16 :goto_0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
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
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 31
    iput-object p2, p0, Lcom/vpon/ad/VponBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 35
    invoke-direct {p0, p4}, Lcom/vpon/ad/VponBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "placement_id"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "placementId":Ljava/lang/String;
    move-object v2, p1

    .line 42
    check-cast v2, Landroid/app/Activity;

    const-string v3, ""

    sget-object v5, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    new-instance v6, Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {v6}, Lcom/vpadn/ads/VpadnAdRequest;-><init>()V

    move-object v0, p0

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/vpon/ad/VponBanner;->requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/vpadn/ads/VpadnAdRequest;Ljava/lang/Object;)V

    .line 43
    .end local v4    # "placementId":Ljava/lang/String;
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/vpon/ad/VponBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnBanner;->destroy()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    .line 52
    :cond_0
    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/vpadn/ads/VpadnAdRequest;Ljava/lang/Object;)V
    .locals 5
    .param p1, "customEventBannerListener"    # Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "serverParameter"    # Ljava/lang/String;
    .param p5, "adSize"    # Lcom/google/ads/AdSize;
    .param p6, "mediationAdRequest"    # Lcom/vpadn/ads/VpadnAdRequest;
    .param p7, "o"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v2, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    invoke-virtual {v2}, Lcom/vpadn/ads/VpadnBanner;->destroy()V

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    .line 60
    :cond_0
    move-object v0, p6

    .line 62
    .local v0, "adRequest":Lcom/vpadn/ads/VpadnAdRequest;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v1, "testDeviceImeiSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "357138052176820"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdRequest;->setTestDevices(Ljava/util/Set;)Lcom/vpadn/ads/VpadnAdRequest;

    .line 67
    new-instance v2, Lcom/vpadn/ads/VpadnBanner;

    invoke-direct {p0, p5}, Lcom/vpon/ad/VponBanner;->getVponAdSizeByAdSize(Lcom/google/ads/AdSize;)Lcom/vpadn/ads/VpadnAdSize;

    move-result-object v3

    const-string v4, "TW"

    invoke-direct {v2, p2, p4, v3, v4}, Lcom/vpadn/ads/VpadnBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/vpadn/ads/VpadnAdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    .line 70
    iget-object v2, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    new-instance v3, Lcom/vpon/ad/VponBanner$1;

    invoke-direct {v3, p0}, Lcom/vpon/ad/VponBanner$1;-><init>(Lcom/vpon/ad/VponBanner;)V

    invoke-virtual {v2, v3}, Lcom/vpadn/ads/VpadnBanner;->setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V

    .line 105
    iget-object v2, p0, Lcom/vpon/ad/VponBanner;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    invoke-virtual {v2, v0}, Lcom/vpadn/ads/VpadnBanner;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 106
    return-void
.end method
