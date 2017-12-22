.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

.field final synthetic val$playableIdList:Ljava/util/List;

.field final synthetic val$status:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->val$playableIdList:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

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

    .line 145
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->val$playableIdList:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;->onOfflinePlayablesDeleted(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method
