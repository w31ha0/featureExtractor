.class public Lcom/netflix/mediaclient/event/nrdp/device/NetworkConnected;
.super Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;
.source "NetworkConnected.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "networkconnected"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "networkconnected"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/device/NetworkConnected;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    return-object v0
.end method
