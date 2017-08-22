.class Lcom/vpadn/ads/VpadnNativeAd$11;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAd;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnNativeAd;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;)Lvpadn/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;)Lvpadn/ai;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ai;->h()V

    .line 625
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;)Lvpadn/ai;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ai;->b()V

    .line 626
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;)Lvpadn/ai;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ai;->i()V

    .line 627
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;Lvpadn/ai;)Lvpadn/ai;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->e(Lcom/vpadn/ads/VpadnNativeAd;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->b(Lcom/vpadn/ads/VpadnNativeAd;)V

    .line 631
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$11;->a:Lcom/vpadn/ads/VpadnNativeAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_1
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    const-string v1, "VpadnNativeAd"

    const-string v2, "destroy() throws Exception!"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
