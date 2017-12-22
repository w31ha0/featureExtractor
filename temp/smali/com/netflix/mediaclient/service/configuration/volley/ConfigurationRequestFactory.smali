.class public Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;
.super Ljava/lang/Object;
.source "ConfigurationRequestFactory.java"


# instance fields
.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 27
    return-void
.end method


# virtual methods
.method public createDummyNetworkRequest(ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 2

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    goto :goto_0
.end method

.method public createFetchConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;",
            ")",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataWebRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/util/List;ZLcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    goto :goto_0
.end method

.method public createFetchVoipConfigData(Ljava/util/List;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;",
            "Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;",
            ")",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;

    invoke-direct {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;)V

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataWebRequest;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)V

    goto :goto_0
.end method

.method public createReportVoipCallStatistics(Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V

    goto :goto_0
.end method

.method public createVerifyLoginRequest(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginMslRequest;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginWebRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/configuration/volley/VerifyLoginWebRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    goto :goto_0
.end method
