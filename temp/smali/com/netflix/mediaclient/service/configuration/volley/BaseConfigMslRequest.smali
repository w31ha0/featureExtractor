.class abstract Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;
.source "BaseConfigMslRequest.java"


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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getMSLUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "/android/samurai/config"

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 2
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
    .line 60
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUrlProvider()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getConfigRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 62
    if-nez v1, :cond_0

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->CONFIG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected injectUrl()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->initUrl(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
