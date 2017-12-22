.class Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;
.source "PresentationEventWebRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_presentation"


# instance fields
.field private final mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

.field private final mDeliveryRequestId:Ljava/lang/String;

.field private final mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingWebRequest;-><init>()V

    .line 27
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "PresentationEventWebRequest::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mDeliveryRequestId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    .line 31
    return-void
.end method


# virtual methods
.method public getLocalLogTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "nf_presentation"

    return-object v0
.end method

.method public getLoggingUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mUrlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string/jumbo v1, "/presentationtracking/users/presentationtracking"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getClientLoggingUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
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
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mRequestObj:Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->toRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_PRESENTATION:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;->onEventsDeliveryFailed(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "presentationEvent OK : "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationEventWebRequest;->mDeliveryRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;->onEventsDelivered(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
