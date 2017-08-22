.class Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;
.super Ljava/lang/Object;
.source "VpadnNativeAdsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/vpadn/ads/VpadnNativeAd;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v1}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v2}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->b(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v3}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->c(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vpadn/ads/VpadnNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v1}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->d(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnNativeAd;->setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V

    .line 157
    new-instance v1, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;

    invoke-direct {v1, p0, v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1$1;-><init>(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;Lcom/vpadn/ads/VpadnNativeAd;)V

    .line 168
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;->a:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    invoke-static {v2}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
