.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "OfflineErrorDialog.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;

.field final synthetic val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$tokenTimeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;->val$tokenTimeOutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;->val$tokenTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    const-string/jumbo v0, "https://www.netflix.com/changeplan"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->createLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$6$2;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    :cond_0
    return-void
.end method
