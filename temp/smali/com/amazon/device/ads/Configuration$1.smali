.class Lcom/amazon/device/ads/Configuration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Configuration;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Configuration;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration$1;->this$0:Lcom/amazon/device/ads/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$1;->this$0:Lcom/amazon/device/ads/Configuration;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Configuration;->fetchConfigurationOnBackgroundThread()V

    .line 496
    return-void
.end method
