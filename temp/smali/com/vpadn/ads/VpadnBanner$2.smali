.class Lcom/vpadn/ads/VpadnBanner$2;
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
.field final synthetic a:Lcom/vpadn/ads/VpadnAdRequest;

.field final synthetic b:Lcom/vpadn/ads/VpadnBanner;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnBanner;Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/vpadn/ads/VpadnBanner$2;->b:Lcom/vpadn/ads/VpadnBanner;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnBanner$2;->a:Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner$2;->b:Lcom/vpadn/ads/VpadnBanner;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnBanner;->a(Lcom/vpadn/ads/VpadnBanner;)Lvpadn/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner$2;->b:Lcom/vpadn/ads/VpadnBanner;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnBanner;->a(Lcom/vpadn/ads/VpadnBanner;)Lvpadn/af;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner$2;->a:Lcom/vpadn/ads/VpadnAdRequest;

    invoke-virtual {v0, v1}, Lvpadn/af;->a(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 527
    :cond_0
    return-void
.end method
