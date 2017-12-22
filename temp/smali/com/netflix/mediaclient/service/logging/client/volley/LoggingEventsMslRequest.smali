.class public Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;
.source "LoggingEventsMslRequest.java"


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

.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

.field private mDeliveryRequestId:Ljava/lang/String;

.field private mLoggingRequest:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;-><init>()V

    .line 48
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LoggingEventsMslRequest::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mDeliveryRequestId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mLoggingRequest:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
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
    .line 81
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "X-Netflix.ichnaea.request.type"

    const-string/jumbo v2, "UiRequest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method protected getLoggingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "/ichnaea/log"

    return-object v0
.end method

.method public getMSLPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mLoggingRequest:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_CL:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

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
    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->logRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;->onEventsDeliveryFailed(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;->onEventsDelivered(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected bridge synthetic parseLogResponse([B)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;->parseLogResponse([B)Ljava/lang/String;

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
