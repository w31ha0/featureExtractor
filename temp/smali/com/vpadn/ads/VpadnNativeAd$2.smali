.class Lcom/vpadn/ads/VpadnNativeAd$2;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAd;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnAdRequest;

.field final synthetic b:Lcom/vpadn/ads/VpadnNativeAd;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$2;->b:Lcom/vpadn/ads/VpadnNativeAd;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAd$2;->a:Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$2;->b:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;)Lvpadn/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$2;->b:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->b(Lcom/vpadn/ads/VpadnNativeAd;)V

    .line 390
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$2;->b:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->a(Lcom/vpadn/ads/VpadnNativeAd;)Lvpadn/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd$2;->b:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v1}, Lcom/vpadn/ads/VpadnNativeAd;->c(Lcom/vpadn/ads/VpadnNativeAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd$2;->a:Lcom/vpadn/ads/VpadnAdRequest;

    invoke-virtual {v0, v1, v2}, Lvpadn/ai;->a(Ljava/lang/String;Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 392
    :cond_0
    return-void
.end method
