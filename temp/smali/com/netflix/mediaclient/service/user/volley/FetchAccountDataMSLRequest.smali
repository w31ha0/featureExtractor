.class Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "FetchAccountDataMSLRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_PROFILES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "nf_service_user_fetchaccountdatarequest"


# instance fields
.field private final pqlQuery1:Ljava/lang/String;

.field private final pqlQuery2:Ljava/lang/String;

.field private final pqlQuery3:Ljava/lang/String;

.field private final pqlQuery4:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 37
    const-string/jumbo v0, "[\'profilesList\', \'summary\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery1:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'profilesList\', {\'to\':"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, [\'summary\', \'subtitlePreference\']]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery2:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "[\'user\', [\'summary\', \'subtitleDefaults\', \'umaEog\', \'uma\', \'thumbMessaging\']]"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery3:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "[\'bind\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery4:Ljava/lang/String;

    .line 48
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
    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery2:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery3:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->pqlQuery4:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V

    return-void
.end method

.method protected parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/client/ApiHttpWrapper;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->getAuthorizationCredentials(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v1

    .line 72
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    .line 73
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->setAuthorizationCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 75
    return-object v0
.end method

.method protected bridge synthetic parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->parseApiResponse(Lcom/netflix/msl/client/ApiHttpWrapper;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserUtils;->parseProfilesList(Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
