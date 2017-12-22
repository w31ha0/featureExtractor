.class final Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;
.source "AdvertiserIdLoggingMslRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/ichnaea/log"

.field private static final TAG:Ljava/lang/String; = "nf_volleyrequest"


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

.field private mPayload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;-><init>()V

    .line 39
    const-string/jumbo v0, "nf_volleyrequest"

    const-string/jumbo v1, "AdvertiserIdLoggingMslRequest::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->mPayload:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    .line 42
    return-void
.end method


# virtual methods
.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "application/json"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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
    .line 51
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "X-Netflix.ichnaea.request.type"

    const-string/jumbo v2, "IchnaeaRequest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v0
.end method

.method protected getLoggingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "/ichnaea/log"

    return-object v0
.end method

.method public getMSLPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_ADV_ID:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected logRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->logRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;->onFailure()V

    .line 104
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;->onSuccess()V

    .line 90
    :cond_0
    return-void
.end method

.method protected bridge synthetic parseLogResponse([B)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;->parseLogResponse([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseLogResponse([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "OK"

    return-object v0
.end method
