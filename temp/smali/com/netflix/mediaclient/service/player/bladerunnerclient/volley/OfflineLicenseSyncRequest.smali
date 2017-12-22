.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;
.source "OfflineLicenseSyncRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onSyncLicenseDone(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no callback for OfflineLicenseSyncRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 38
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing license sync response"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 45
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "link"

    invoke-static {v2, v4, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->SyncLicense:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getStatus(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 48
    const-string/jumbo v1, "result"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 50
    :goto_0
    if-eqz v1, :cond_2

    .line 51
    const-string/jumbo v0, "actions"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    .line 53
    :goto_1
    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 56
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    sget-object v6, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "OfflineLicenseSyncRequest response movieId=%s action=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    sget-object v6, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/util/NumberUtils;->toIntegerSafely(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 61
    invoke-static {v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->create(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    move-result-object v5

    .line 62
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "JSONException"

    invoke-static {v1, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v0, v3, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onSyncLicenseDone(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 75
    :goto_3
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no callback for OfflineLicenseSyncRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method
