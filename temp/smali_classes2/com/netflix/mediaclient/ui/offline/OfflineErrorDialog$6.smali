.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;
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
    .line 159
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$800(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const v1, 0x7f0901fb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 192
    return-void

    .line 167
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 176
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v0, v4, v5, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
