.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "SourceFile"


# static fields
.field private static final name:Ljava/lang/String; = "DeregisterViewabilityInterest"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1784
    const-string v0, "DeregisterViewabilityInterest"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1785
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1786
    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    .line 1792
    const/4 v0, 0x0

    return-object v0
.end method
