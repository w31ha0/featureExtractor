.class Lcom/amazon/device/ads/AdSDKBridgeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/amazon/device/ads/AdSDKBridge;",
        ">;"
    }
.end annotation


# instance fields
.field private final bridgesByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/AdSDKBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdSDKBridgeList;->bridgesByName:Ljava/util/HashMap;

    .line 20
    return-void
.end method


# virtual methods
.method public addBridge(Lcom/amazon/device/ads/AdSDKBridge;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/AdSDKBridgeList;->bridgesByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/device/ads/AdSDKBridge;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amazon/device/ads/AdSDKBridgeList;->bridgesByName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 28
    return-void
.end method

.method public contains(Lcom/amazon/device/ads/AdSDKBridge;)Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/AdSDKBridgeList;->bridgesByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/device/ads/AdSDKBridge;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/device/ads/AdSDKBridgeList;->bridgesByName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
