.class Lcom/ads/GooglePlayServicesBanner$AdViewListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "GooglePlayServicesBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ads/GooglePlayServicesBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ads/GooglePlayServicesBanner;


# direct methods
.method private constructor <init>(Lcom/ads/GooglePlayServicesBanner;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ads/GooglePlayServicesBanner;Lcom/ads/GooglePlayServicesBanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ads/GooglePlayServicesBanner;
    .param p2, "x1"    # Lcom/ads/GooglePlayServicesBanner$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/ads/GooglePlayServicesBanner$AdViewListener;-><init>(Lcom/ads/GooglePlayServicesBanner;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 130
    const-string v0, "MoPub"

    const-string v1, "Google Play Services banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesBanner;->access$100(Lcom/ads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesBanner;->access$100(Lcom/ads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "MoPub"

    const-string v1, "Google Play Services banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesBanner;->access$100(Lcom/ads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesBanner;->access$100(Lcom/ads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-static {v1}, Lcom/ads/GooglePlayServicesBanner;->access$200(Lcom/ads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "MoPub"

    const-string v1, "Google Play Services banner ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesBanner;->access$100(Lcom/ads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/ads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/ads/GooglePlayServicesBanner;->access$100(Lcom/ads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 155
    :cond_0
    return-void
.end method
