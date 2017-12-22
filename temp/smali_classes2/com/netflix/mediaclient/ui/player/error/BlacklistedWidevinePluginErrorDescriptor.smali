.class public Lcom/netflix/mediaclient/ui/player/error/BlacklistedWidevinePluginErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;
.source "BlacklistedWidevinePluginErrorDescriptor.java"


# static fields
.field private static final BLACKLISTED_WIDEVINE_PLUGIN:I = 0x3a9b

.field protected static final TAG:Ljava/lang/String; = "nf_user_error"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 28
    return-void
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/BlacklistedWidevinePluginErrorDescriptor;
    .locals 7

    .prologue
    .line 33
    const-string/jumbo v0, "nf_user_error"

    const-string/jumbo v1, "actionID 1 15003, Widevine blacklisted..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const v0, 0x7f090052

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x3a9b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v6, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "https://help.netflix.com/en/node/14384"

    invoke-direct {v6, v0, v1}, Lcom/netflix/mediaclient/service/error/action/LaunchHelpInBrowserAction;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 37
    new-instance v4, Lcom/netflix/mediaclient/ui/player/error/FailbackToLegacyCryptoAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/ui/player/error/FailbackToLegacyCryptoAction;-><init>(Landroid/app/Activity;)V

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const-string/jumbo v1, ""

    const/4 v3, 0x0

    const v5, 0x7f090100

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 40
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/BlacklistedWidevinePluginErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/BlacklistedWidevinePluginErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method

.method static canHandle(Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;)Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getCode()I

    move-result v0

    const/16 v1, 0x3a9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriority()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;->getPriority()I

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;->shouldReportToUserAsDialog(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
