.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1152
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/ViewUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/device/ads/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z

    .line 1153
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1154
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1155
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1160
    new-instance v0, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->RESIZED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v0, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    .line 1161
    const-string v2, "positionOnScreen"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/AdEvent;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/device/ads/AdEvent;

    .line 1162
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1164
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string v1, "mraidBridge.stateChange(\'resized\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 1166
    return-void
.end method
