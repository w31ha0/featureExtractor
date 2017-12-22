.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$TesterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$TesterReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;)V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$TesterReceiver;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1479
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "Received intent "

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1481
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1482
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DEBUG_MSL_FOR_ALL_NETWORK_REQUESTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$TesterReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1700(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Landroid/content/Intent;)V

    .line 1485
    :cond_0
    return-void
.end method
