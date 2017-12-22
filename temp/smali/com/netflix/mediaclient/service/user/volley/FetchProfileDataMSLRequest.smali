.class public Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "FetchProfileDataMSLRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_PROFILES:Ljava/lang/String; = "profiles"

.field private static final TAG:Ljava/lang/String; = "nf_service_user_fetchprofiledatarequest"


# instance fields
.field private mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

.field private final mGetAuthorizationTokens:Z

.field private final mProfileId:Ljava/lang/String;

.field private final pqlQuery1:Ljava/lang/String;

.field private final pqlQuery2:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    .line 38
    const-string/jumbo v0, "[\'bind\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->pqlQuery2:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mProfileId:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mGetAuthorizationTokens:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'profiles\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',[\'summary\', \'subtitlePreference\']]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->pqlQuery1:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mGetAuthorizationTokens:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, "[\'bind\']"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onProfileDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iput-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onProfileDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 147
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method protected parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mGetAuthorizationTokens:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->getAuthorizationCredentials(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object v0

    .line 84
    :cond_1
    const-string/jumbo v0, "nf_service_user_fetchprofiledatarequest"

    const-string/jumbo v1, "Cookies are missing in hybrid mode, report an error to prevent profile switch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string/jumbo v0, "Cookies are missing in hybrid mode, unable to switch profile! Most likely problem with endpoint and missing [bind]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v0, Lcom/android/volley/VolleyError;

    const-string/jumbo v1, "Cookies are missing in hybrid mode, unable to switch profile! Most likely problem with endpoint and missing [bind]"

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 100
    const-string/jumbo v0, "nf_service_user_fetchprofiledatarequest"

    const-string/jumbo v1, "String response to parse = %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 106
    const-string/jumbo v0, "nf_service_user_fetchprofiledatarequest"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "UserProfile empty!!!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    :try_start_0
    const-string/jumbo v1, "profiles"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->mProfileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 122
    new-instance v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;-><init>()V

    .line 123
    const-string/jumbo v0, "summary"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iput-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    .line 125
    iget-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response missing summary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v1, "nf_service_user_fetchprofiledatarequest"

    const-string/jumbo v2, "String response to parse = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing profiles json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :cond_2
    const-string/jumbo v0, "subtitlePreference"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 131
    return-object v2
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method
