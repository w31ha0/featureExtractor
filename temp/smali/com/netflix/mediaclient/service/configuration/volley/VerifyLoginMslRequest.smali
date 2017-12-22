.class Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;
.source "VerifyLoginMslRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_SIGNIN_VERIFY:Ljava/lang/String; = "signInVerify"

.field private static final TAG:Ljava/lang/String; = "nf_login"


# instance fields
.field private final mCode:Ljava/lang/String;

.field private final mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mId:Ljava/lang/String;

.field private final pqlQuery:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;-><init>()V

    .line 41
    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mCode:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 46
    const-string/jumbo v0, "[\'signInVerify\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->pqlQuery:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
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
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->pqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 6
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
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v1

    .line 58
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    .line 59
    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v3, "flwssn"

    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->flwssn:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    if-eqz v0, :cond_1

    .line 63
    const-string/jumbo v1, "netflixId"

    iget-object v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "secureNetflixId"

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string/jumbo v0, "channelId"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    const-string/jumbo v0, "isNetflixPreloaded"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isNetflixPreloaded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v0, "email"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v0, "nf_login"

    const-string/jumbo v1, "signInParams=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mCode:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v2
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onLoginVerified(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;)V
    .locals 2

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iput-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->SIGNIN_FAILURE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 138
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isSignInSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-interface {v1, p1, v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onLoginVerified(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 144
    :cond_2
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;)V

    return-void
.end method

.method protected parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "TEMP_PROFILE_ID"

    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->getAuthorizationCredentials(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "verifyLogin response is missing credentials!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getDataAsString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
    .locals 4

    .prologue
    .line 110
    const-string/jumbo v0, "nf_login"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "verifyLogin empty!!!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    :try_start_0
    const-string/jumbo v1, "signInVerify"

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string/jumbo v1, "nf_login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String response to parse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    move-result-object v0

    return-object v0
.end method
