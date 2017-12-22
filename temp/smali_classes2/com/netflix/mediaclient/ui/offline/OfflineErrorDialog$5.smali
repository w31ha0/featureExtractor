.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$5;
.super Ljava/lang/Object;
.source "OfflineErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$5;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$5;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$600(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$5;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$700(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    return-void
.end method
