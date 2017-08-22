.class public Lcom/ads/MopubAdFragmentActivity;
.super Lcom/novel/reader/NovelReaderBaseActivity;
.source "MopubAdFragmentActivity.java"


# instance fields
.field protected moPubView:Lcom/ads/MopubViewExtend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/novel/reader/NovelReaderBaseActivity;-><init>()V

    return-void
.end method

.method private getBannerAdRequest(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;
    .locals 3
    .param p1, "bannerAdView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 61
    new-instance v0, Lcom/ads/MopubViewExtend;

    invoke-direct {v0, p0}, Lcom/ads/MopubViewExtend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 62
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    invoke-virtual {p0}, Lcom/ads/MopubAdFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ads/MopubViewExtend;->setAdUnitId(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    new-instance v1, Lcom/ads/MopubAdFragmentActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ads/MopubAdFragmentActivity$1;-><init>(Lcom/ads/MopubAdFragmentActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Lcom/ads/MopubViewExtend;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 93
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    invoke-virtual {v0}, Lcom/ads/MopubViewExtend;->loadAd()V

    .line 95
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/novel/reader/NovelReaderBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/ads/MopubAdFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    invoke-virtual {v0}, Lcom/ads/MopubViewExtend;->destroy()V

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/novel/reader/NovelReaderBaseActivity;->onDestroy()V

    .line 44
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/novel/reader/NovelReaderBaseActivity;->onPause()V

    .line 29
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ads/MopubViewExtend;->callSetAdVisibility(I)V

    .line 32
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/novel/reader/NovelReaderBaseActivity;->onResume()V

    .line 22
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ads/MopubViewExtend;->callSetAdVisibility(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;
    .locals 3
    .param p1, "bannerAdView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/ads/MopubAdFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 49
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 51
    .local v1, "width":I
    const/16 v2, 0x140

    if-le v1, v2, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->getBannerAdRequest(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "width":I
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v2

    .line 57
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
