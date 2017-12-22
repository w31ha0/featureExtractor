.class Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "LogoutActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    .line 77
    const-string/jumbo v0, "LogoutActivity"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    const v2, 0x7f090116

    .line 82
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 84
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->access$000(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->access$100(Lcom/netflix/mediaclient/ui/login/LogoutActivity;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->finish()V

    goto :goto_0
.end method
