.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

.field final synthetic val$resizeSize:Lcom/amazon/device/ads/Size;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    iput-object p3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$resizeSize:Lcom/amazon/device/ads/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$resizeSize:Lcom/amazon/device/ads/Size;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$800(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V

    .line 1044
    return-void
.end method
