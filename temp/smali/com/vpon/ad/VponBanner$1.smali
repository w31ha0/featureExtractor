.class Lcom/vpon/ad/VponBanner$1;
.super Ljava/lang/Object;
.source "VponBanner.java"

# interfaces
.implements Lcom/vpadn/ads/VpadnAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/ad/VponBanner;->requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/vpadn/ads/VpadnAdRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/ad/VponBanner;


# direct methods
.method constructor <init>(Lcom/vpon/ad/VponBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vpon/ad/VponBanner;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vpon/ad/VponBanner$1;->this$0:Lcom/vpon/ad/VponBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 75
    return-void
.end method

.method public onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;
    .param p2, "arg1"    # Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .prologue
    .line 79
    const-string v0, "MoPub"

    const-string v1, "Vpon banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/vpon/ad/VponBanner$1;->this$0:Lcom/vpon/ad/VponBanner;

    invoke-static {v0}, Lcom/vpon/ad/VponBanner;->access$000(Lcom/vpon/ad/VponBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/vpon/ad/VponBanner$1;->this$0:Lcom/vpon/ad/VponBanner;

    invoke-static {v0}, Lcom/vpon/ad/VponBanner;->access$000(Lcom/vpon/ad/VponBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onVpadnLeaveApplication(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vpon/ad/VponBanner$1;->this$0:Lcom/vpon/ad/VponBanner;

    invoke-static {v0}, Lcom/vpon/ad/VponBanner;->access$000(Lcom/vpon/ad/VponBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    .line 88
    return-void
.end method

.method public onVpadnPresentScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 93
    return-void
.end method

.method public onVpadnReceiveAd(Lcom/vpadn/ads/VpadnAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 97
    const-string v0, "MoPub"

    const-string v1, "Vpon banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/vpon/ad/VponBanner$1;->this$0:Lcom/vpon/ad/VponBanner;

    invoke-static {v0}, Lcom/vpon/ad/VponBanner;->access$000(Lcom/vpon/ad/VponBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/vpon/ad/VponBanner$1;->this$0:Lcom/vpon/ad/VponBanner;

    invoke-static {v0}, Lcom/vpon/ad/VponBanner;->access$000(Lcom/vpon/ad/VponBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vpon/ad/VponBanner$1;->this$0:Lcom/vpon/ad/VponBanner;

    invoke-static {v1}, Lcom/vpon/ad/VponBanner;->access$100(Lcom/vpon/ad/VponBanner;)Lcom/vpadn/ads/VpadnBanner;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method
