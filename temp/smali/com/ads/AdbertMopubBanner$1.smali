.class Lcom/ads/AdbertMopubBanner$1;
.super Lcom/adbert/AdbertListener;
.source "AdbertMopubBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ads/AdbertMopubBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ads/AdbertMopubBanner;

.field final synthetic val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/ads/AdbertMopubBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ads/AdbertMopubBanner;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ads/AdbertMopubBanner$1;->this$0:Lcom/ads/AdbertMopubBanner;

    iput-object p2, p0, Lcom/ads/AdbertMopubBanner$1;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-direct {p0}, Lcom/adbert/AdbertListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedReceive(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ads/AdbertMopubBanner$1;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 41
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ads/AdbertMopubBanner$1;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/ads/AdbertMopubBanner$1;->this$0:Lcom/ads/AdbertMopubBanner;

    invoke-static {v1}, Lcom/ads/AdbertMopubBanner;->access$000(Lcom/ads/AdbertMopubBanner;)Lcom/adbert/AdbertADView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 36
    return-void
.end method
