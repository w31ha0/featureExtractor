.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;
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
    .line 732
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->close(Lio/realm/Realm;)V

    .line 736
    return-void
.end method
