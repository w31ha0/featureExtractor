.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$tryAgainRequest:Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;->mPlayableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$tryAgainRequest:Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;->val$tryAgainRequest:Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 128
    return-void
.end method
