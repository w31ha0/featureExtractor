.class public abstract Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;
.source "ApiFalkorMSLVolleyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;-><init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getMSLUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "/android/5.1/api"

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUrlProvider()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiRequestParams(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;

    move-result-object v0

    .line 70
    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected injectUrl()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getApiUrl(Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->initUrl(Ljava/lang/String;)V

    .line 46
    return-void
.end method
