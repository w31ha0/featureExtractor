.class public Lcom/amazon/device/ads/ThreadUtils$BackgroundThreadRunner;
.super Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;)V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)V

    .line 319
    return-void
.end method
