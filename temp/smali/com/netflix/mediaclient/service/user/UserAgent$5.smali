.class Lcom/netflix/mediaclient/service/user/UserAgent$5;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginVerified(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 551
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isSignInSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 553
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Login via Dynecom was failure..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const-string/jumbo v2, "UserAgent: activateLoginViaDynecom fails"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v4, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 589
    :goto_0
    return-void

    .line 564
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->shouldTrySignUp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "not currentMember,  need to go to sign-up page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->clearSignedInOnce()V

    .line 567
    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateLoginViaDynecom fails"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v4, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto :goto_0

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_RETRY:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateLoginViaDynecom fails"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v4, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto :goto_0

    .line 577
    :cond_4
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Login via Dynecom was success..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->access$100(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 583
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "error creating activationTokesn"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateLoginViaDynecom fails"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v4, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto/16 :goto_0
.end method
