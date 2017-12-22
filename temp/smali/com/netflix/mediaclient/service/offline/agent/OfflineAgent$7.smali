.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$playableIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->val$playableIdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 602
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->val$playableIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->val$playableIdList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 604
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->removeRecordsForPlayable(Landroid/content/Context;Lio/realm/Realm;Ljava/lang/String;)V

    .line 602
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method
