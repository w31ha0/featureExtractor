.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 839
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Refreshing config via runnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, v2, v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchAccountConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 841
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Check if we should report ad id via runnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$5;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 843
    if-nez v0, :cond_0

    .line 844
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "CL is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getAdvertiserIdLogging()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;

    move-result-object v0

    .line 849
    if-nez v0, :cond_1

    .line 850
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "AD logger is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 854
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->check_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;->sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto :goto_0
.end method
