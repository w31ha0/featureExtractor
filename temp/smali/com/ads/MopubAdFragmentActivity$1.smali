.class Lcom/ads/MopubAdFragmentActivity$1;
.super Ljava/lang/Object;
.source "MopubAdFragmentActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ads/MopubAdFragmentActivity;->getBannerAdRequest(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ads/MopubAdFragmentActivity;

.field final synthetic val$bannerAdView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/ads/MopubAdFragmentActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ads/MopubAdFragmentActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ads/MopubAdFragmentActivity$1;->this$0:Lcom/ads/MopubAdFragmentActivity;

    iput-object p2, p0, Lcom/ads/MopubAdFragmentActivity$1;->val$bannerAdView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 80
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 90
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 85
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 75
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 3
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/ads/MopubAdFragmentActivity$1;->this$0:Lcom/ads/MopubAdFragmentActivity;

    iget-object v1, v1, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    invoke-virtual {v1}, Lcom/ads/MopubViewExtend;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/ads/MopubAdFragmentActivity$1;->val$bannerAdView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ads/MopubAdFragmentActivity$1;->this$0:Lcom/ads/MopubAdFragmentActivity;

    iget-object v2, v2, Lcom/ads/MopubAdFragmentActivity;->moPubView:Lcom/ads/MopubViewExtend;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_0
    return-void
.end method
