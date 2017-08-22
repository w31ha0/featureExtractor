.class Lcom/vpadn/ads/VpadnBanner$3;
.super Ljava/lang/Object;
.source "VpadnBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnBanner;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/vpadn/ads/VpadnBanner;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnBanner;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/vpadn/ads/VpadnBanner$3;->c:Lcom/vpadn/ads/VpadnBanner;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnBanner$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/vpadn/ads/VpadnBanner$3;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 533
    :try_start_0
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lvpadn/au;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner$3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 540
    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner$3;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 544
    :goto_1
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    const-string v1, "VponBanner"

    const-string v2, "DeviceDataCollector.instance().getAdvertisingId(mc); return Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 541
    :catch_1
    move-exception v0

    .line 542
    const-string v1, "VponBanner"

    const-string v2, "go back main thread throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
