.class public abstract Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;
.super Lcom/android/volley/Request;
.source "VolleyWebClientRequest.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;",
        "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
    }
.end annotation


# static fields
.field private static final COOKIE_KEY_HEADER:Ljava/lang/String; = "Cookie"

.field private static final SET_COOKIE_KEY_HEADER:Ljava/lang/String; = "Set-Cookie"

.field private static final TAG:Ljava/lang/String; = "nf_volleyrequest"


# instance fields
.field private mDefaultTrafficStatsTag:I

.field protected mDurationTimeInMs:J

.field protected mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReqProfileGuid:Ljava/lang/String;

.field protected mResponseSizeInBytes:I

.field private mUrl:Ljava/lang/String;

.field private mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mHeaders:Ljava/util/Map;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->setShouldCache(Z)V

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDurationTimeInMs:J

    .line 80
    return-void
.end method


# virtual methods
.method protected areNetflixCookiesNull()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    .line 182
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canHaveEmptyProfileGuid()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public changeHostUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/volley/Request;->buildNewUrlString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDefaultTrafficStatsTag:I

    .line 131
    invoke-super {p0, p1}, Lcom/android/volley/Request;->changeHostUrl(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 5

    .prologue
    .line 254
    const-string/jumbo v0, "nf_volleyrequest"

    const-string/jumbo v1, "VolleyError: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDurationTimeInMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDurationTimeInMs:J

    .line 257
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 258
    const-string/jumbo v0, "nf_volleyrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error on response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NET_GENERAL_NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v1

    if-nez v1, :cond_1

    .line 264
    const-string/jumbo v1, "nf_volleyrequest"

    const-string/jumbo v2, "Error is not set yet, add it."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 267
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->onFailure(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 268
    return-void
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDurationTimeInMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDurationTimeInMs:J

    .line 249
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->onSuccess(Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method protected getCurrentNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    .line 298
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCurrentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    .line 321
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDurationTimeMs()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDurationTimeInMs:J

    return-wide v0
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
    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->areNetflixCookiesNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    .line 163
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixIdName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mHeaders:Ljava/util/Map;

    const-string/jumbo v2, "Cookie"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getMethodType()Ljava/lang/String;
.end method

.method protected getOptionalParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->web:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected initUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not change the URL of a VolleyWebCLientRequest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDefaultTrafficStatsTag:I

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDefaultTrafficStatsTag:I

    .line 117
    :goto_1
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDefaultTrafficStatsTag:I

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mDefaultTrafficStatsTag:I

    goto :goto_1
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method protected isResponseForSameProfile()Z
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->canHaveEmptyProfileGuid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mReqProfileGuid:Ljava/lang/String;

    .line 331
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    const-string/jumbo v2, "nf_volleyrequest"

    const-string/jumbo v4, "isResponseForSameProfile: one of mReqProfileGuid %s, getCurrentUserId  %s is empty. Ignore validity check"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mReqProfileGuid:Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return v0

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mReqProfileGuid:Ljava/lang/String;

    if-nez v2, :cond_2

    move v0, v1

    .line 340
    goto :goto_0

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mReqProfileGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 344
    if-nez v2, :cond_3

    .line 345
    const-string/jumbo v4, "nf_volleyrequest"

    const-string/jumbo v5, "isResponseForSameProfile: response not valid - mReqProfileGuid %s, getCurrentUserId  %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mReqProfileGuid:Ljava/lang/String;

    aput-object v7, v6, v1

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v2

    .line 348
    goto :goto_0
.end method

.method protected abstract onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 8
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
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mResponseSizeInBytes:I

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->isAuthorizationRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->shouldSkipProcessingOnInvalidUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->isResponseForSameProfile()Z

    move-result v0

    move v1, v0

    .line 198
    :goto_0
    const-string/jumbo v0, "nf_volleyrequest"

    const-string/jumbo v3, "Response status %d"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v3, "Set-Cookie"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getAuthorizationCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v3

    .line 204
    const-string/jumbo v4, "nf_volleyrequest"

    const-string/jumbo v5, "can process ? %b - currentNetflixId %s, newId %s"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->getCurrentNetflixId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v2, 0x2

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    :goto_1
    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 212
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->isResponseForSameProfile()Z

    move-result v1

    if-nez v1, :cond_4

    .line 219
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "wrong state "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "nf_volleyrequest"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 239
    :goto_3
    return-object v0

    :cond_2
    move v1, v2

    .line 196
    goto :goto_0

    .line 204
    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 226
    :cond_4
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 237
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_3

    .line 228
    :catch_1
    move-exception v0

    .line 229
    instance-of v1, v0, Lcom/android/volley/VolleyError;

    if-eqz v1, :cond_5

    .line 230
    check-cast v0, Lcom/android/volley/VolleyError;

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_3

    .line 232
    :cond_5
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_3

    .line 239
    :cond_6
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_3
.end method

.method protected abstract parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setApiEndpointRegistry(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
.end method

.method setErrorLogger(Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    .line 373
    return-void
.end method

.method public setUserCredentialRegistry(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    .line 84
    return-void
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method protected storeReqProfileGuid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 314
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;->mReqProfileGuid:Ljava/lang/String;

    .line 317
    :cond_0
    return-void
.end method
