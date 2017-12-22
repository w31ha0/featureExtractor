.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->val$playableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->val$playableId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1120
    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->val$playableId:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_PLAYABLE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V

    .line 1125
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflinePdsData(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V

    goto :goto_0
.end method
