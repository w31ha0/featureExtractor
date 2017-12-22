.class Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;
.super Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;
.source "AdvertiserIdLoggingWebRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_adid"


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

.field private mPayload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;-><init>()V

    .line 29
    const-string/jumbo v0, "nf_adid"

    const-string/jumbo v1, "AdvertiserIdLoggingWebRequest::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->mPayload:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    .line 32
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
    .line 36
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/IchnaeaClientLoggingWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "X-Netflix.ichnaea.request.type"

    const-string/jumbo v2, "IchnaeaRequest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method

.method public getLocalLogTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "nf_adid"

    return-object v0
.end method

.method protected getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;->onFailure()V

    .line 71
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 53
    const-string/jumbo v0, "nf_adid"

    const-string/jumbo v1, "Advertiser ID and opt in startus delivered %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;->mCallback:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;->onSuccess()V

    .line 57
    :cond_0
    return-void
.end method
