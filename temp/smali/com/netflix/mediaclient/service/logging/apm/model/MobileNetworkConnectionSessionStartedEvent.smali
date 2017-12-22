.class public Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "MobileNetworkConnectionSessionStartedEvent.java"


# static fields
.field private static final NETWORK_CONNECTION_SESSION_NAME:Ljava/lang/String; = "mobileNetworkConnection"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "mobileNetworkConnection"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 31
    return-void
.end method
