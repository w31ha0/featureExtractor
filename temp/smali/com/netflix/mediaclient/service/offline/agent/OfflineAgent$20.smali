.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;
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
    .line 1314
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelNotificationOnAccountInActive()V

    .line 1318
    return-void
.end method
