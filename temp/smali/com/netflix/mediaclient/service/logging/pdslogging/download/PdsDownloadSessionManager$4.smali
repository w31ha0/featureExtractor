.class Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$4;
.super Landroid/content/BroadcastReceiver;
.source "PdsDownloadSessionManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$4;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 358
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Received intent %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    if-nez p2, :cond_0

    .line 383
    :goto_0
    return-void

    .line 364
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->EXTRA_PLAYABLE_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->EXTRA_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->EXTRA_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$4;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$200(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v3

    .line 368
    if-nez v3, :cond_1

    .line 369
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "playable: %s - no session, dropping intent %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 374
    sget-object v4, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    invoke-virtual {v3, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadOnLicenseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    sget-object v4, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 377
    invoke-virtual {v3, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadOnExpiredManifest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_3
    sget-object v4, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 379
    invoke-virtual {v3, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadOnError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "We do not support action :%s "

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
