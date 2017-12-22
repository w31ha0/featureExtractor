.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;->val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 498
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;->val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;->val$cb:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$800(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x1b77400

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$3;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$900(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    .line 506
    return-void
.end method
