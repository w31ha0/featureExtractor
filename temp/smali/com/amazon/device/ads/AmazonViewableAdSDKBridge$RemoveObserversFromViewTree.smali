.class Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "SourceFile"


# static fields
.field private static final name:Ljava/lang/String; = "RemoveObserversFromViewTree"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 1

    .prologue
    .line 274
    const-string v0, "RemoveObserversFromViewTree"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    .line 276
    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->access$100(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method
