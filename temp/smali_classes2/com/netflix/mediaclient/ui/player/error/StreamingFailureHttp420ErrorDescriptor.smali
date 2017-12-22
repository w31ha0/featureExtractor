.class Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "StreamingFailureHttp420ErrorDescriptor.java"


# static fields
.field private static final NFErr_HTTPErrorCode:I = -0xfffffdf


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 18
    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;
    .locals 7

    .prologue
    .line 22
    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v4, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 24
    new-instance v6, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "https://netflix.com/proxy"

    invoke-direct {v6, v0, v1}, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const-string/jumbo v1, ""

    const/4 v3, 0x0

    const v5, 0x7f090100

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 27
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method

.method static isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/media/Error;->getError()I

    move-result v0

    const v1, -0xfffffdf

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/media/Error;->checkForStreamingFailureHttp420()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
