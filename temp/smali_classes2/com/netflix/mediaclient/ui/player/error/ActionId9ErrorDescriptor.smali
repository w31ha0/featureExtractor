.class Lcom/netflix/mediaclient/ui/player/error/ActionId9ErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "ActionId9ErrorDescriptor.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 17
    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId9ErrorDescriptor;
    .locals 4

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "nf_play_error"

    const-string/jumbo v2, "ActionID 9 NFErr_MC_NCCP_UnsupportedVersion: force exit app, generic message"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/error/action/ForceExitAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/error/action/ForceExitAction;-><init>(Landroid/app/Activity;)V

    .line 32
    new-instance v2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v0, v3, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/ui/player/error/ActionId9ErrorDescriptor;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/ui/player/error/ActionId9ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v0
.end method
