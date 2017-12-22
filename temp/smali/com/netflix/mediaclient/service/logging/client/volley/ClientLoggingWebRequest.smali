.class public abstract Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;
.source "ClientLoggingWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected mUrlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getLocalLogTAG()Ljava/lang/String;
.end method

.method public abstract getLoggingUrl()Ljava/lang/String;
.end method

.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "post"

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;->getLocalLogTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "URL = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 33
    return-object p1
.end method

.method protected bridge synthetic parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;->getLocalLogTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "String response to parse = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    const-string/jumbo v0, "OK"

    return-object v0
.end method

.method public setApiEndpointRegistry(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 1

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;->mUrlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 24
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;->getLoggingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;->initUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method
