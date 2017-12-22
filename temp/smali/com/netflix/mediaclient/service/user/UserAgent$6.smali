.class Lcom/netflix/mediaclient/service/user/UserAgent$6;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 635
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "onConfigDataFetched res.isSuccess:%b, isAccountDataAvailable:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1300(Lcom/netflix/mediaclient/service/user/UserAgent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 637
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "pfetchUserData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "This should NOT happen, userID exist in MSL registry %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v0

    const-string/jumbo v1, "TEMP_PROFILE_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1400(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1500(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchAccountDataRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto :goto_0
.end method
