.class public Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "DefaultMediaErrorDescriptor.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 17
    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;
    .locals 7

    .prologue
    .line 21
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    new-instance v4, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 23
    new-instance v6, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "https://help.netflix.com/en/node/14384"

    invoke-direct {v6, v0, v1}, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const-string/jumbo v1, ""

    const/4 v3, 0x0

    const v5, 0x7f090100

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 26
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriority()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getPriority()I

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->shouldReportToUserAsDialog(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
