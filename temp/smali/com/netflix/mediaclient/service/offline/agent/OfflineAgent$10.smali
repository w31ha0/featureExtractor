.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getRealmInstance()Lio/realm/Realm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2202(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lio/realm/Realm;)Lio/realm/Realm;

    .line 716
    return-void
.end method
