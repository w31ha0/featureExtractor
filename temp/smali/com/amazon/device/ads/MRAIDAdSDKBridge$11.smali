.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdControlAccessor;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1358
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 1359
    return-void
.end method
