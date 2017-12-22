.class Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "AgeDialog.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    .line 278
    const-string/jumbo v0, "nf_age"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 279
    return-void
.end method


# virtual methods
.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 285
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onVerified mVault:%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$500(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$600(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "dialog was cancelled before.. nothing to do"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onAgeVerified statusCode:%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$200(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$500(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$700(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyPinToContinue(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$800(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    goto :goto_0
.end method
