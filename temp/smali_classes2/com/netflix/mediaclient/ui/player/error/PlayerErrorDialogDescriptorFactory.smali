.class public final Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;
.super Ljava/lang/Object;
.source "PlayerErrorDialogDescriptorFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ErrorManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getHandler(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "Fragment was already detached from the activity - skipping error..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 47
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    if-eqz v0, :cond_1

    .line 48
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/ActionIdErrorDescriptorFactory;->getHandlerForActionIdError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/event/network/NetworkError;

    if-eqz v0, :cond_2

    .line 50
    check-cast p1, Lcom/netflix/mediaclient/event/network/NetworkError;

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/NetworkErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/network/NetworkError;)Lcom/netflix/mediaclient/ui/player/error/NetworkErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_2
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;

    if-eqz v0, :cond_3

    .line 52
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/NccpNetworkingErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;)Lcom/netflix/mediaclient/ui/player/error/NccpNetworkingErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_3
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/Error;

    if-eqz v0, :cond_4

    .line 54
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/Error;

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/MediaErrorDescriptorFactory;->getHandlerForMediaError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_4
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "Ukwnown NCCP error, display generic error!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/error/UknownErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/UknownErrorDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHandlerForPlaybackError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v2, "Fragment was already detached from the activity - skipping error..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 85
    :goto_0
    return-object v0

    .line 72
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;

    if-eqz v0, :cond_2

    .line 73
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const v0, 0x7f09004f

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;->getUiDisplayErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 82
    new-instance v3, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-direct {v3, v2}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 84
    new-instance v2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 85
    new-instance v0, Lcom/netflix/mediaclient/ui/player/error/UknownErrorDescriptor;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/ui/player/error/UknownErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    goto :goto_0

    .line 78
    :cond_2
    const v0, 0x7f09004e

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;->getUiDisplayErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
