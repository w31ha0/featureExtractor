.class Lcom/netflix/mediaclient/service/user/UserAgent$4;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 351
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Able to refresh credentials!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$800(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1000(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 361
    return-void

    .line 357
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Failed to refresh credentials!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->forceLogoutUser()V

    goto :goto_0
.end method
