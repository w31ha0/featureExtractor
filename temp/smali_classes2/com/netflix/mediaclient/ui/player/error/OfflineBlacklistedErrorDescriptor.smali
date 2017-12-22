.class public Lcom/netflix/mediaclient/ui/player/error/OfflineBlacklistedErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;
.source "OfflineBlacklistedErrorDescriptor.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 20
    return-void
.end method

.method public static build(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/ui/player/error/OfflineBlacklistedErrorDescriptor;
    .locals 5

    .prologue
    .line 24
    const-string/jumbo v0, "nf_play_error"

    const-string/jumbo v1, "Blacklisted device, offline not supported"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    const v1, 0x7f0901e6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v2, ""

    const v3, 0x7f090156

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/ui/player/error/OfflineBlacklistedErrorDescriptor;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/player/error/OfflineBlacklistedErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriority()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->getPriority()I

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor;->shouldReportToUserAsDialog(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
