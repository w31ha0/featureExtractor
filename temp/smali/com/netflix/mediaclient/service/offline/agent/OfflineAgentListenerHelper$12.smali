.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

.field final synthetic val$offlineFeatureAvailable:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Z)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;->val$offlineFeatureAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

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

    .line 227
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;->val$offlineFeatureAvailable:Z

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;->onOfflineStorageVolumeAddedOrRemoved(Z)V

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method
