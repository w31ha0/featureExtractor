.class Lvpadn/ai$4;
.super Ljava/lang/Object;
.source "VponNativeAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ai;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvpadn/ai;


# direct methods
.method constructor <init>(Lvpadn/ai;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lvpadn/ai$4;->b:Lvpadn/ai;

    iput-object p2, p0, Lvpadn/ai$4;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 676
    const-string v0, "VponNativeAdController"

    const-string v1, "doLoadBannerFail"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lvpadn/ai$4;->a:Ljava/lang/Object;

    check-cast v0, Lvpadn/ay;

    invoke-virtual {v0}, Lvpadn/ay;->g()Ljava/lang/String;

    move-result-object v1

    .line 678
    iget-object v0, p0, Lvpadn/ai$4;->a:Ljava/lang/Object;

    check-cast v0, Lvpadn/ay;

    invoke-virtual {v0}, Lvpadn/ay;->h()Ljava/lang/String;

    move-result-object v0

    .line 679
    iget-object v2, p0, Lvpadn/ai$4;->b:Lvpadn/ai;

    invoke-static {v2}, Lvpadn/ai;->c(Lvpadn/ai;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lvpadn/ai$4;->b:Lvpadn/ai;

    invoke-static {v2}, Lvpadn/ai;->c(Lvpadn/ai;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lvpadn/ai$4;->b:Lvpadn/ai;

    invoke-virtual {v2}, Lvpadn/ai;->i()V

    .line 681
    if-eqz v0, :cond_1

    const-string v2, "NO_FILL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lvpadn/ai$4;->b:Lvpadn/ai;

    invoke-static {v0}, Lvpadn/ai;->c(Lvpadn/ai;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NO_FILL:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lvpadn/ai$4;->b:Lvpadn/ai;

    invoke-static {v0}, Lvpadn/ai;->c(Lvpadn/ai;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method
