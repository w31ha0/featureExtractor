.class Lcom/vpadn/ads/VpadnNativeAdsManager$1;
.super Ljava/lang/Object;
.source "VpadnNativeAdsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAdsManager;->loadAds(Lcom/vpadn/ads/VpadnAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:Lcom/vpadn/ads/VpadnNativeAdsManager;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAdsManager;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$1;->b:Lcom/vpadn/ads/VpadnNativeAdsManager;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$1;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    :goto_0
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$1;->c:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "VpadnNativeAdsManager"

    const-string v1, "ExecutorService enter executorService.isTerminated() "

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnNativeAdsManager$1;->stop()V

    .line 94
    :cond_0
    return-void

    .line 89
    :cond_1
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$1;->c:Z

    .line 78
    return-void
.end method
