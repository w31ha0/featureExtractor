.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$8;
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
    .line 645
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$8;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$8;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_0

    .line 650
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$8;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestRenewPlayWindowForPlayable(Ljava/lang/String;)V

    .line 654
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 655
    return-void

    .line 652
    :cond_0
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "createPlayWindowExpiredButRenewableDialog no offlineAgent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
