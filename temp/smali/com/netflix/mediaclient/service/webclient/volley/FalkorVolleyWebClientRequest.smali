.class public abstract Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;
.source "FalkorVolleyWebClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final ENDPOINT_REVISION:Ljava/lang/String; = "X-Netflix.api-script-revision"

.field public static final NETFLIX_API_SCRIPT_EXECUTION_TIME_HEADER:Ljava/lang/String; = "X-Netflix.api-script-execution-time"

.field public static final NETFLIX_SERVER_EXECUTION_TIME_HEADER:Ljava/lang/String; = "X-Netflix.execution-time"

.field public static final OPTIONAL_URL_REQUEST_PARAM_KEY:Ljava/lang/String; = "&param="

.field private static final PARAM_NAME_CALLPATH:Ljava/lang/String; = "callPath"

.field private static final PARAM_NAME_PATH:Ljava/lang/String; = "path"

.field public static final PARAM_NAME_PATH_SUFFIX:Ljava/lang/String; = "pathSuffix"

.field public static final PARAM_NAME_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "FalkorVolleyWebClientRequest"


# instance fields
.field protected mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

.field protected mApiScriptExecTimeInMs:J

.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field protected mContext:Landroid/content/Context;

.field protected mEndpointRevision:Ljava/lang/String;

.field protected mParseTimeInMs:J

.field protected mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

.field protected mServerExecTimeInMs:J

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;-><init>(I)V

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->initParam(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 112
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;-><init>(I)V

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->initParam(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 122
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;-><init>(I)V

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->initParam(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 117
    return-void
.end method

.method private initParam(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    .line 131
    if-nez p2, :cond_0

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    goto :goto_0
.end method

.method protected static urlEncodPQLParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    invoke-static {p1}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeHostUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->changeHostUrl(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->updateApiEndpointHost(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 7

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getDurationTimeMs()J

    move-result-wide v0

    .line 359
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    const-string/jumbo v3, "request duration time (ms): %d, class: %s, error: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 362
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->NET_GENERAL_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v2, v3}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v6

    .line 364
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {v6}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/FetchErrorUtils;->isAccountError(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/FetchErrorUtils;->notifyOthersOfAccountErrors(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->onFailure(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 379
    return-void

    .line 371
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    .line 372
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getResponseSizeInBytes()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createHttpResponse(JI)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    move-result-object v5

    .line 373
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toFalkorPathResultList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/List;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    goto :goto_0
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 317
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->deliverResponse(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getDurationTimeMs()J

    move-result-wide v0

    .line 324
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 325
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    const-string/jumbo v3, "Report data request success"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v5, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-direct {v5}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;-><init>()V

    .line 327
    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setResponseTime(Ljava/lang/Integer;)V

    .line 328
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setParseTime(Ljava/lang/Integer;)V

    .line 329
    const-string/jumbo v0, "text/x-json"

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setMimeType(Ljava/lang/String;)V

    .line 330
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setServerExecutionTime(Ljava/lang/Integer;)V

    .line 331
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getResponseSizeInBytes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setContentLength(Ljava/lang/Integer;)V

    .line 332
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiScriptExecTimeInMs:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setApiScriptExecutionTime(Ljava/lang/Integer;)V

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mEndpointRevision:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setEndpointRevision(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v1

    .line 336
    const/4 v0, 0x0

    .line 337
    if-eqz v1, :cond_0

    .line 338
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 340
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    if-eqz v1, :cond_1

    .line 342
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;

    const/4 v6, 0x1

    invoke-direct {v2, v0, v6, v4}, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/util/List;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->updateLastContactNetflix(Landroid/content/Context;)V

    .line 349
    :cond_2
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
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
    .line 414
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->isAuthorizationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->areNetflixCookiesNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Lcom/android/volley/AuthFailureError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t build valid headers. Cookies are null. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 419
    if-nez v0, :cond_1

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    :cond_1
    const-string/jumbo v1, "X-Netflix.request.uuid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 426
    const-string/jumbo v1, "X-Netflix.esnPrefix"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v1, "X-Netflix.appVer"

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_2
    return-object v0
.end method

.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string/jumbo v0, "get"

    return-object v0
.end method

.method protected abstract getPQLQueries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getPQLQueriesRepresentationAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getQueryPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    const-string/jumbo v0, "get"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getMethodType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string/jumbo v0, "path"

    .line 405
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "callPath"

    goto :goto_0
.end method

.method protected getRawPQLQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of queries is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getQueryPathName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->urlEncodPQLParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getRawPQLQuery()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v1, "method"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getMethodType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->shouldMaterializeRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v1, "materialize"

    const-string/jumbo v2, "true"

    const-string/jumbo v4, "&"

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiRequestParams(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    .line 163
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;->getMappings(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    const-string/jumbo v6, "&"

    invoke-static {v1, v2, v6}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getOptionalParams()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->storeReqProfileGuid(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string/jumbo v1, "FalkorVolleyWebClientRequest"

    const-string/jumbo v2, "VolleyWebClientRequest URL = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 187
    return-object v0
.end method

.method protected abstract parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 3

    .prologue
    .line 467
    invoke-static {p1}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatusCodeOrNullFromVolleyError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_1

    .line 469
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 474
    :cond_0
    :goto_0
    return-object p1

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->isCronetConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-static {p1}, Lcom/netflix/mediaclient/util/VolleyUtils;->parseCronetNetworkErrors(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    move-result-object p1

    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 226
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v1, "X-Netflix.api-script-execution-time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v2, "X-Netflix.execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v3, "X-Netflix.api-script-revision"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mEndpointRevision:Ljava/lang/String;

    .line 234
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mServerExecTimeInMs:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiScriptExecTimeInMs:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    const-string/jumbo v2, "FalkorVolleyWebClientRequest"

    const-string/jumbo v3, "Failed to parse server execution time!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    const-string/jumbo v1, "FalkorVolleyWebClientRequest"

    const-string/jumbo v2, "Failed to parse api script execution time!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 253
    :cond_2
    const-string/jumbo v0, "FalkorVolleyWebClientRequest"

    const-string/jumbo v1, "execTime not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    .line 282
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mParseTimeInMs:J

    .line 304
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 305
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :catch_0
    move-exception v0

    .line 289
    instance-of v1, v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    check-cast v0, Lcom/android/volley/VolleyError;

    throw v0

    .line 294
    :cond_1
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 307
    :cond_2
    return-object v0
.end method

.method public setApiEndpointRegistry(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 2

    .prologue
    .line 382
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->initUrl(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public setConfig(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 126
    return-void
.end method

.method protected shouldMaterializeRequest()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method
