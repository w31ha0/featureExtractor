.class Lcom/mobfox/sdk/interstitialads/InterstitialAd$2;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/mobfox/sdk/bannerads/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialAd;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$2;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 251
    return-void
.end method

.method public onBannerClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 243
    return-void
.end method

.method public onBannerError(Landroid/view/View;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 232
    const-string v0, "MobFoxInterstitial"

    const-string v1, "on banner error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$2;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$2;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$2;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-interface {v0, v1, p2}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialFailed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onBannerFinished()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 239
    return-void
.end method

.method public onNoFill(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 255
    return-void
.end method
