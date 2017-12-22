.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

.field final synthetic val$offlinePlayableViewData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;->val$offlinePlayableViewData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

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

    .line 70
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;->val$offlinePlayableViewData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;->onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method
