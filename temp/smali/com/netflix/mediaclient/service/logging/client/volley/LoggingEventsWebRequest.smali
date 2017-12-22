.class public Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;
.source "LoggingEventsWebRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_cl"


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

.field private mDeliveryRequestId:Ljava/lang/String;

.field private mLoggingRequest:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;-><init>()V

    .line 34
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "LoggingEventsWebRequest::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mDeliveryRequestId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mLoggingRequest:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
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
    .line 46
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "X-Netflix.ichnaea.request.type"

    const-string/jumbo v2, "UiRequest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method

.method public getLocalLogTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "nf_log_cl"

    return-object v0
.end method

.method protected getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mLoggingRequest:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_CL:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;->onEventsDeliveryFailed(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;->onEventsDelivered(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
