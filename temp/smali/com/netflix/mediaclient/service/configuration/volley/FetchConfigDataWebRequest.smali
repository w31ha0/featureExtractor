.class Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;
.source "FetchConfigDataWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_config_data"


# instance fields
.field private mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mIsAuthRequired:Z

.field private mPqls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/util/List;ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 33
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->mPqls:Ljava/util/List;

    .line 34
    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->mIsAuthRequired:Z

    .line 35
    iput-object p5, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    .line 36
    return-void
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 1
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
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->mPqls:Ljava/util/List;

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->getRawPQLQuery()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "method"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->getMethodType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->shouldMaterializeRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "materialize"

    const-string/jumbo v2, "true"

    const-string/jumbo v4, "&"

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getConfigRequestParams()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    .line 90
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

    .line 91
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;->getMappings(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 92
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string/jumbo v6, "&"

    invoke-static {v1, v2, v6}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->getOptionalParams()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->storeReqProfileGuid(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "nf_config_data"

    const-string/jumbo v2, "FetchConfigDataWebRequest URL = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->mIsAuthRequired:Z

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->parseConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
