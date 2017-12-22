.class Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "AgeDialog.java"


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;

.field final synthetic val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

.field final synthetic val$timeout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/home/AccountHandler;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1$2;->this$2:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1$2;->val$timeout:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1$2;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1$2;->this$2:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1$2;->val$timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1$2;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    const-string/jumbo v1, "https://www.netflix.com/verifyage"

    invoke-virtual {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 210
    return-void
.end method
