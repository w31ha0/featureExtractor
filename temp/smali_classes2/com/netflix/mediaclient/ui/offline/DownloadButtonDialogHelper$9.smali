.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playableId:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;->val$playableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->createStartIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    .line 246
    const-string/jumbo v0, "playableId"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;->val$playableId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string/jumbo v0, "videoTYpe"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->DL_REQUEST_CODE:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    return-void
.end method
