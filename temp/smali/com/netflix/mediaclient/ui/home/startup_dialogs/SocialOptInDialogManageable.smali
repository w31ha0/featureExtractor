.class public Lcom/netflix/mediaclient/ui/home/startup_dialogs/SocialOptInDialogManageable;
.super Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;
.source "SocialOptInDialogManageable.java"


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
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SocialOptInDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPushNotification;->wasNotificationOptInDisplayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "User was already prompted for opt-in to social"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SocialOptInDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isDialogFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Dialog fragment is already displayed. There should only be one visible at time. Do NOT display opt-in to social."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "User was NOT prompted for opt-in to social and no dialogs are visible."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SocialOptInDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->newInstance()Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDialog(Landroid/app/DialogFragment;)Z

    move-result v0

    return v0
.end method
