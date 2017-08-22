.class Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;
.super Ljava/lang/Object;
.source "VpadnNativeAdsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnNativeAd;

.field final synthetic b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;Lcom/vpadn/ads/VpadnNativeAd;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;->a:Lcom/vpadn/ads/VpadnNativeAd;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;

    iget-object v1, v1, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    iget-object v1, v1, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v1}, Lcom/vpadn/ads/VpadnNativeAdsManager;->a(Lcom/vpadn/ads/VpadnNativeAdsManager;)Lcom/vpadn/ads/VpadnAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnNativeAd;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 160
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->d(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->e(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
