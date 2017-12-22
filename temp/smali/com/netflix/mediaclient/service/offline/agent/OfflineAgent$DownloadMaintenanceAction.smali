.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/MaintenanceAction;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;)V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    return-void
.end method


# virtual methods
.method public runAction(I)V
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4702(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)I

    .line 1479
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 0

    .prologue
    .line 1485
    return-void
.end method
