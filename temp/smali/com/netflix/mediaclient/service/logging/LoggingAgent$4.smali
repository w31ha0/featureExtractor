.class Lcom/netflix/mediaclient/service/logging/LoggingAgent$4;
.super Landroid/content/BroadcastReceiver;
.source "LoggingAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$4;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 410
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Received intent "

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$4;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$500(Lcom/netflix/mediaclient/service/logging/LoggingAgent;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$4;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$100(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->handleIntent(Landroid/content/Intent;)V

    .line 415
    :cond_0
    return-void
.end method
