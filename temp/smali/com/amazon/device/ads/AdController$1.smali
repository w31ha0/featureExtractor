.class Lcom/amazon/device/ads/AdController$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$1;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$1;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->onAdTimedOut()V

    .line 866
    return-void
.end method
