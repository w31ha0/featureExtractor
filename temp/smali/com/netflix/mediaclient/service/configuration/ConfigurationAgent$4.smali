.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 795
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "onConfigDataFetched statusCode=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$702(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 798
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->persistConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$502(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z

    .line 804
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$700(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 807
    :cond_1
    return-void
.end method
