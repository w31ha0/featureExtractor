.class public Lcom/netflix/mediaclient/ui/launch/LaunchActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final HANG_ON_LOADING_SCREEN:Z = false

.field private static final LAUNCH_LOGIN_ACTION:Ljava/lang/String; = "com.netflix.mediaclient.LOGIN"

.field private static final PREFERENCE_NON_MEMBER_PLAYBACK:Ljava/lang/String; = "prefs_non_member_playback"

.field private static final PROFILE_GATE_SHOULD_BE_SHOWN_TIMES:I = 0x2

.field private static final RC_READ:I = 0x2

.field private static final SMARTLOCK_TIMEOUT_MS:I = 0x7530

.field private static final START_DETAILS_ACTIVITY_ON_LAUNCH:Z = false

.field private static final TAG:Ljava/lang/String; = "LaunchActivity"

.field private static final sampleVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# instance fields
.field private isLoading:Z

.field private mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mHint:Ljava/lang/String;

.field private mIsErrorDialogVisible:Z

.field private mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

.field private final mSmartLockTimeoutTask:Ljava/lang/Runnable;

.field private mSplashScreenStarted:J

.field private mStarted:J

.field private final nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1005
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$7;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->sampleVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isLoading:Z

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 512
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSmartLockTimeoutTask:Ljava/lang/Runnable;

    .line 733
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->onCredentialRetrieved(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->resolveResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private canHandleIntent()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 698
    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->canHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->handle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    .line 711
    :goto_0
    return-object v0

    .line 703
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {p0, v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->getHandlerForIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    .line 704
    invoke-interface {v0}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;->handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    .line 705
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->endCommandSessions(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Failed to parse nflx url "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method

.method private getLogger(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    .prologue
    .line 589
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 3

    .prologue
    .line 925
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Login Complete - Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Login complete - Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 928
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setRequestedOrientation(I)V

    .line 930
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    .line 932
    :cond_0
    const v0, 0x7f090195

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 933
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 939
    :goto_0
    return-void

    .line 935
    :cond_1
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Login failed, redirect to LoginActivity with credential and status"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserLoginWithError(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 937
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0
.end method

.method private handleManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 275
    :cond_0
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "LaunchActivity::handleManagerReady: starts "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    .line 279
    const v2, 0x7f1001f8

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 281
    if-nez v1, :cond_1

    .line 282
    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSplashScreenStarted:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 287
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Splash screen was displayed, reporting"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->appLoading:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSplashScreenStarted:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;J)V

    .line 291
    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v0, "prefs_non_member_playback"

    invoke-static {p0, v0, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    :cond_3
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "LaunchActivity::handleManagerReady: user not logged in "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 295
    :cond_4
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "LaunchActivity::handleManagerReady: user logged in "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method private handleUserLogin(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getLogger(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 604
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 606
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "User is NOT logged in, redirect to Login screen"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    if-eqz v0, :cond_0

    .line 610
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    .line 611
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 610
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 615
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 616
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    const-string/jumbo v2, "email"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    :cond_1
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 621
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    if-eqz v0, :cond_2

    .line 623
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 628
    return-void
.end method

.method private handleUserLoginWithCredentials(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 900
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v5}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 901
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 902
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 904
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "User is NOT logged in, redirect to Login screen with login credentials"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 908
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 907
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getPassword()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$6;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 922
    return-void
.end method

.method private handleUserLoginWithError(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getLogger(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 640
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 642
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "User is NOT logged in, redirect to Login screen"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    if-eqz v0, :cond_0

    .line 646
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    .line 647
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 646
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 651
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/Credential;Lcom/netflix/mediaclient/android/app/Status;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 653
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    if-eqz v0, :cond_1

    .line 655
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 660
    return-void
.end method

.method private handleUserNotSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 4

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.netflix.mediaclient.LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserSigninViaIntent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 474
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isAutoLoginEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 461
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 463
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 465
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 466
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSmartLockTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 471
    :cond_1
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Google Play Services are not available, go with regular workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method private handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->resetTimeout()V

    .line 540
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 541
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    .line 542
    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isSignUpEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->hasSignedUpOnce()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserSignUp(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 549
    :goto_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalUserAccountNotLoggedIn(Landroid/content/Context;)V

    .line 550
    return-void

    .line 545
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserLogin(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method private handleUserSignUp(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    .line 569
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "User has not signed up, redirect to Signup screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 571
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 573
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->signupPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    .line 575
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    .line 574
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createStartIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 580
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 585
    return-void
.end method

.method private handleUserSignedIn(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->canHandleIntent()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    .line 322
    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v0, v1, :cond_1

    .line 323
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Handled by nflx workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 338
    :goto_0
    return-void

    .line 325
    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v0, v1, :cond_2

    .line 326
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Handled by nflx workflow with delay. Stay on splash screen..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldProfileGateBeShown(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showProfileGate(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 335
    :cond_4
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showStartPageForSignedInUser(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method private handleUserSigninViaIntent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    .prologue
    .line 477
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 479
    :cond_0
    const-string/jumbo v0, "no connectivity, exiting..."

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 482
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1

    .line 485
    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->lockScreenToSensorOrientation(Landroid/app/Activity;)V

    .line 488
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {p0, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 489
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "we shouldn\'t really be here. "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_3
    new-instance v2, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method public static isSignUpEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 1

    .prologue
    .line 560
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 561
    :cond_0
    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->isSignUpEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private onCredentialRetrieved(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 1

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->resetTimeout()V

    .line 890
    const-string/jumbo v0, "Google Play Services: Credential Retrieved"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 891
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserLoginWithCredentials(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 892
    return-void
.end method

.method private registerNflxReceiver()V
    .locals 5

    .prologue
    .line 723
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "LocalIntentNflxUi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 725
    return-void
.end method

.method private resetTimeout()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mLoginWorkflowInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSmartLockTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method private resolveResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 850
    const/4 v0, 0x0

    .line 852
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Google Play Services: STATUS: RESOLVING"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_0
    if-eqz v0, :cond_0

    .line 867
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Failed to initiate resolve, start regular user not signed in workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 869
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 870
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 871
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 873
    :cond_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Google Play Services: STATUS: Failed to send resolution."

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 859
    goto :goto_0

    .line 861
    :cond_1
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v2, "Google Play Services: STATUS: FAIL"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string/jumbo v0, "Google Play Services: Could Not Resolve Error"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    move v0, v1

    .line 863
    goto :goto_0
.end method

.method private shouldDisplayOfflineContent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 406
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Network connectivity exist, go to LOLOMO"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_0
    return v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Offline feature not available!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 418
    const-string/jumbo v2, "LaunchActivity"

    const-string/jumbo v3, "Network connectivity do NOT exist, we have %d offline titles available, load Offline UI..."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 419
    goto :goto_0

    .line 422
    :cond_2
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Network connectivity do NOT exist, we do NOT have any offline titles available, load LOLOMO..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldProfileGateBeShown(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 671
    if-nez p1, :cond_1

    .line 672
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "shouldProfileGateBeShown was called with null manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    :goto_0
    return v2

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;

    if-nez v0, :cond_3

    move v0, v1

    .line 679
    :goto_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldDisplayOfflineContent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 680
    const-string/jumbo v0, "user_saw_profile_gate"

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 681
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    move v2, v1

    .line 683
    :cond_2
    if-eqz v2, :cond_0

    .line 684
    const-string/jumbo v1, "user_saw_profile_gate"

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 676
    goto :goto_1
.end method

.method private showProfileGate(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 349
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 353
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 356
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntentForAppRestart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 357
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 358
    return-void
.end method

.method private showStartPageForSignedInUser(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 367
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 368
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 370
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldDisplayOfflineContent(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Redirect to offline activity with profile %s, %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 378
    :goto_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldShowEogAlert(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    .line 380
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldCreateUiSessions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->touchGesture:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 391
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 395
    return-void

    .line 374
    :cond_2
    const-string/jumbo v1, "LaunchActivity"

    const-string/jumbo v2, "Redirect to home with profile %s, %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startNextActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startNextActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 717
    invoke-virtual {p0, v0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->overridePendingTransition(II)V

    .line 719
    return-void
.end method

.method private unregisterNflxReceiver()V
    .locals 2

    .prologue
    .line 729
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Unregistering Nflx receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->nflxBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 731
    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_MANAGER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 222
    new-instance v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_LIFE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 250
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 252
    return-void
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->appLoading:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleAccountDeactivated()V
    .locals 2

    .prologue
    .line 1002
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Account deactivated ..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-void
.end method

.method protected handleProfileReadyToSelect()V
    .locals 2

    .prologue
    .line 994
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "New profile requested - starting profile selection activity..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 996
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->finishAllAccountActivities(Landroid/content/Context;)V

    .line 997
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 998
    return-void
.end method

.method protected isAutoLoginEnabled()Z
    .locals 1

    .prologue
    .line 431
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isLoading:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 957
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 963
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 964
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 965
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "onActivityResult: conflict resolved"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string/jumbo v0, "com.google.android.gms.credentials.Credential"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 967
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->onCredentialRetrieved(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 987
    :goto_0
    return-void

    .line 969
    :cond_0
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Credential Read: NOT OK"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string/jumbo v0, "Google Play Services: Credential Read Failed"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->showDebugToast(Ljava/lang/String;)V

    .line 972
    invoke-static {p2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 973
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 974
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 976
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 979
    :cond_1
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult: uknown request code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 982
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 983
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 985
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 792
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "onConnected, retrieve credentials if any"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 798
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setSupportsPasswordLogin(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    move-result-object v0

    .line 801
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 837
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->handleUserNotSignedInWithoutCredentials(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 784
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 953
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mStarted:J

    .line 148
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    if-nez p1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->shouldStartPerformanceLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->clear()V

    .line 152
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NON_MEMBER_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 156
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_LIFE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->registerNflxReceiver()V

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Service is ready, just use loading view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/fragment/LoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setContentView(Landroid/view/View;)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_2
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Service is NOT ready, use splash screen... nf_config: splashscreen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mSplashScreenStarted:J

    .line 173
    const v0, 0x7f0300fc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 211
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->unregisterNflxReceiver()V

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 216
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPause()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    .line 206
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 191
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mManagerStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->mIsErrorDialogVisible:Z

    .line 200
    :cond_0
    return-void
.end method

.method protected shouldCreateUiSessions()Z
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldFinishOnManagerError()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldStartPerformanceLogging()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method protected showMdxInMenu()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method
