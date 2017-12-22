.class Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "ActionId3ErrorDescriptor.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 19
    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getReasonCode()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 50
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;->createGeneric(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method private static createGeneric(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;
    .locals 4

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 26
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string/jumbo v2, "nf_play_error"

    const-string/jumbo v3, "ActionID 3 NFErr_MC_NCCP_CustomError: Error message expected, but not received, displaying generic error"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v0, v3, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v0
.end method
