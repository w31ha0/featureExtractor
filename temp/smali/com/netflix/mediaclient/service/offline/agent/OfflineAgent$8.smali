.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$realmPlayableIdsToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;->val$realmPlayableIdsToDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;->val$realmPlayableIdsToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 661
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->removeRecordsForPlayable(Landroid/content/Context;Lio/realm/Realm;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_0
    return-void
.end method
