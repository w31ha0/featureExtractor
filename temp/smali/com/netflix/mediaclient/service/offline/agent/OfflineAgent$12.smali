.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$videoIdToProfileList:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->val$videoIdToProfileList:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 848
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "buildNewUiList now in main.. regenerate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->val$videoIdToProfileList:Ljava/util/Map;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->regenerate(Lio/realm/Realm;Ljava/util/Map;Z)V

    .line 850
    return-void
.end method
