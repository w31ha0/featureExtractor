.class public Lcom/netflix/mediaclient/ui/home/startup_dialogs/OfflineTutorialDialogManageable;
.super Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;
.source "OfflineTutorialDialogManageable.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    .line 21
    return-void
.end method


# virtual methods
.method public shouldShow()Z
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OfflineTutorialDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OfflineTutorialDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->shouldDisplayFullscreenTutorial(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    return v0
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OfflineTutorialDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDialog(Landroid/app/DialogFragment;)Z

    move-result v0

    return v0
.end method
