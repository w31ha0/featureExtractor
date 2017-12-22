.class Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->access$000(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 128
    return-void
.end method
