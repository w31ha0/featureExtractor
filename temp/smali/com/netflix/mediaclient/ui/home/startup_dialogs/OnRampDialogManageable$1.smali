.class Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "OnRampDialogManageable.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/OnRampEligibility;->isEligible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;->manager:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->displayDialogsIfNeeded()Z

    goto :goto_0
.end method
