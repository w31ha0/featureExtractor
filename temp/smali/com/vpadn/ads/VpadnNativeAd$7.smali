.class Lcom/vpadn/ads/VpadnNativeAd$7;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAd;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

.field final synthetic b:Lcom/vpadn/ads/VpadnNativeAd;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$7;->b:Lcom/vpadn/ads/VpadnNativeAd;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAd$7;->a:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$7;->b:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->d(Lcom/vpadn/ads/VpadnNativeAd;)Lcom/vpadn/ads/VpadnAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$7;->b:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->d(Lcom/vpadn/ads/VpadnNativeAd;)Lcom/vpadn/ads/VpadnAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd$7;->b:Lcom/vpadn/ads/VpadnNativeAd;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd$7;->a:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 523
    :cond_0
    return-void
.end method
