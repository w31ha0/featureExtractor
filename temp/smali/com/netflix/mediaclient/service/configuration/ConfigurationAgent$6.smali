.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 903
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

    .line 905
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->persistConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->clearLegacyDeviceConfigFromPreferences()V

    .line 911
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    .line 927
    :goto_0
    return-void

    .line 914
    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "error in fetching first config status: %s, deviceConfig: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isLegacyDeviceConfigInCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->recoverAndClearLegacyConfigs()V

    .line 919
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "recovered using pre-5.0 configs"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    sget-object p2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " configData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p2, Lcom/netflix/mediaclient/android/app/CommonStatus;->FATAL_CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :cond_3
    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1400(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
