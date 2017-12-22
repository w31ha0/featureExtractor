.class Lcom/netflix/mediaclient/service/user/UserAgent$3;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$data:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->val$data:Landroid/util/Pair;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 315
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Able to migrate credentials!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->val$data:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$800(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->val$data:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$900(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 326
    return-void

    .line 322
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Failed to migrate credentials!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$3;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->forceLogoutUser()V

    goto :goto_0
.end method
