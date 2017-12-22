.class public interface abstract Lcom/netflix/mediaclient/servicemgr/INetflixService;
.super Ljava/lang/Object;
.source "INetflixService.java"


# static fields
.field public static final EXTRA_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final INTENT_CATEGORY_NETFLIX_SERVICE:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

.field public static final INTENT_NAME_DESTROYED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

.field public static final INTENT_NAME_INIT_COMPLETE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

.field public static final SERVICE_INIT_TIMEOUT_MS:J = 0x15f90L


# virtual methods
.method public abstract addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
.end method

.method public abstract addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
.end method

.method public abstract addProfile(Ljava/lang/String;ZLjava/lang/String;II)V
.end method

.method public abstract allocateABTest(IIII)V
.end method

.method public abstract consumeUmaAlert()V
.end method

.method public abstract createAutoLoginToken(JII)V
.end method

.method public abstract deallocateABTest(III)V
.end method

.method public abstract deleteLocalResource(Ljava/lang/String;)Z
.end method

.method public abstract doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;II)V
.end method

.method public abstract editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
.end method

.method public abstract fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
.end method

.method public abstract fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
.end method

.method public abstract fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJII)V
.end method

.method public abstract fetchSurvey(II)V
.end method

.method public abstract getAccountOwnerToken()Ljava/lang/String;
.end method

.method public abstract getAllProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableAvatarsList(II)V
.end method

.method public abstract getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;
.end method

.method public abstract getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;
.end method

.method public abstract getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
.end method

.method public abstract getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
.end method

.method public abstract getCurrentAppLocale()Ljava/lang/String;
.end method

.method public abstract getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
.end method

.method public abstract getCurrentProfileToken()Ljava/lang/String;
.end method

.method public abstract getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
.end method

.method public abstract getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
.end method

.method public abstract getESN()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
.end method

.method public abstract getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
.end method

.method public abstract getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;
.end method

.method public abstract getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
.end method

.method public abstract getMaintenanceJobMgr()Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;
.end method

.method public abstract getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
.end method

.method public abstract getNetflixPowerManager()Lcom/netflix/mediaclient/service/NetflixPowerManager;
.end method

.method public abstract getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
.end method

.method public abstract getNrdDeviceModel()Ljava/lang/String;
.end method

.method public abstract getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;
.end method

.method public abstract getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
.end method

.method public abstract getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
.end method

.method public abstract getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;
.end method

.method public abstract getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;
.end method

.method public abstract getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
.end method

.method public abstract getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getStartedTimeInMs()J
.end method

.method public abstract getUserEmail()Ljava/lang/String;
.end method

.method public abstract getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
.end method

.method public abstract getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
.end method

.method public abstract getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;
.end method

.method public abstract isCurrentProfileInstantQueueEnabled()Z
.end method

.method public abstract isDeviceHd()Z
.end method

.method public abstract isDolbyVisionSupported()Z
.end method

.method public abstract isHdr10Supported()Z
.end method

.method public abstract isNonMemberPlayback()Z
.end method

.method public abstract isPlaybackInProgress()Z
.end method

.method public abstract isProfileSwitchingDisabled()Z
.end method

.method public abstract isTablet()Z
.end method

.method public abstract isUserAgeVerified()Z
.end method

.method public abstract isUserLoggedIn()Z
.end method

.method public abstract loginUser(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;II)V
.end method

.method public abstract logoutUser(II)V
.end method

.method public abstract markSurveysAsRead()V
.end method

.method public abstract recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract refreshCurrentUserMessageArea()V
.end method

.method public abstract refreshProfileSwitchingStatus()V
.end method

.method public abstract registerCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
.end method

.method public abstract registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V
.end method

.method public abstract removeProfile(Ljava/lang/String;II)V
.end method

.method public abstract requestBackgroundForNotification(IZ)V
.end method

.method public abstract requestForegroundForNotification(ILandroid/app/Notification;)V
.end method

.method public abstract selectProfile(Ljava/lang/String;)V
.end method

.method public abstract setCurrentAppLocale(Ljava/lang/String;)V
.end method

.method public abstract setNonMemberPlayback(Z)V
.end method

.method public abstract startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
.end method

.method public abstract stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
.end method

.method public abstract uiComingFromBackground()V
.end method

.method public abstract unregisterCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
.end method

.method public abstract verifyAge(II)V
.end method

.method public abstract verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;II)V
.end method
