.class Lcom/amazon/device/ads/AdController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;

.field final synthetic val$error:Lcom/amazon/device/ads/AdError;

.field final synthetic val$shouldSubmitMetrics:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdError;Z)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$5;->this$0:Lcom/amazon/device/ads/AdController;

    iput-object p2, p0, Lcom/amazon/device/ads/AdController$5;->val$error:Lcom/amazon/device/ads/AdError;

    iput-boolean p3, p0, Lcom/amazon/device/ads/AdController$5;->val$shouldSubmitMetrics:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$5;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdController$5;->val$error:Lcom/amazon/device/ads/AdError;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AdControlCallback;->onAdFailed(Lcom/amazon/device/ads/AdError;)V

    .line 1470
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$5;->this$0:Lcom/amazon/device/ads/AdController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdController$5;->val$shouldSubmitMetrics:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->submitAndResetMetricsIfNecessary(Z)V

    .line 1471
    return-void
.end method
