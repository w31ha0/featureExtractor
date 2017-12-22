.class Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PinDialog.java"


# instance fields
.field protected final mPinVerifyCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    .line 279
    const-string/jumbo v0, "nf_pin"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 280
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->mPinVerifyCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    .line 281
    return-void
.end method


# virtual methods
.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 286
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onVerified"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$400(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "dialog was cancelled before.. nothing to do"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1000(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)V

    .line 298
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->retryOnPinFailure()V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->dismissDialog()V

    .line 305
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1100(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1200(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPinVerifyEvent()V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1100(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->mPinVerifyCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->notifyCallerPinVerified(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
