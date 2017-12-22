.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

.field final synthetic val$mainHandler:Landroid/os/Handler;

.field final synthetic val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field final synthetic val$playableId:Ljava/lang/String;

.field final synthetic val$status:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic val$tryAgainRequest:Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$playableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$tryAgainRequest:Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$mainHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;

    .line 121
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$playableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;->onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$tryAgainRequest:Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_1
    return-void
.end method
