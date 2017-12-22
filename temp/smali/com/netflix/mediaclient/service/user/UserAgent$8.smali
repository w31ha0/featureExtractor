.class Lcom/netflix/mediaclient/service/user/UserAgent$8;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 714
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$402(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)Ljava/util/List;

    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUser()Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$602(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$600(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$702(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 723
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$400(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserUtils;->persistListOfUserProfiles(Landroid/content/Context;Ljava/util/List;)V

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$600(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserUtils;->persistUser(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    .line 726
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getPrimaryProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    .line 727
    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Primary profile does NOT exist! This should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "TEMP_PROFILE_ID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 735
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v2, "We already have credentials %s. Double submission most likely!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 788
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getAuthorizationCredentials()Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 741
    const-string/jumbo v1, "TEMP_PROFILE_ID"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getAuthorizationCredentials()Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 742
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "We where expecting temp profile ID, all good, replace it"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v1

    const-string/jumbo v2, "TEMP_PROFILE_ID"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->updateUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 763
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getAuthorizationCredentials()Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 764
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getAuthorizationCredentials()Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    .line 765
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getAuthorizationCredentials()Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1600(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalAccountDataFetched(Landroid/content/Context;)V

    .line 772
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "After:: MSLlUserCredentialRegistry getUserId: %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1700(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "Unable to setUser placeholder temp profile ID"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 778
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_UPDATE_USER_ID:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateAccByEmailPassword fails, failed to setUser UserID in MSLStore"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto/16 :goto_0

    .line 744
    :cond_3
    :try_start_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "We where expecting temp profile ID, got something else! Not expected!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 752
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    const-string/jumbo v2, "BIND fails on login."

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 786
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$8;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto/16 :goto_0
.end method
