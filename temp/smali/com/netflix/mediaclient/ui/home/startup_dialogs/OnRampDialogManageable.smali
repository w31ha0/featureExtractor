.class public Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;
.super Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;
.source "OnRampDialogManageable.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    .line 22
    return-void
.end method


# virtual methods
.method public shouldShow()Z
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->shouldShowOnRamp(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public show()Z
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/model/leafs/OnRampEligibility$Action;->FETCH:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    new-instance v2, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable$1;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
