.class Lcom/netflix/mediaclient/ui/home/AccountHandler$1;
.super Ljava/lang/Object;
.source "AccountHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/AccountHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/AccountHandler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler$1;->this$0:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler$1;->this$0:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->access$000(Lcom/netflix/mediaclient/ui/home/AccountHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;->createAccountSettingsUnavailableAlertDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler$1;->this$0:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->access$000(Lcom/netflix/mediaclient/ui/home/AccountHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    .line 66
    return-void
.end method
