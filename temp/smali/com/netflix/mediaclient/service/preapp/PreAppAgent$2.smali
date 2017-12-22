.class Lcom/netflix/mediaclient/service/preapp/PreAppAgent$2;
.super Landroid/content/BroadcastReceiver;
.source "PreAppAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$2;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 115
    if-nez p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "nf_preappagent"

    const-string/jumbo v1, "UserAgentIntentReceiver invoked and received Intent with Action NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$2;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->access$100(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;Landroid/content/Context;)V

    goto :goto_0
.end method
