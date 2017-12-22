.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

.field final synthetic val$playableId:Ljava/lang/String;

.field final synthetic val$status:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;->val$playableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

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

    .line 41
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;->val$playableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;->onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method
