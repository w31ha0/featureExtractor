.class Lvpadn/ah$7;
.super Ljava/lang/Object;
.source "VponInterstitialAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ah;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvpadn/ah;


# direct methods
.method constructor <init>(Lvpadn/ah;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lvpadn/ah$7;->b:Lvpadn/ah;

    iput-object p2, p0, Lvpadn/ah$7;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1070
    const-string v0, "VponInterstitialAdController"

    const-string v1, "[interstitial] doLoadBannerFail"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lvpadn/ah$7;->b:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->k()V

    .line 1072
    iget-object v0, p0, Lvpadn/ah$7;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ah$7;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ah$7;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO_FILL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lvpadn/ah$7;->b:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->a(Lvpadn/ah;)Lvpadn/ao;

    move-result-object v0

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NO_FILL:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 1077
    :goto_0
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->d()V

    .line 1078
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lvpadn/ah$7;->b:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->a(Lvpadn/ah;)Lvpadn/ao;

    move-result-object v0

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method
