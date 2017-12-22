.class public abstract Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;
.source "IchnaeaClientLoggingWebRequest.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 3

    .prologue
    .line 44
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;->getPayload()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;->getLocalLogTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failed to create body of client logging request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "application/json"

    return-object v0
.end method

.method public getLoggingUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;->mUrlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string/jumbo v1, "/ichnaea/log"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getClientLoggingUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPayload()Ljava/lang/String;
.end method

.method public getPostBody()[B
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
