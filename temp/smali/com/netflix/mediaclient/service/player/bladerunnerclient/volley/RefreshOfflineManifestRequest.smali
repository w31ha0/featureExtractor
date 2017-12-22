.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;
.source "RefreshOfflineManifestRequest.java"


# static fields
.field private static LINKS:Ljava/lang/String;

.field private static LINK_LICENSE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mOldLinks:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->TAG:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "links"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->LINKS:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "license"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->LINK_LICENSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    invoke-direct {p0, p1, v0, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 24
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->mOldLinks:Lorg/json/JSONObject;

    .line 25
    return-void
.end method

.method private replaceLinks(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 32
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->LINKS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->LINK_LICENSE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->LINK_LICENSE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->LINKS:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object p1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error injecting old links into manifest"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private replaceLinksAndGetStatus(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 7

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->BLADERUNNER_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 46
    if-eqz p1, :cond_1

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v1, v0

    .line 50
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;->OfflineManifestRefresh:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerParseUtils;->getStatus(Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus$BrRequestType;)Lcom/netflix/mediaclient/android/app/Status;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 55
    :try_start_2
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "manifest for %s has errors, status: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 66
    :cond_1
    :goto_1
    return-object v0

    .line 58
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->mOldLinks:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->mOldLinks:Lorg/json/JSONObject;

    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->replaceLinks(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 63
    :goto_2
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parsing manifest error"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 62
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->getResultObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->replaceLinksAndGetStatus(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->responseCallback:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;

    invoke-interface {v2, v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;->onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
