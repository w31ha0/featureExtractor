.class public Lcom/netflix/mediaclient/service/user/UserAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "UserAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_useragent"

.field public static final TEMP_PROFILE_ID:Ljava/lang/String; = "TEMP_PROFILE_ID"


# instance fields
.field private final commonProfilesUpdateCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

.field private isProfileSwitchingDisabled:Z

.field private localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

.field private mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

.field private mIsNonMemberPlayback:Z

.field private mListOfUserProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

.field private mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

.field private mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

.field private mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

.field private mUserAgentEventReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;

.field private userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 123
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    .line 1251
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$15;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->commonProfilesUpdateCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 145
    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->saveFormerMemberCookies(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/user/UserAgent;)Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isAccountDataAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->createOnAccountDataFetchedCallback(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->profileActivated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->doLoginComplete(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgent;->doSelectedProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->retrySelectProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentCallback;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgentCallback;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->checkCurrentProfileTypeWasChanged(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->commonProfilesUpdateCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->isLatestProfileDataValid(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->updateAndPersistProfilesList(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/user/UserAgent;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setUserPreferredLanguages([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3102(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshConfigAndAccountData()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->restoreProfileData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private addFetchProfileDataRequest(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p3}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchProfileDataRequest(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;

    move-result-object v0

    .line 918
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->createMSLUserCredentialRegistry(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 919
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 920
    return-void
.end method

.method private buildNewNrmConfigData(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;
    .locals 3

    .prologue
    .line 602
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;-><init>()V

    .line 605
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNonMemberData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v1

    .line 606
    if-nez v1, :cond_1

    .line 607
    iput-object p1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    .line 608
    iput-object p2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    .line 618
    :cond_0
    :goto_0
    return-object v0

    .line 611
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 612
    iput-object p1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    .line 614
    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    iput-object p2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkCurrentProfileTypeWasChanged(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 3

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Current profile type changed - sending REFRESH_HOME intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 1297
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Application is currently in foreground - restarting profiles gate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntentSingleTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1302
    :cond_0
    return-void
.end method

.method private cleanUserData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->clearAccountConfigData()V

    .line 1167
    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    .line 1169
    const-string/jumbo v1, "useragent_userprofiles_data"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 1170
    const-string/jumbo v1, "useragent_user_data"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 1173
    const-string/jumbo v1, "nf_user_status_loggedin"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 1176
    const-string/jumbo v1, "user_profile_was_selected"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 1177
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    .line 1178
    return-void
.end method

.method private cleanUserDataOnFailureToRestore()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->cleanUserData()V

    .line 397
    return-void
.end method

.method private createMSLUserCredentialRegistry(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;
    .locals 1

    .prologue
    .line 675
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$7;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    return-object v0
.end method

.method private createOnAccountDataFetchedCallback(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$8;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$8;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    return-object v0
.end method

.method private doActivate(Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 3

    .prologue
    .line 628
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Activate: fetch account level config data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$6;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$6;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 659
    const-string/jumbo v1, "TEMP_PROFILE_ID"

    invoke-direct {p0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->createMSLUserCredentialRegistry(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    .line 662
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->fetchAccountConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 663
    return-void
.end method

.method private doLoginComplete(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1139
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "doLoginComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalUserAccountActive(Landroid/content/Context;)V

    .line 1143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v3, v1, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileReadyToSelectAfterLogin(Landroid/content/Context;Z)V

    .line 1145
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1146
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->setSignedInOnce()V

    .line 1148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nf_user_status_loggedin"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1149
    return-void
.end method

.method private doLogoutComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1185
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Logout complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalUserAccountDeactivated(Landroid/content/Context;)V

    .line 1188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->logout()V

    .line 1189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->onLogout()V

    .line 1190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->clear()V

    .line 1192
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLogoutComplete(Lcom/netflix/mediaclient/StatusCode;)V

    .line 1194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "Logout complete"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 1195
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1196
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    .line 1197
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 1198
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 1199
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 1200
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->cleanUserData()V

    .line 1201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->broadcastUserStatus(Landroid/content/Context;Z)V

    .line 1202
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->profileInactive()V

    .line 1203
    return-void
.end method

.method private doSelectedProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 963
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 964
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 966
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "onProfileDataFetched new profile, update..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->profileInactive()V

    .line 968
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->profileActivated(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 971
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->updateAndPersistProfilesList(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 973
    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "onProfileDataFetched language changed, setUser "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->setUserPreferredLanguages([Ljava/lang/String;)V

    .line 976
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 977
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 978
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Set new profile %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 979
    iget-object v0, p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_3

    .line 980
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User credentials found: %s "

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 981
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    iget-object v1, p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 988
    :goto_0
    return-void

    .line 983
    :cond_3
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User credentials not returned! Failure!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 986
    :cond_4
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "onProfileDataFetched nothing changed ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fallbackToPrimaryProfile()Z
    .locals 2

    .prologue
    .line 1607
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "fallbackToPrimaryAccount"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getPrimaryProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    .line 1610
    if-nez v0, :cond_0

    .line 1611
    const/4 v0, 0x0

    .line 1615
    :goto_0
    return v0

    .line 1614
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->selectProfile(Ljava/lang/String;)V

    .line 1615
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPrimaryProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1602
    :goto_0
    return-object v0

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1598
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1602
    goto :goto_0
.end method

.method private handleAutoLogin(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1812
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Handle autologin"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->clearFormerMemberData()V

    .line 1815
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1817
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Token not found, autologin is not possible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :goto_0
    return-void

    .line 1820
    :cond_0
    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Execute autologin with token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v1, :cond_1

    .line 1824
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User is already logged in, autologin is NOT possible!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1828
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->autologin:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 1829
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    new-instance v2, Lcom/netflix/mediaclient/service/user/UserAgent$23;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$23;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createAutoLoginRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 1845
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0
.end method

.method private handleCreateAutoLoginToken(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1806
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "You can not create auto login token in production!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    return-void
.end method

.method private initLastKnownUser()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "useragent_current_profile_id"

    invoke-static {v2, v3, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "No profile ID, user is not logged in. Check if we have old user data."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->migrateUserIfPossible()Z

    move-result v0

    .line 235
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "Current profile ID: %s, user is logged in."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->isUserKnown(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "User is NOT know to MSL, check if reauthorization data exist!"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->resetRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshProfileData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V

    goto :goto_0

    .line 193
    :cond_1
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "Restore data not found for %s, leave user in logout state"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->cleanUserDataOnFailureToRestore()V

    move v0, v1

    .line 195
    goto :goto_0

    .line 199
    :cond_2
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "User is know to MSL, all good."

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->restoreProfileData(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-virtual {v3, v2, v6}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserCredentialProvider()Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;->getAuthorizationCredentials(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_3

    .line 205
    const-string/jumbo v4, "nf_service_useragent"

    const-string/jumbo v5, "Cookies found for user %s, %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->access$100(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    move v0, v1

    .line 207
    goto :goto_0

    .line 211
    :cond_3
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "Cookies NOT found for user %s, try to get them!"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    new-instance v3, Lcom/netflix/mediaclient/service/user/UserAgent$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 234
    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v4, v2, v1, v3}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchProfileDataRequest(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto/16 :goto_0
.end method

.method private isAccountDataAvailable()Z
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLatestProfileDataValid(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z
    .locals 2

    .prologue
    .line 1226
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private migrateUser(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User data does exist, credentials found, migrate user to MSL"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 310
    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$3;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Landroid/util/Pair;)V

    .line 329
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchProfileDataRequest(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;

    move-result-object v1

    .line 330
    new-instance v2, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v3, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->createMSLUserCredentialRegistry(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 333
    return-void
.end method

.method private migrateUserIfPossible()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserMigrationHelper;->getAuthorizationCredentialsForMigration(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    .line 278
    if-nez v3, :cond_0

    .line 279
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v2, "User was not logged in."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 295
    :goto_0
    return v0

    .line 283
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v4, "To migrate current profile ID: %s, user was logged in."

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v4

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->isUserKnown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User is NOT know to MSL, all is how it should be!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->migrateUser(Landroid/util/Pair;)V

    move v0, v2

    .line 289
    goto :goto_0

    .line 292
    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v2, "User is know to MSL, this is NOT expected!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->restoreProfileData(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    move v0, v1

    .line 295
    goto :goto_0
.end method

.method private notifyLogoutComplete(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$14;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$14;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1217
    return-void
.end method

.method private notifyOtherOfProfileActivated()V
    .locals 2

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileActive(Landroid/content/Context;)V

    .line 1406
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1407
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1409
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "Login complete"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->broadcastUserStatus(Landroid/content/Context;Z)V

    .line 1412
    return-void
.end method

.method private profileActivated(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1376
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1377
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1378
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1379
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->refresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    .line 1380
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->setUserPreferredLanguages([Ljava/lang/String;)V

    .line 1385
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyOtherOfProfileActivated()V

    .line 1401
    :goto_0
    return-void

    .line 1391
    :cond_2
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "profileActivated cannot find profileId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    .line 1393
    if-eqz v0, :cond_3

    .line 1394
    const-string/jumbo v1, "Activated ProfileId not found in list of user profiles: "

    .line 1395
    const-string/jumbo v2, "nf_service_useragent"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 1399
    :cond_3
    iput-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1400
    iput-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    goto :goto_0
.end method

.method private profileInactive()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1416
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1417
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 1418
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileDeactivated(Landroid/content/Context;)V

    .line 1419
    return-void
.end method

.method private refreshConfigAndAccountData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->fetchAccountConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 245
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$2;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchAccountDataRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 266
    return-void
.end method

.method private refreshProfileData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V
    .locals 5

    .prologue
    .line 343
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User data does exist, credentials found, set restore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 346
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$4;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$4;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V

    .line 364
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchProfileDataRequest(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;

    move-result-object v0

    .line 365
    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    new-instance v2, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v4, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->createMSLUserCredentialRegistry(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 366
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 367
    return-void
.end method

.method private registerUserAgentEventReceiver()V
    .locals 3

    .prologue
    .line 1619
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1620
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1621
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1622
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentEventReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1625
    return-void
.end method

.method private restoreProfileData(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_userprofiles_data"

    invoke-static {v0, v1, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "User profiles JSON: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->setSignedInOnce()V

    .line 376
    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserUtils;->buildListOfUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    .line 377
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->profileActivated(Ljava/lang/String;)V

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_user_data"

    invoke-static {v0, v1, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "User JSON: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 384
    if-eqz v0, :cond_1

    .line 385
    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserUtils;->populateUser(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 390
    :goto_1
    return-void

    .line 379
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User profiles JSON not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User JSON not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private retrySelectProfile(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 928
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "retrySelectProfile:: We failed to get profile first time, retry..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v2, Lcom/netflix/mediaclient/service/user/UserAgent$10;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$10;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->isUserKnown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v3, "retrySelectProfile:: new profile is known to MSL store, we received userIdToken before, just use it "

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_0
    invoke-direct {p0, p1, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->addFetchProfileDataRequest(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 959
    :goto_1
    return-void

    .line 949
    :cond_0
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v3, "retrySelectProfile:: new profile is NOT known to MSL store, use switch profile again! "

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getSwitchProfileAuthenticationData(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;

    move-result-object v1

    .line 951
    if-nez v1, :cond_1

    .line 952
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "switchWebUserProfile failed, userId token was not found for current user id. It should not happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_UPDATE_USER_ID:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private saveFormerMemberCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 597
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->buildNewNrmConfigData(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->persistFormerMemberData(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V

    .line 599
    return-void
.end method

.method private setUserPreferredLanguages([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 437
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setPreferredLanguages(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NrdController;->setDeviceLocale(Ljava/util/Locale;)V

    .line 440
    return-void
.end method

.method private tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 5

    .prologue
    .line 817
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "loginUser tokenActivate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-boolean v0, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->autoLoginSource:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->autologin:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    .line 820
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "User is logged in! This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateAccByToken fails, NRD registration exist"

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 823
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 828
    :goto_1
    return-void

    .line 818
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    goto :goto_0

    .line 827
    :cond_1
    new-instance v0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->doActivate(Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto :goto_1
.end method

.method private unregisterUserAgentEventReceiver()V
    .locals 4

    .prologue
    .line 1629
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentEventReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :goto_0
    return-void

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterUserAgentEventReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAndPersistProfilesList(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1233
    .line 1235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1236
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    const/4 v2, 0x1

    .line 1243
    :cond_0
    if-eqz v2, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserUtils;->persistListOfUserProfiles(Landroid/content/Context;Ljava/util/List;)V

    .line 1249
    return-void

    .line 1240
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1241
    goto :goto_0

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private userEnteredPinMatchesStoredPin(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1636
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getUserPin()Ljava/lang/String;

    move-result-object v2

    .line 1637
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "userEnteredPinMatchesStoredPin usrPin=%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1639
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private validateProfileId(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 832
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 842
    :goto_0
    return v0

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 837
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 838
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 842
    goto :goto_0
.end method

.method private verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 544
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Login via Dynecom"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$5;

    invoke-direct {v0, p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgent$5;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 592
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 593
    return-void
.end method


# virtual methods
.method public addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 3

    .prologue
    .line 1320
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "addWebUserProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p4, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createAddUserProfileRequest(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 1323
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1324
    return-void
.end method

.method public allocateABTest(IILcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 991
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$11;

    invoke-direct {v0, p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgent$11;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1008
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createAllocateABTestRequest(IILcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1009
    return-void
.end method

.method public consumeUmaAlert()V
    .locals 3

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_0

    .line 1493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->setConsumed(Z)V

    .line 1494
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserUtils;->persistUser(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    .line 1495
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1498
    :cond_0
    return-void
.end method

.method public createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 3

    .prologue
    .line 1901
    if-nez p3, :cond_0

    .line 1902
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Callback can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1904
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Create auto login token"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$24;

    invoke-direct {v0, p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgent$24;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1918
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createAutoLoginTokenRequest(JLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1919
    return-void
.end method

.method public deallocateABTest(ILcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 1012
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$12;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$12;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1029
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createDeallocateABTestRequest(ILcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1030
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    .line 403
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->unregisterUserAgentEventReceiver()V

    .line 404
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 405
    return-void
.end method

.method public doInit()V
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshProfileSwitchingStatus()V

    .line 152
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentEventReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;

    .line 153
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRawDeviceLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "Current device locale as raw user locale: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    new-instance v2, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldAlertForMissingLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->wasPreviouslyAlerted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->registerUserAgentEventReceiver()V

    .line 164
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->initLastKnownUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 167
    :cond_0
    return-void

    .line 160
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 1735
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$21;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$21;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1747
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createDoOnRampEligibilityActionRequest(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1748
    return-void
.end method

.method public editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 6

    .prologue
    .line 1327
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "editWebUserProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    new-instance v5, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;

    const/4 v1, 0x0

    invoke-direct {v5, p0, p5, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createEditUserProfileRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 1330
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1331
    return-void
.end method

.method public fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 1512
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "fetchAvailableAvatarsList"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$17;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$17;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1523
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchAvailableAvatarsRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1524
    return-void
.end method

.method public fetchProfileData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1422
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "fetchProfileData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$16;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 1449
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchProfileDataRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1450
    return-void
.end method

.method public fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 1712
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$20;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$20;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1730
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchSurveyRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1731
    return-void
.end method

.method public forceLogoutUser()V
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->forceLogoutUser(Z)V

    .line 1034
    return-void
.end method

.method public forceLogoutUser(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1039
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Force logout %b!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1040
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    .line 1041
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->isPlaybackInProgress()Z

    move-result v1

    .line 1043
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser()V

    .line 1045
    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    .line 1046
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User playback is in progress, leave to PlayerActivity to redirect to logout page on end of playback!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 1051
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    .line 1052
    :cond_1
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "forceLogoutUser:: Application is currently in foreground %b, - go to logout always %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1053
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->create(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1054
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1057
    :cond_2
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "forceLogoutUser:: UI is NOT visible, just kill all activities."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAccountOwnerToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentAppLanguage()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    if-nez v0, :cond_0

    .line 1116
    const/4 v0, 0x0

    .line 1131
    :goto_0
    return-object v0

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_2

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    .line 1126
    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v2

    .line 1129
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "nf_loc userPref:%s appLocaleRaw:%s - picking %s"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v6, 0x2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1131
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1129
    :cond_3
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1131
    :cond_4
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object v0
.end method

.method public bridge synthetic getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileGuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileGuid called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentProfileToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    .line 493
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "currentProfile is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGeoCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    .line 1363
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getGeoCountry is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v0, 0x0

    .line 1366
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getGeoCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    return-object v0
.end method

.method public getPrimaryProfileGuid()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1851
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getPrimaryProfileGuid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1853
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1854
    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "getPrimaryProfileGuid: %s "

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1855
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1856
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    .line 1860
    :goto_1
    return-object v0

    .line 1854
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1860
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getReqCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    .line 1354
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getReqCountry is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/4 v0, 0x0

    .line 1357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getReqCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubtitleDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    return-object v0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1482
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isKidsProfile(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUmaAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserSubtitlePreferences()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1763
    if-nez p1, :cond_0

    .line 1764
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "Intent is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :goto_0
    return v0

    .line 1768
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1773
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.USER_AUTOLOGIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1774
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->handleAutoLogin(Landroid/content/Intent;)V

    .line 1782
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1775
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.USER_CREATE_AUTOLOGIN_TOKEN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1776
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->handleCreateAutoLoginToken(Landroid/content/Intent;)V

    goto :goto_1

    .line 1778
    :cond_2
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "Uknown command!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAgeVerified()Z
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isAgeVerified()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentProfileInstantQueueEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v1, :cond_1

    .line 477
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "isCurrentProfileInstantQueueEnabled is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isKidsProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isMyListForKidsDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    :cond_2
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "isCurrentProfileInstantQueueEnabled %s called: %b "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isNonMemberPlayback()Z
    .locals 1

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mIsNonMemberPlayback:Z

    return v0
.end method

.method public isPotentialPrivacyViolationFoundForLogging(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1871
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PrivacyUtils;->isPotentialPrivacyViolationFound(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1888
    :goto_0
    return v0

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1879
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PrivacyUtils;->isPotentialPrivacyViolationFound(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1883
    goto :goto_0

    .line 1887
    :cond_2
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Privacy violatoon NOT found, value can be logged safely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileSwitchingDisabled()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 4

    .prologue
    .line 522
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "loginUser activateAccByEmailPassword"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->clearFormerMemberData()V

    .line 525
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User is logged in! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "UserAgent: activateAccByEmailPassword fails, NRD registration exist"

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 528
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 533
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    goto :goto_0
.end method

.method public loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 4

    .prologue
    .line 800
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "loginUserByTokens"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->clearFormerMemberData()V

    .line 804
    new-instance v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->access$100(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 807
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 808
    return-void
.end method

.method public logoutUser()V
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1349
    return-void
.end method

.method public logoutUser(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 3

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Can\'t log user out because agent has not been initialized!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :goto_0
    return-void

    .line 1073
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    .line 1076
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->onUserLogout()V

    .line 1078
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1079
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLogoutComplete(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_4

    .line 1088
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const-string/jumbo v1, "uid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->access$2100(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1093
    const-string/jumbo v1, "nid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getNetflixID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->access$2200(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1096
    const-string/jumbo v1, "sid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    :cond_3
    const-string/jumbo v1, "esn"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    const-string/jumbo v1, "device_cat"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    const-string/jumbo v1, "uid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1104
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->doLogoutComplete()V

    goto/16 :goto_0
.end method

.method public markSurveysAsRead()V
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createMarkSurveyReadRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1753
    return-void
.end method

.method public notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$13;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1160
    return-void
.end method

.method onAccountErrors(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 3

    .prologue
    .line 1580
    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccountErrors statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->fallbackToPrimaryProfile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1584
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser()V

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileInvalid(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1502
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "record ums planSelection plandId: %s, priceTier:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createRecordPlanSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1510
    :goto_0
    return-void

    .line 1508
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "planId or priceTier is null - skip reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1453
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "record ums impression msgType: %s, impressionType:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1456
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createRecordUmsImpression(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1461
    :goto_0
    return-void

    .line 1459
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "msgName or impressionType is null - skip reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 414
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/RestrictedProfilesReceiver;->isProfileSwitchingDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    .line 420
    :goto_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Is profile switching disabled: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 421
    return-void

    .line 417
    :cond_0
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    goto :goto_0
.end method

.method public refreshUserAuthorizationData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V
    .locals 5

    .prologue
    .line 848
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Current profile %s is NOT same as one they want us to refresh %s. This should NOT happen!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 854
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->forceLogoutUser()V

    .line 858
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Try to refresh profile data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    new-instance v2, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v4, p1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->setUser(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)V

    .line 860
    return-void
.end method

.method public refreshUserMessage()V
    .locals 3

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 1465
    if-eqz v0, :cond_0

    .line 1466
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "UMA refreshing from server..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createRefreshUserMessageRequest(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1471
    :goto_0
    return-void

    .line 1469
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User is missing, unable to refresh user messages!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 3

    .prologue
    .line 1334
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "removeWebUserProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$ProfilesUpdateCallBackWithResult;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createRemoveUserProfileRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1337
    return-void
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 869
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "We are already on profile %s. Do nothing."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 871
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileActive(Landroid/content/Context;)V

    .line 913
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->validateProfileId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Uknown profile for profile ID: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 880
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->PROFILE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "selectProfile %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 887
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->onProfileSwitch()V

    .line 889
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$9;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$9;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mMSLUserCredentialRegistry:Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent$MSLUserCredentialRegistryImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getSwitchProfileAuthenticationData(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;

    move-result-object v1

    .line 906
    if-nez v1, :cond_2

    .line 907
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "switchWebUserProfile failed, userId token was not found for current user id. It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MSL_FAILED_TO_UPDATE_USER_ID:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addFetchProfileDataRequest(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    goto :goto_0
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    .line 453
    :cond_0
    return-void
.end method

.method public setNonMemberPlayback(Z)V
    .locals 0

    .prologue
    .line 1892
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mIsNonMemberPlayback:Z

    .line 1893
    return-void
.end method

.method public verifyAge(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 2

    .prologue
    .line 1678
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$19;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$19;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1707
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createFetchUserDataRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1708
    return-void
.end method

.method public verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 3

    .prologue
    .line 1644
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$18;

    invoke-direct {v0, p0, p4}, Lcom/netflix/mediaclient/service/user/UserAgent$18;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1663
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1664
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->createVerifyPinRequest(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 1673
    :goto_0
    return-void

    .line 1667
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;->PREVIEW_CONTENT_PIN:Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;

    if-ne p2, v1, :cond_1

    .line 1668
    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 1670
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->userEnteredPinMatchesStoredPin(Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
