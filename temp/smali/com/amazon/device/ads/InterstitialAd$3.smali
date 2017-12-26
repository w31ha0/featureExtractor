.class Lcom/amazon/device/ads/InterstitialAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd$3;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd$3;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->callOnAdDismissed()V

    .line 494
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd$3;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->submitAndResetMetrics()V

    .line 495
    return-void
.end method
