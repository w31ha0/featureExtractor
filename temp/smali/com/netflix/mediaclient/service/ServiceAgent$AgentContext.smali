.class public interface abstract Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# virtual methods
.method public abstract getApplication()Lcom/netflix/mediaclient/NetflixApplication;
.end method

.method public abstract getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;
.end method

.method public abstract getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
.end method

.method public abstract getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
.end method

.method public abstract getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
.end method

.method public abstract getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
.end method

.method public abstract getNrdController()Lcom/netflix/mediaclient/service/NrdController;
.end method

.method public abstract getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
.end method

.method public abstract getOfflineAgentPlaybackInterface()Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;
.end method

.method public abstract getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;
.end method

.method public abstract getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
.end method

.method public abstract getService()Lcom/netflix/mediaclient/service/NetflixService;
.end method

.method public abstract getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
.end method

.method public abstract getUserCredentialProvider()Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;
.end method
