.class Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;
.source "FetchVoipConfigDataWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAM_SUPPORTED_SDKS:Ljava/lang/String; = "supportedSdks"

.field private static final PARAM_VOIP_SDK_TYPE:Ljava/lang/String; = "sdkType"

.field private static final TAG:Ljava/lang/String; = "nf_voip_config_data"


# instance fields
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

.field private mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

.field private final mSdkType:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;",
            "Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mPqls:Ljava/util/List;

    .line 44
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mIsAuthRequired:Z

    .line 45
    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mSdkType:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 46
    iput-object p5, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    .line 47
    return-void
.end method


# virtual methods
.method protected getOptionalParams()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string/jumbo v2, "VAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v2, ",DIRECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v2, "supportedSdks"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/UriUtil;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, "nf_voip_config_data"

    const-string/jumbo v2, "optional params: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mPqls:Ljava/util/List;

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->getRawPQLQuery()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "method"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->getMethodType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mApiEndpointRegistry:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getConfigRequestParams()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    .line 135
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;->getMappings(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    const-string/jumbo v6, "&"

    invoke-static {v1, v2, v6}, Lcom/netflix/mediaclient/util/StringUtils;->buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->getOptionalParams()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->storeReqProfileGuid(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "nf_voip_config_data"

    const-string/jumbo v2, "FetchConfigDataWebRequest URL = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mIsAuthRequired:Z

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;->onVoipConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 118
    :cond_0
    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    .line 119
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;->onVoipConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    .line 111
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;
    .locals 1

    .prologue
    .line 102
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->parseVoipConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
