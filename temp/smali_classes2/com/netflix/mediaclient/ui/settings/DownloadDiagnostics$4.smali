.class final Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$4;
.super Ljava/lang/Object;
.source "DownloadDiagnostics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->removeWideVineFailedPrefs(Landroid/content/Context;)V

    .line 152
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$4;->val$activity:Landroid/app/Activity;

    const-string/jumbo v1, "download diagnostics"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->restartApplication(Landroid/app/Activity;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method
