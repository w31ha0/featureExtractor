.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;->val$playableId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->access$000(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;->val$playableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;->val$playableId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 264
    return-void
.end method
