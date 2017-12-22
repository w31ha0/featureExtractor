.class public Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;
.super Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;
.source "SurveyDialogManageable.java"


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
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->shouldShowSurvey(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    return v0
.end method

.method public show()Z
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable$1;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchSurvey(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method
