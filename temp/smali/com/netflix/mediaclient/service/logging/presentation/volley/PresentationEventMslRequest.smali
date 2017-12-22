.class Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;
.source "PresentationEventMslRequest.java"


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
.field private static final PATH:Ljava/lang/String; = "/presentationtracking/users/presentationtracking"

.field private static final TAG:Ljava/lang/String; = "nf_presentation"


# instance fields
.field private final mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

.field private final mDeliveryRequestId:Ljava/lang/String;

.field private final mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;-><init>()V

    .line 41
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "PresentationEventMslRequest::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mDeliveryRequestId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    .line 45
    return-void
.end method


# virtual methods
.method protected getLoggingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "/presentationtracking/users/presentationtracking"

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
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
    .line 65
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->toRequestParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_PRESENTATION:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

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
    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->presentationTrackingRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;->onEventsDeliveryFailed(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "presentationEvent OK : "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;->onEventsDelivered(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected bridge synthetic parseLogResponse([B)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventMslRequest;->parseLogResponse([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseLogResponse([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "OK"

    return-object v0
.end method
