.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EmailPasswordFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 1

    .prologue
    .line 624
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    .line 625
    const-string/jumbo v0, "LoginBaseFragment"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 626
    return-void
.end method


# virtual methods
.method public onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 630
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 632
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$1000(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$000(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$1100(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 643
    :cond_0
    return-void
.end method
