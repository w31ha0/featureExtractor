.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "SourceFile"


# static fields
.field private static final name:Ljava/lang/String; = "Open"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1688
    const-string v0, "Open"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1689
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1690
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1695
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v1, "url"

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->open(Ljava/lang/String;)V

    .line 1696
    return-object v2
.end method
