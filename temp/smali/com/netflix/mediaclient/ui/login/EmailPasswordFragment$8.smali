.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;
.super Ljava/lang/Object;
.source "EmailPasswordFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 497
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "Auth.CredentialsApi.save onResult ActivityFinishedOrDestroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "SAVE: OK"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string/jumbo v1, "Credential Saved"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;->handleBackToRegularWorkflow()V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$800(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
