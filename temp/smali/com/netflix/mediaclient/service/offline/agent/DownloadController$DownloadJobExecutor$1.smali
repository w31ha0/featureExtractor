.class Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor$1;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$200(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->onDownloadResumeJob()V

    .line 669
    return-void
.end method
