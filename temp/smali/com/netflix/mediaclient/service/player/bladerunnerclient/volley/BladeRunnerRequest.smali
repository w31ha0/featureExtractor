.class public abstract Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladeRunnerRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "BladeRunnerRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladeRunnerRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladeRunnerRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getDataAsString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladeRunnerRequest;->isNotAuthorized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladeRunnerRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "User is not authorized, trying recovery..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladeRunnerRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
