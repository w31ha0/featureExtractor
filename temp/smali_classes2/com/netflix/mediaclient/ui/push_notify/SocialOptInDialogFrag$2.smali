.class Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;
.super Ljava/lang/Object;
.source "SocialOptInDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 66
    const-string/jumbo v0, "social"

    const-string/jumbo v1, "User opted In!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string/jumbo v0, "social"

    const-string/jumbo v2, "Already clicked!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-exit v1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->onAccept()V

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->optInButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->optInDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    .line 82
    invoke-static {v3}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->access$200(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    const-string/jumbo v4, "yes"

    .line 81
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
