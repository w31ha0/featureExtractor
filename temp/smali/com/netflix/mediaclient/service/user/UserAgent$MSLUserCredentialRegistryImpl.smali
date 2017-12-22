.class Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;
.implements Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;


# instance fields
.field private netflixId:Ljava/lang/String;

.field private secureNetflixId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private userAuthenticationData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 1924
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V
    .locals 0

    .prologue
    .line 1924
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 0

    .prologue
    .line 1924
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setAuthorizationCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->secureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method private getUserAuthenticationDataByCookies()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1965
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v3, "getMSLUserCredentialRegistry:: User profile is NOT known to MSL, get cookies for UserAuthenticationData."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getNetflixID()Ljava/lang/String;

    move-result-object v3

    .line 1968
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v4

    .line 1971
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1972
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v5, "getMSLUserCredentialRegistry:: Netflix ID is NOT known for profile %s even if it should be!"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1975
    :goto_0
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1976
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v5, "getMSLUserCredentialRegistry:: Secure Netflix ID is NOT known for profile %s even if it should be!"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1980
    :cond_0
    if-eqz v0, :cond_1

    .line 1981
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userAuthenticationData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 1985
    :goto_1
    return-object v0

    .line 1984
    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v5, "getMSLUserCredentialRegistry:: Authorization cookies known for profile %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {v0, v5, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1985
    new-instance v0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    invoke-direct {v0, v3, v4}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private save(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2004
    if-nez p1, :cond_1

    .line 2005
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_current_profile_id"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2010
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    const-string/jumbo v0, "TEMP_PROFILE_ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_current_profile_id"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setAuthorizationCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 5

    .prologue
    .line 2058
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Update user credentials: %s : %s, %s : %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getNetflixIdName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2059
    iget-object v0, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->netflixId:Ljava/lang/String;

    .line 2060
    iget-object v0, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->secureNetflixId:Ljava/lang/String;

    .line 2061
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2098
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->clearCookies()V

    .line 2099
    invoke-virtual {p0, v0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 2100
    return-void
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2090
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->netflixId:Ljava/lang/String;

    .line 2091
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->secureNetflixId:Ljava/lang/String;

    .line 2092
    return-void
.end method

.method public getNetflixID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2031
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 2032
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 2033
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    .line 2036
    :goto_0
    return-object v0

    .line 2033
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->netflixId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2019
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getNetflixIdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureNetflixID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2043
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 2044
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 2045
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    .line 2048
    :goto_0
    return-object v0

    .line 2045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->secureNetflixId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2024
    invoke-static {}, Lcom/netflix/mediaclient/util/net/HttpCookieUtils;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 2

    .prologue
    .line 1941
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userAuthenticationData:Lcom/netflix/msl/userauth/UserAuthenticationData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1946
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1947
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1948
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getMSLUserCredentialRegistry:: User profile is not known, regular workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userAuthenticationData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    goto :goto_0

    .line 1952
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->isUserKnown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1954
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getMSLUserCredentialRegistry:: User profile is known to MSL, regular workflow."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userAuthenticationData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    goto :goto_0

    .line 1958
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getUserAuthenticationDataByCookies()Lcom/netflix/msl/userauth/UserAuthenticationData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1941
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1934
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V
    .locals 2

    .prologue
    .line 1990
    monitor-enter p0

    const/4 v0, 0x1

    .line 1991
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1992
    const/4 v0, 0x0

    .line 1994
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    .line 1995
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userAuthenticationData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 1997
    if-eqz v0, :cond_1

    .line 1998
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->save(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    :cond_1
    monitor-exit p0

    return-void

    .line 1990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateApiEndpointHost(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2014
    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateApiEndpointHost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Not expected!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return-void
.end method

.method public updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2066
    if-nez p1, :cond_0

    .line 2067
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "We did not received authorization credentials!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :goto_0
    return v0

    .line 2071
    :cond_0
    iget-object v2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2072
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "We did not received back userId!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2076
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    .line 2077
    iget-object v3, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2078
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v2, "Same user, update cookies!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setAuthorizationCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 2080
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserCredentialProvider()Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;->updateAuthorizationCredentials(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    move v0, v1

    .line 2081
    goto :goto_0

    .line 2084
    :cond_2
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "User in update %s differs than current user %s, profile is changed, DO NOT update cookies!"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    aput-object v6, v5, v0

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
