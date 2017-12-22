.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$3;
.super Ljava/lang/Object;
.source "OfflineErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$200(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->resumeDownload(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    return-void

    .line 120
    :cond_1
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "downloadResumeAction offlineAgent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_2
    const v1, 0x7f0901fb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
