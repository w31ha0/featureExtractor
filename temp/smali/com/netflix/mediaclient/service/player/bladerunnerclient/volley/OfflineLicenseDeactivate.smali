.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;
.source "OfflineLicenseDeactivate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onLicenseDeactivated(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no callback for link"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "link"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->OfflineLicenseDelete:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getStatus(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onLicenseDeactivated(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no callback for licenseDeactivate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
