.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1$1;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "onConfigDataFetched statusCode=%d"

    new-array v2, v5, [Ljava/lang/Object;

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

    .line 305
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->persistConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "error in fetching esnDependentConfigs status: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->FATAL_ESN_BASED_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
