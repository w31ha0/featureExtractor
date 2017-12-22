.class public abstract Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;
.source "FalkorMSLVolleyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_OF_RETRIES:I = 0x2

.field public static final OPTIONAL_URL_REQUEST_PARAM_KEY:Ljava/lang/String; = "param"

.field private static final PARAM_NAME_CALLPATH:Ljava/lang/String; = "callPath"

.field private static final PARAM_NAME_PATH:Ljava/lang/String; = "path"

.field public static final PARAM_NAME_PATH_SUFFIX:Ljava/lang/String; = "pathSuffix"

.field public static final PARAM_NAME_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "FalkorMSLVolleyRequest"

.field private static sUserReloginInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field protected mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

.field private mRetryAttempts:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->sUserReloginInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;-><init>(I)V

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;-><init>(I)V

    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    .line 91
    return-void
.end method

.method private checkForErrors(Lcom/netflix/msl/client/ApiHttpWrapper;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v1, "checkForErrors ApiHttpWrapper status: %s, "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 385
    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getStatus()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 386
    const-string/jumbo v0, "%d bad url? %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_404:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_0
    return-void
.end method

.method protected static getAuthorizationCredentials(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 543
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v6, :cond_2

    .line 544
    :cond_0
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v1, "MSL headers not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 554
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 557
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "NetflixId for %s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 558
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "SecureNetflixId for %s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 560
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "Update cookies for user %s: newId %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 562
    new-instance v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private getMSLApiUnwrappedParams(Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLHeaders()Ljava/util/Map;

    .line 234
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLPayload()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLQuery()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMethod()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "GET"

    .line 238
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUri()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object v0

    .line 236
    :cond_0
    const-string/jumbo v2, "POST"

    goto :goto_0
.end method

.method protected static isNotAuthorized(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 522
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isNotAuthorized(Ljava/lang/String;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserRecoveryInProgressByThisRequest()Z
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    .line 500
    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    .line 504
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    .line 505
    instance-of v0, v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    goto :goto_0
.end method

.method private resetReloginFlagByThisRequest()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->isUserRecoveryInProgressByThisRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->sUserReloginInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 398
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Map;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLApiUnwrappedParams(Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;

    move-result-object v5

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v1

    move-object v6, v1

    move-object v7, v2

    .line 203
    :goto_0
    iget-object v1, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->uri:Ljava/lang/String;

    iget-object v2, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->method:Ljava/lang/String;

    iget-object v3, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->mslHeaders:Ljava/util/Map;

    iget-object v4, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->mslQuery:Ljava/lang/String;

    iget-object v5, v5, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;->mslPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->wrapApiRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->findNonReplayable(Lcom/netflix/msl/userauth/UserAuthenticationData;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v7

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->apiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;Ljava/lang/Object;)[B
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 228
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "API request failed with JSON exception"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 213
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :catch_1
    move-exception v0

    .line 215
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "API request failed with MSL error exception, message: %s, errorHeader: %s, toString: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 218
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 219
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "API request failed with MSL exception"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 220
    invoke-static {v1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->findCauseForMslException(Lcom/netflix/msl/MslException;)Ljava/lang/Throwable;

    move-result-object v0

    .line 221
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 222
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 224
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    move-object v6, v1

    move-object v7, v1

    goto :goto_0
.end method

.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
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
    .line 535
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParams()Ljava/util/Map;
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
    .line 113
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 115
    if-nez v1, :cond_2

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    move-object v1, v0

    .line 126
    :cond_0
    :goto_0
    const-string/jumbo v0, "method"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMethodType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->shouldMaterializeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const-string/jumbo v0, "materialize"

    const-string/jumbo v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    .line 132
    if-nez v0, :cond_3

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of queries is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    instance-of v0, v1, Lcom/netflix/mediaclient/util/MultiValuedMap;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>(I)V

    .line 122
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/MultiValuedMap;->putAll(Ljava/util/Map;)V

    move-object v1, v0

    .line 123
    goto :goto_0

    .line 136
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getQueryPathName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_4
    return-object v1
.end method

.method protected getQueryPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v0, "get"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMethodType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string/jumbo v0, "path"

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "callPath"

    goto :goto_0
.end method

.method protected handleNotAuthorized(Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 408
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->INT_ERR_FALKOR_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v2, v3}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    if-ne v2, v3, :cond_7

    .line 411
    iget v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 412
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: regular API failure"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    return v0

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->isUserRecoveryInProgressByThisRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: Failed attempt to relogin user. Logout user."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v1, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->sUserReloginInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 419
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->forceLogoutUser(Z)V

    goto :goto_0

    .line 423
    :cond_1
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "handleNotAuthorized:: User is not authorized, this most likely should NOT happen!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->resetRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    move-result-object v2

    .line 426
    if-nez v2, :cond_5

    .line 428
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "handleNotAuthorized:: According to MSL store, user was NOT logged in before, check user agent"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->sUserReloginInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "User relogin attempt is in process, just retry"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    move v0, v1

    .line 434
    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: Mismatch between user agent and MSL store, user is logged in according to user agent. We can not renew its credentials, log user out!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->forceLogoutUser(Z)V

    goto :goto_0

    .line 441
    :cond_3
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: MSL user credentials restored, retry..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    move v0, v1

    .line 443
    goto/16 :goto_0

    .line 447
    :cond_4
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: User is NOT currently logged in, pass this failure regular way..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 453
    :cond_5
    const-string/jumbo v3, "FalkorMSLVolleyRequest"

    const-string/jumbo v4, "handleNotAuthorized:: According to MSL store, user was logged in before, check user agent"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v3

    if-nez v3, :cond_6

    .line 456
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: Mismatch between user agent and MSL store, user is NOT logged in according to user agent, but its credentials are found in MSL store. We can not renew its credentials, log user out!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->forceLogoutUser(Z)V

    goto/16 :goto_0

    .line 462
    :cond_6
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "handleNotAuthorized:: User is currently logged in, we will try to refresh his credentials, since we received that he/she is not authorized."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;

    invoke-direct {v0, p0, v2}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;-><init>(Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 481
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mRetryAttempts:I

    .line 482
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->sUserReloginInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v1

    .line 483
    goto/16 :goto_0

    .line 488
    :cond_7
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "handleNotAuthorized:: regular API failure"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/client/ApiHttpWrapper;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getDataAsString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

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
    .line 576
    invoke-static {p1}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatusCodeOrNullFromVolleyError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_1

    .line 578
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 586
    :cond_0
    :goto_0
    return-object p1

    .line 580
    :cond_1
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_2

    .line 581
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_GENERIC_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->isCronetConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {p1}, Lcom/netflix/mediaclient/util/VolleyUtils;->parseCronetNetworkErrors(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    move-result-object p1

    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
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
    const/4 v5, 0x0

    .line 254
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v1, "X-Netflix.api-script-execution-time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v2, "X-Netflix.execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v3, "X-Netflix.api-script-revision"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mEndpointRevision:Ljava/lang/String;

    .line 262
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mServerExecTimeInMs:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mApiScriptExecTimeInMs:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mResponseSizeInBytes:I

    .line 292
    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 297
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->unwrapApiResponse([B)Lcom/netflix/msl/client/ApiHttpWrapper;
    :try_end_2
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 309
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parseResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 330
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 332
    :goto_2
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    const-string/jumbo v2, "FalkorMSLVolleyRequest"

    const-string/jumbo v3, "Failed to parse server execution time!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "Failed to parse api script execution time!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 280
    :cond_3
    const-string/jumbo v0, "FalkorMSLVolleyRequest"

    const-string/jumbo v1, "execTime not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 302
    :catch_2
    move-exception v0

    .line 303
    :goto_3
    const-string/jumbo v1, "FalkorMSLVolleyRequest"

    const-string/jumbo v2, "Failed to unwrap response "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 304
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 321
    :catch_3
    move-exception v0

    .line 322
    instance-of v1, v0, Lcom/android/volley/VolleyError;

    if-eqz v1, :cond_4

    .line 323
    check-cast v0, Lcom/android/volley/VolleyError;

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 325
    :cond_4
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 332
    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 302
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method protected parseResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/client/ApiHttpWrapper;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mParseTimeInMs:J

    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->checkForErrors(Lcom/netflix/msl/client/ApiHttpWrapper;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 369
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->resetReloginFlagByThisRequest()V

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mParseTimeInMs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mParseTimeInMs:J

    .line 376
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 377
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :catch_0
    move-exception v1

    .line 352
    instance-of v0, v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 353
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->handleNotAuthorized(Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->mUserIsNotLoggedInRetryRequest:Z

    .line 354
    check-cast v1, Lcom/android/volley/VolleyError;

    throw v1

    .line 355
    :cond_0
    instance-of v0, v1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v0, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->resetReloginFlagByThisRequest()V

    .line 357
    check-cast v1, Lcom/android/volley/VolleyError;

    throw v1

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->resetReloginFlagByThisRequest()V

    .line 360
    instance-of v0, v1, Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_2

    .line 361
    check-cast v1, Lcom/android/volley/VolleyError;

    throw v1

    .line 364
    :cond_2
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 379
    :cond_3
    return-object v0
.end method

.method protected shouldMaterializeRequest()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method
