.class public Lcom/ads/AdbertMopubBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "AdbertMopubBanner.java"


# instance fields
.field private adbertADView:Lcom/adbert/AdbertADView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ads/AdbertMopubBanner;)Lcom/adbert/AdbertADView;
    .locals 1
    .param p0, "x0"    # Lcom/ads/AdbertMopubBanner;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    return-object v0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
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
    .line 27
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/adbert/AdbertADView;

    invoke-direct {v2, p1}, Lcom/adbert/AdbertADView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    .line 28
    const-string v2, "appid"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, "appid":Ljava/lang/String;
    const-string v2, "appkey"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, "appkey":Ljava/lang/String;
    iget-object v2, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adbert/AdbertADView;->setMediationAPPID(Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/adbert/AdbertADView;->setBannerSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 32
    iget-object v2, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    new-instance v3, Lcom/ads/AdbertMopubBanner$1;

    invoke-direct {v3, p0, p2}, Lcom/ads/AdbertMopubBanner$1;-><init>(Lcom/ads/AdbertMopubBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    invoke-virtual {v2, v3}, Lcom/adbert/AdbertADView;->setListener(Lcom/adbert/AdbertListener;)V

    .line 43
    iget-object v2, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    invoke-virtual {v2}, Lcom/adbert/AdbertADView;->start()V

    .line 44
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ads/AdbertMopubBanner;->adbertADView:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->destroy()V

    .line 52
    :cond_0
    return-void
.end method
