.class Lcom/amazon/device/ads/StartUpWaiter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/StartUpWaiter;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/StartUpWaiter;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazon/device/ads/StartUpWaiter$1;->this$0:Lcom/amazon/device/ads/StartUpWaiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazon/device/ads/StartUpWaiter$1;->this$0:Lcom/amazon/device/ads/StartUpWaiter;

    invoke-virtual {v0}, Lcom/amazon/device/ads/StartUpWaiter;->startUpReady()V

    .line 72
    return-void
.end method
