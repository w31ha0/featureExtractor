.class public Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;
.super Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;
.source "EmailPasswordFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "EmailPasswordFragment"

.field private static final LOGIN_HELP_URL:Ljava/lang/String; = "https://signup.netflix.com/loginhelp"

.field private static final MIN_PASSWORD_CHARS:I = 0x4

.field private static final SHOW_PASSWORD_SET:Ljava/lang/String; = "showPasswordSelected"


# instance fields
.field private mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mEmailEditText:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private mLoginButton:Landroid/view/View;

.field private mLoginForm:Landroid/view/View;

.field private final mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mSaveCredentials:Z

.field private mShowPassword:Landroid/widget/TextView;

.field private mShowPasswordSelected:Z

.field private mStatusGroup:Landroid/view/View;

.field private mStatusMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 520
    new-instance v0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$9;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->attemptLogin()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPasswordSelected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->showPassword()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->hidePassword()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->onForgotPassword()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->resolveResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private attemptLogin()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 289
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->passwordIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportCancel(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    move v1, v2

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->emailIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportCancel(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    move v1, v2

    .line 317
    :cond_1
    if-eqz v1, :cond_2

    .line 318
    const-string/jumbo v1, "LoginBaseFragment"

    const-string/jumbo v2, "There was an error - skipping login and showing error msg"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 339
    :goto_0
    return-void

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_4

    .line 324
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->noConnectivityWarning()V

    goto :goto_0

    .line 328
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->lockScreenToSensorOrientation(Landroid/app/Activity;)V

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusMessageView:Landroid/widget/TextView;

    const v5, 0x7f0901c3

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 331
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->showProgress(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 333
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 334
    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 336
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    invoke-virtual {v0, v3, v4, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private connectToSmartLock()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 124
    :cond_0
    return-void
.end method

.method private declared-synchronized doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 3

    .prologue
    .line 475
    monitor-enter p0

    if-nez p1, :cond_1

    .line 476
    :try_start_0
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "GPS client is null, unable to try to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 480
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mSaveCredentials:Z

    if-eqz v0, :cond_0

    .line 481
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "Trying to save credentials to GPS"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mSaveCredentials:Z

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    :cond_2
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "Credential is empty, do not save it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 492
    :cond_3
    :try_start_2
    new-instance v2, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    .line 496
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$8;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private emailIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .line 360
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 366
    :goto_0
    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 363
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private getCredentialAndState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 544
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    const-string/jumbo v1, "password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    const-string/jumbo v2, "LoginBaseFragment"

    const-string/jumbo v3, "We received credential"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 550
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :cond_0
    return-void
.end method

.method private handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    .line 391
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 393
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const v1, 0x7f090195

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->saveCredentials()V

    .line 400
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 397
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->showProgress(Z)V

    goto :goto_0
.end method

.method private handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 431
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_RETRY:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    .line 432
    :cond_0
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 434
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-object v0

    .line 436
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_2

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901c0

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 439
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isNetworkError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901c2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 443
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hidePassword()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPassword:Landroid/widget/TextView;

    const v1, 0x7f09026b

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPasswordSelected:Z

    .line 261
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;-><init>()V

    .line 96
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v0
.end method

.method private noConnectivityWarning()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onForgotPassword()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "https://signup.netflix.com/loginhelp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    const v0, 0x7f0901b6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "https://signup.netflix.com/loginhelp"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method private passwordIsInvalid(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    :cond_0
    move v3, v1

    .line 374
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 375
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_5

    .line 377
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->isPasswordValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 380
    :goto_1
    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v3, v2

    .line 371
    goto :goto_0

    :cond_4
    move v0, v2

    .line 377
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private reportCancel(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 419
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    .line 420
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 421
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 422
    return-void
.end method

.method private reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 408
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 410
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 411
    return-void
.end method

.method private resolveResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 567
    .line 568
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 569
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v2, "Google Play Services: STATUS: RESOLVING"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    const/4 v0, 0x0

    .line 587
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;->handleBackToRegularWorkflow()V

    .line 590
    :cond_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    const-string/jumbo v2, "LoginBaseFragment"

    const-string/jumbo v3, "Google Play Services: STATUS: Failed to send resolution."

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    move v0, v1

    .line 577
    goto :goto_0

    .line 579
    :cond_1
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v2, "Google Play Services: STATUS: FAIL"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string/jumbo v2, "Google Play Services: Could Not Resolve Error"

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    move v0, v1

    goto :goto_0

    .line 584
    :cond_2
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v2, "NetflixActivity is null -  skipping startResolutionForResult"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized saveCredentials()V
    .locals 2

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "SmartLock is disabled or device does not support GPS"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 458
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 459
    if-nez v0, :cond_2

    .line 460
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "GPS client unavailable, unable to attempt to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 467
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mSaveCredentials:Z

    .line 468
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private showPassword()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPassword:Landroid/widget/TextView;

    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPasswordSelected:Z

    .line 254
    return-void
.end method

.method private showProgress(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 277
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusGroup:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginForm:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginButton:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    return-void

    :cond_1
    move v0, v2

    .line 277
    goto :goto_0

    :cond_2
    move v2, v1

    .line 278
    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getCredentialAndState(Landroid/os/Bundle;)V

    .line 112
    :cond_0
    return-void
.end method

.method public declared-synchronized onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 607
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 5

    .prologue
    .line 617
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "onConnectionSuspended: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 618
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 621
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "EmailPasswordFragment onCreateView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const v0, 0x7f03008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->setupViews(Landroid/view/View;)V

    .line 134
    if-eqz p3, :cond_0

    .line 135
    const-string/jumbo v1, "showPasswordSelected"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPasswordSelected:Z

    .line 136
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPasswordSelected:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->showPassword()V

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->connectToSmartLock()V

    .line 141
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onDetach()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 599
    :cond_0
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 103
    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "EmailPasswordFragment onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "showPasswordSelected"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPasswordSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f100225

    .line 145
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->setupViews(Landroid/view/View;)V

    .line 146
    const v0, 0x7f100229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 149
    const v0, 0x7f10022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 150
    const v0, 0x7f100227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginForm:Landroid/view/View;

    .line 151
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mLoginButton:Landroid/view/View;

    .line 153
    const v0, 0x7f100188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusGroup:Landroid/view/View;

    .line 154
    const v0, 0x7f100228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mStatusMessageView:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f10022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPassword:Landroid/widget/TextView;

    .line 161
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPassword:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$1;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$3;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->mShowPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v0, 0x7f100226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$6;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method
