.class Lcom/amazon/device/ads/StartUpWaiter$2;
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
    .line 81
    iput-object p1, p0, Lcom/amazon/device/ads/StartUpWaiter$2;->this$0:Lcom/amazon/device/ads/StartUpWaiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/StartUpWaiter$2;->this$0:Lcom/amazon/device/ads/StartUpWaiter;

    invoke-virtual {v0}, Lcom/amazon/device/ads/StartUpWaiter;->startUpFailed()V

    .line 86
    return-void
.end method
