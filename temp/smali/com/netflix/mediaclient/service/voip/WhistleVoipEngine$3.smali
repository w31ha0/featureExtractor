.class Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;
.super Ljava/lang/Object;
.source "WhistleVoipEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 715
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 716
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->setUrgentAudioThreadPriority()V

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 719
    :cond_0
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "No dial request or engine is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_0
    return-void

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 725
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Call is already in progress! Terminate it first!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$300(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)I

    move-result v0

    .line 730
    if-gez v0, :cond_3

    .line 731
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "No lines available!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->callFailed(ILjava/lang/String;I)V

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForNoLineAvailable(Landroid/content/Context;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto :goto_0

    .line 737
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/VoipUtils;->getCustomerServiceNumber(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v4, v4, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mSharedSessionId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/voip/VoipUtils;->createDialExtra(Landroid/content/Context;Ljava/lang/String;)Lcom/vailsys/whistleengine/DialExtra;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngine;->dial(ILjava/lang/String;Lcom/vailsys/whistleengine/DialExtra;)I

    move-result v0

    .line 739
    if-lez v0, :cond_4

    .line 740
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "Whistle engine was able to start dial"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    new-instance v2, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$WhistleCall;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$WhistleCall;-><init>(I)V

    iput-object v2, v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 745
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Call was cancelled by user, terminating"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->terminate()Z

    goto/16 :goto_0

    .line 751
    :cond_4
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Whistle engine was unable to start dial!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCancelAction:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto/16 :goto_0

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->callStarted()V

    .line 757
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->requestAudioFocus()V

    .line 758
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 759
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->showCallingNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method
