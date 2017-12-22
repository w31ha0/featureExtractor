.class Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "PreAppAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 55
    if-nez p2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/PService;->isRemoteUiDevice()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    const-string/jumbo v0, "nf_preappagent"

    const-string/jumbo v1, "widget not installed - skip fetching data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_CW_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->CW_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 74
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_IQ_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->IQ_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 76
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_NON_MEMBER_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->NON_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0
.end method
