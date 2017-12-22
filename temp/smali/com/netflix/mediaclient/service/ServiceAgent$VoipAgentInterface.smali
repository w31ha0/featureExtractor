.class public interface abstract Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# virtual methods
.method public abstract destroyVoipEngine()V
.end method

.method public abstract fetchVoipConfigData(Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)V
.end method

.method public abstract initVoipEngine(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Lcom/netflix/mediaclient/servicemgr/IVoip;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isSIPCallAllowed()Z
.end method

.method public abstract reportCallStatistics(Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V
.end method
