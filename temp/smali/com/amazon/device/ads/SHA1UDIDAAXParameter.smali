.class Lcom/amazon/device/ads/SHA1UDIDAAXParameter;
.super Lcom/amazon/device/ads/AAXParameterGroupParameter;
.source "SourceFile"


# instance fields
.field private mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/SHA1UDIDAAXParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;)V

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;)V
    .locals 2

    .prologue
    .line 91
    const-string v0, "sha1_udid"

    const-string v1, "debug.sha1udid"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/amazon/device/ads/AAXParameterGroupParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 92
    iput-object p3, p0, Lcom/amazon/device/ads/SHA1UDIDAAXParameter;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 93
    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/SHA1UDIDAAXParameter;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getUdidSha1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
