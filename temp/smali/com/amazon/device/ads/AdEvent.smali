.class Lcom/amazon/device/ads/AdEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POSITION_ON_SCREEN:Ljava/lang/String; = "positionOnScreen"


# instance fields
.field private final adEventType:Lcom/amazon/device/ads/AdEvent$AdEventType;

.field private customType:Ljava/lang/String;

.field private final parameters:Lcom/amazon/device/ads/ParameterMap;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/device/ads/ParameterMap;

    invoke-direct {v0}, Lcom/amazon/device/ads/ParameterMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdEvent;->parameters:Lcom/amazon/device/ads/ParameterMap;

    .line 25
    iput-object p1, p0, Lcom/amazon/device/ads/AdEvent;->adEventType:Lcom/amazon/device/ads/AdEvent$AdEventType;

    .line 26
    return-void
.end method


# virtual methods
.method getAdEventType()Lcom/amazon/device/ads/AdEvent$AdEventType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/device/ads/AdEvent;->adEventType:Lcom/amazon/device/ads/AdEvent$AdEventType;

    return-object v0
.end method

.method public getCustomType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/AdEvent;->customType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lcom/amazon/device/ads/ParameterMap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/device/ads/AdEvent;->parameters:Lcom/amazon/device/ads/ParameterMap;

    return-object v0
.end method

.method setCustomType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/AdEvent;->customType:Ljava/lang/String;

    .line 36
    return-void
.end method

.method setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/device/ads/AdEvent;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/device/ads/AdEvent;->parameters:Lcom/amazon/device/ads/ParameterMap;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/ParameterMap;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-object p0
.end method
