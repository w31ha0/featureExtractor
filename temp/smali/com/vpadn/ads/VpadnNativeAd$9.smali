.class Lcom/vpadn/ads/VpadnNativeAd$9;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAd;->onVponDismiss()V
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
    .line 548
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$9;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$9;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->d(Lcom/vpadn/ads/VpadnNativeAd;)Lcom/vpadn/ads/VpadnAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$9;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAd;->d(Lcom/vpadn/ads/VpadnNativeAd;)Lcom/vpadn/ads/VpadnAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd$9;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-interface {v0, v1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V

    .line 553
    :cond_0
    return-void
.end method
