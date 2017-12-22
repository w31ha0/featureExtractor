.class final Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$2;
.super Ljava/lang/Object;
.source "DownloadDiagnostics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$aboutActivity:Lcom/netflix/mediaclient/ui/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/AboutActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$2;->val$aboutActivity:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$2;->val$aboutActivity:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$2;->val$aboutActivity:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/AboutActivity;->requestExternalStoragePermission()V

    .line 129
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    :cond_0
    return-void
.end method
