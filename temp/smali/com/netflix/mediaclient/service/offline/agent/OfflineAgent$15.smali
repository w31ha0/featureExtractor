.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->val$playableId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->val$playableId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_0

    .line 967
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->USER:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->refreshLicenseIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    .line 976
    :cond_0
    return-void
.end method
