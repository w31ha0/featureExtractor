.class public Lcom/ads/AdInterstitialManager;
.super Ljava/lang/Object;
.source "AdInterstitialManager.java"


# instance fields
.field isReadyAd_1:Z

.field isReadyAd_2:Z

.field mActivity:Landroid/app/Activity;

.field mInterstitial_1:Lcom/mopub/mobileads/MoPubInterstitial;

.field mInterstitial_2:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/ads/AdInterstitialManager;->isReadyAd_1:Z

    .line 18
    iput-boolean v0, p0, Lcom/ads/AdInterstitialManager;->isReadyAd_2:Z

    .line 21
    iput-object p1, p0, Lcom/ads/AdInterstitialManager;->mActivity:Landroid/app/Activity;

    .line 22
    iget-boolean v0, p0, Lcom/ads/AdInterstitialManager;->isReadyAd_1:Z

    if-nez v0, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/ads/AdInterstitialManager;->requestInterstitial_1()V

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/ads/AdInterstitialManager;->isReadyAd_2:Z

    if-nez v0, :cond_1

    .line 25
    invoke-direct {p0}, Lcom/ads/AdInterstitialManager;->requestInterstitial_2()V

    .line 26
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/ads/AdInterstitialManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/ads/AdInterstitialManager;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ads/AdInterstitialManager;->requestInterstitial_2()V

    return-void
.end method

.method static synthetic access$100(Lcom/ads/AdInterstitialManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/ads/AdInterstitialManager;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ads/AdInterstitialManager;->requestInterstitial_1()V

    return-void
.end method

.method private requestInterstitial_1()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/ads/AdInterstitialManager;->mActivity:Landroid/app/Activity;

    const-string v2, "ccf6296fccc54758adf23f534175664b"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_1:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 30
    iget-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_1:Lcom/mopub/mobileads/MoPubInterstitial;

    new-instance v1, Lcom/ads/AdInterstitialManager$1;

    invoke-direct {v1, p0}, Lcom/ads/AdInterstitialManager$1;-><init>(Lcom/ads/AdInterstitialManager;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 60
    iget-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_1:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 61
    return-void
.end method

.method private requestInterstitial_2()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/ads/AdInterstitialManager;->mActivity:Landroid/app/Activity;

    const-string v2, "ccf6296fccc54758adf23f534175664b"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_2:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 65
    iget-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_2:Lcom/mopub/mobileads/MoPubInterstitial;

    new-instance v1, Lcom/ads/AdInterstitialManager$2;

    invoke-direct {v1, p0}, Lcom/ads/AdInterstitialManager$2;-><init>(Lcom/ads/AdInterstitialManager;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 95
    iget-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_2:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 96
    return-void
.end method


# virtual methods
.method public getAd()Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/ads/AdInterstitialManager;->isReadyAd_1:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_1:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ads/AdInterstitialManager;->mInterstitial_2:Lcom/mopub/mobileads/MoPubInterstitial;

    goto :goto_0
.end method
