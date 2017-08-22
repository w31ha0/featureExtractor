.class public Lcom/vpon/ad/VponCustomAd;
.super Ljava/lang/Object;
.source "VponCustomAd.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventBanner;
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# instance fields
.field private interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

.field private vponBanner:Lcom/vpadn/ads/VpadnBanner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    .line 26
    iput-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    return-void
.end method

.method static synthetic access$000(Lcom/vpon/ad/VponCustomAd;)Lcom/vpadn/ads/VpadnBanner;
    .locals 1
    .param p0, "x0"    # Lcom/vpon/ad/VponCustomAd;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vpon/ad/VponCustomAd;)Lcom/vpadn/ads/VpadnInterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/vpon/ad/VponCustomAd;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vpon/ad/VponCustomAd;Lcom/vpadn/ads/VpadnInterstitialAd;)Lcom/vpadn/ads/VpadnInterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/vpon/ad/VponCustomAd;
    .param p1, "x1"    # Lcom/vpadn/ads/VpadnInterstitialAd;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    return-object p1
.end method

.method private getVpadnAdRequestByMediationAdRequest(Lcom/google/ads/mediation/MediationAdRequest;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 3
    .param p1, "request"    # Lcom/google/ads/mediation/MediationAdRequest;

    .prologue
    .line 91
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {v0}, Lcom/vpadn/ads/VpadnAdRequest;-><init>()V

    .line 101
    .local v0, "adRequest":Lcom/vpadn/ads/VpadnAdRequest;
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdRequest;->setKeywords(Ljava/util/Set;)Lcom/vpadn/ads/VpadnAdRequest;

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    sget-object v2, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$Gender;->FEMALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdRequest;->setGender(Lcom/vpadn/ads/VpadnAdRequest$Gender;)Lcom/vpadn/ads/VpadnAdRequest;

    .line 115
    :cond_1
    :goto_0
    return-object v0

    .line 108
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    sget-object v2, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$Gender;->MALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdRequest;->setGender(Lcom/vpadn/ads/VpadnAdRequest$Gender;)Lcom/vpadn/ads/VpadnAdRequest;

    goto :goto_0

    .line 111
    :cond_3
    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$Gender;->UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdRequest;->setGender(Lcom/vpadn/ads/VpadnAdRequest$Gender;)Lcom/vpadn/ads/VpadnAdRequest;

    goto :goto_0
.end method

.method private getVponAdSizeByAdSize(Lcom/google/ads/AdSize;)Lcom/vpadn/ads/VpadnAdSize;
    .locals 5
    .param p1, "adSize"    # Lcom/google/ads/AdSize;

    .prologue
    .line 45
    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->BANNER:Lcom/vpadn/ads/VpadnAdSize;

    .line 83
    :goto_0
    return-object v2

    .line 47
    :cond_0
    sget-object v2, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 49
    :cond_1
    sget-object v2, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_LEADERBOARD:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 51
    :cond_2
    sget-object v2, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_MRECT:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 53
    :cond_3
    sget-object v2, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->IAB_WIDE_SKYSCRAPER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 55
    :cond_4
    sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 59
    :cond_5
    const/4 v0, 0x0

    .line 60
    .local v0, "isAutoHeight":Z
    const/4 v1, 0x0

    .line 61
    .local v1, "isFullWidth":Z
    invoke-virtual {p1}, Lcom/google/ads/AdSize;->isAutoHeight()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 62
    const/4 v0, 0x1

    .line 64
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/AdSize;->isFullWidth()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 65
    const/4 v1, 0x1

    .line 68
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 69
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_0

    .line 72
    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    .line 73
    new-instance v2, Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/vpadn/ads/VpadnAdSize;-><init>(II)V

    goto :goto_0

    .line 75
    :cond_9
    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    .line 76
    new-instance v2, Lcom/vpadn/ads/VpadnAdSize;

    const/4 v3, -0x2

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/vpadn/ads/VpadnAdSize;-><init>(II)V

    goto :goto_0

    .line 79
    :cond_a
    invoke-virtual {p1}, Lcom/google/ads/AdSize;->isCustomAdSize()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 80
    new-instance v2, Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/vpadn/ads/VpadnAdSize;-><init>(II)V

    goto :goto_0

    .line 83
    :cond_b
    sget-object v2, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnBanner;->destroy()V

    .line 32
    iput-object v1, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->destroy()V

    .line 36
    iput-object v1, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 38
    :cond_1
    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 5
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "serverParameter"    # Ljava/lang/String;
    .param p5, "adSize"    # Lcom/google/ads/AdSize;
    .param p6, "request"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p7, "customEventExtra"    # Ljava/lang/Object;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    invoke-virtual {v2}, Lcom/vpadn/ads/VpadnBanner;->destroy()V

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    .line 127
    :cond_0
    invoke-direct {p0, p6}, Lcom/vpon/ad/VponCustomAd;->getVpadnAdRequestByMediationAdRequest(Lcom/google/ads/mediation/MediationAdRequest;)Lcom/vpadn/ads/VpadnAdRequest;

    move-result-object v0

    .line 129
    .local v0, "adRequest":Lcom/vpadn/ads/VpadnAdRequest;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v1, "testDeviceImeiSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "357138052176820"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdRequest;->setTestDevices(Ljava/util/Set;)Lcom/vpadn/ads/VpadnAdRequest;

    .line 134
    new-instance v2, Lcom/vpadn/ads/VpadnBanner;

    invoke-direct {p0, p5}, Lcom/vpon/ad/VponCustomAd;->getVponAdSizeByAdSize(Lcom/google/ads/AdSize;)Lcom/vpadn/ads/VpadnAdSize;

    move-result-object v3

    const-string v4, "TW"

    invoke-direct {v2, p2, p4, v3, v4}, Lcom/vpadn/ads/VpadnBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/vpadn/ads/VpadnAdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    .line 137
    iget-object v2, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    new-instance v3, Lcom/vpon/ad/VponCustomAd$1;

    invoke-direct {v3, p0, p1}, Lcom/vpon/ad/VponCustomAd$1;-><init>(Lcom/vpon/ad/VponCustomAd;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-virtual {v2, v3}, Lcom/vpadn/ads/VpadnBanner;->setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V

    .line 166
    iget-object v2, p0, Lcom/vpon/ad/VponCustomAd;->vponBanner:Lcom/vpadn/ads/VpadnBanner;

    invoke-virtual {v2, v0}, Lcom/vpadn/ads/VpadnBanner;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 167
    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "serverParameter"    # Ljava/lang/String;
    .param p5, "request"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "customEventExtra"    # Ljava/lang/Object;

    .prologue
    .line 172
    const-string v0, "abcdefg"

    const-string v1, "Call VponCustomAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Lcom/vpadn/ads/VpadnInterstitialAd;

    const-string v1, "TW"

    invoke-direct {v0, p2, p4, v1}, Lcom/vpadn/ads/VpadnInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 176
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    new-instance v1, Lcom/vpon/ad/VponCustomAd$2;

    invoke-direct {v1, p0, p1}, Lcom/vpon/ad/VponCustomAd$2;-><init>(Lcom/vpon/ad/VponCustomAd;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnInterstitialAd;->setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V

    .line 212
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    new-instance v1, Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {v1}, Lcom/vpadn/ads/VpadnAdRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnInterstitialAd;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 214
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd;->interstitialAd:Lcom/vpadn/ads/VpadnInterstitialAd;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->show()V

    .line 222
    :cond_0
    return-void
.end method
