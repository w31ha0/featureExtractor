.class Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;
.super Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;
.source "AutoLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/data/ApiFalkorRequest",
        "<",
        "Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_user_autologinrequest"


# instance fields
.field private mPqlQuery:Ljava/lang/String;

.field private mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

.field private mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 5

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 42
    iput-object p4, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 43
    if-nez p3, :cond_0

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mToken:Ljava/lang/String;

    .line 49
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'autoLogin\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mPqlQuery:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "nf_service_user_autologinrequest"

    const-string/jumbo v1, "PQL = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mPqlQuery:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    return-void

    .line 46
    :cond_0
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mToken:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "get"

    return-object v0
.end method

.method protected getPQLQueries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mPqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAutologinCompleted(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAutologinCompleted(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->onSuccess(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;
    .locals 4

    .prologue
    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "credentials"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "netflixId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "secureNetflixId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Empty tokens!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v1, "nf_service_user_autologinrequest"

    const-string/jumbo v2, "Failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :cond_1
    :try_start_1
    new-instance v2, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
