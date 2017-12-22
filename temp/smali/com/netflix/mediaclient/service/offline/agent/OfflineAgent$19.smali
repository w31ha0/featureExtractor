.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "saveToRegistry avoiding duplicate save."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/content/Context;)V

    .line 1150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2802(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z

    goto :goto_0
.end method
