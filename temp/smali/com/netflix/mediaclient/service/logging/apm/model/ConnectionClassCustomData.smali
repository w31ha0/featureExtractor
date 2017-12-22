.class public Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;
.super Ljava/lang/Object;
.source "ConnectionClassCustomData.java"


# static fields
.field public static final BANDWIDTH_SESSION_AVERAGE:Ljava/lang/String; = "bandwidthAvg"

.field public static final CONNECTION_CLASS:Ljava/lang/String; = "connectionClass"


# instance fields
.field private final bwAverage:D

.field private final connectionClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getDownloadKBitsPerSecond()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;->bwAverage:D

    .line 21
    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ConnectionQuality;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;->connectionClass:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    const-string/jumbo v1, "bandwidthAvg"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;->bwAverage:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 27
    const-string/jumbo v1, "connectionClass"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;->connectionClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    return-object v0
.end method
