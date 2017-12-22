.class public Lcom/netflix/mediaclient/ui/signup/SignupActivity;
.super Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;
.source "SignupActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static final BOOTURL:Ljava/lang/String; = "booturl"

.field private static final PLAYER_COMPLETE:I = 0x15

.field private static final PLAYER_REQUEST:I = 0x14

.field private static final PREFERENCE_NON_MEMBER_PLAYBACK:Ljava/lang/String; = "prefs_non_member_playback"

.field private static final RC_BILLING:I = 0x2

.field private static final RC_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SignupActivity"


# instance fields
.field private credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final loginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

.field private mDeviceCategory:Ljava/lang/String;

.field private mESN:Ljava/lang/String;

.field private mESNPrefix:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mErrHandler:Ljava/lang/String;

.field mHandleError:Ljava/lang/Runnable;

.field private mIsLoginActivityInFocus:Z

.field private mIsPlayBillingPresent:Z

.field private mIsSignupFromPlayback:Z

.field mJumpToSignInTask:Ljava/lang/Runnable;

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPassword:Ljava/lang/String;

.field private mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

.field private mPlayBillingInitDone:Z

.field private mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

.field private mSignupLoaded:Z

.field private mSignupMenuItem:Z

.field private mSignupOngoing:Z

.field private mSoftwareVersion:Ljava/lang/String;

.field private saveCredentials:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    .line 91
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    .line 92
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$1;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mJumpToSignInTask:Ljava/lang/Runnable;

    .line 1012
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->loginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    .line 1027
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$11;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mDeviceCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->loginQueryCallback:Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->canProceedWithPlayBilling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->sanitizeInputString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->canShowPlayBillingOption(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->resolveResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsLoginActivityInFocus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    return p1
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->updateMenuItems()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESNPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method private canProceedWithPlayBilling()Z
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->isPlayBillingReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canShowPlayBillingOption(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1282
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    .line 1285
    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->isPlayBillingReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isPlayBillingEnabledInConifg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1291
    :goto_0
    return v0

    .line 1286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createShowIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    const v1, 0x4008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    return-object v0
.end method

.method public static createShowWithNewCookiesIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 172
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createShowIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "useDynecomCookies"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    return-object v0
.end method

.method public static createStartIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private declared-synchronized doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    .prologue
    .line 1204
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1205
    :try_start_0
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "GPS client is null, unable to try to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1209
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials:Z

    if-eqz v0, :cond_0

    .line 1210
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Trying to save credentials to GPS"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials:Z

    .line 1212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1213
    :cond_2
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Credential is empty, do not save it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1217
    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 1219
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mEmail:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPassword:Ljava/lang/String;

    .line 1220
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object v0

    .line 1221
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    .line 1223
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$13;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$13;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1051
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    .line 1052
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupOngoing:Z

    .line 1057
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 1060
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_3

    .line 1061
    :cond_0
    const v0, 0x7f090195

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showToast(I)V

    .line 1063
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1064
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->clearCookies()V

    .line 1079
    :cond_1
    :goto_1
    return-void

    .line 1051
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1068
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09026d

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1073
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Executing the following javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1077
    iput-object v4, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mErrHandler:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private isPlayBillingAvailable()Z
    .locals 1

    .prologue
    .line 1098
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->canUseGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSignupDisabledDevice()Z
    .locals 2

    .prologue
    .line 317
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private resolveResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Google Play Services: STATUS: RESOLVING"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_0
    return-void

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "Google Play Services: STATUS: Failed to send resolution."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0

    .line 1134
    :cond_0
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Google Play Services: STATUS: FAIL"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string/jumbo v0, "Google Play Services: Could Not Resolve Error"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1136
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0
.end method

.method private sanitizeInputString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "undefined"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private declared-synchronized saveCredentials()V
    .locals 2

    .prologue
    .line 1245
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1265
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1252
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1253
    if-nez v0, :cond_2

    .line 1254
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "GPS client unavailable, unable to attempt to save credentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1261
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->saveCredentials:Z

    .line 1262
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private updateMenuItems()V
    .locals 1

    .prologue
    .line 925
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$8;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method


# virtual methods
.method public createJSBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 998
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    return-object v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 935
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->finish()V

    .line 313
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->SIGN_UP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 314
    return-void
.end method

.method public getBootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpBootloader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .prologue
    .line 1269
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->nonMemberLanding:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method

.method public getErrorHandler()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getNextTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mJumpToSignInTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 1087
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->nmLanding:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleAccountDeactivated()V
    .locals 2

    .prologue
    .line 1274
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1277
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handleAccountDeactivated()V

    goto :goto_0
.end method

.method public handleBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 204
    :goto_0
    return v1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    if-eqz v2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 189
    :cond_2
    new-instance v2, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v2

    .line 190
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->getReactNativeMode()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 192
    :cond_3
    const v2, 0x7f09026c

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/signup/SignupActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$2;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)V

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideTwoButtonDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public handleProfileActivated()V
    .locals 2

    .prologue
    .line 1196
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    :goto_0
    return-void

    .line 1199
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handleProfileActivated()V

    goto :goto_0
.end method

.method protected handleProfileReadyToSelect()V
    .locals 2

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsLoginActivityInFocus:Z

    if-eqz v0, :cond_0

    .line 1040
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Login activity is in focus, leave it to finish all account activities when it is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_0
    return-void

    .line 1041
    :cond_0
    const-string/jumbo v0, "prefs_non_member_playback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Token activation complete for non-member playback, do not go to profile selection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1044
    :cond_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "New profile requested - starting profile selection activity..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 1046
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finishAllAccountActivities(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected isAutoLoginEnabled()Z
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    return v0
.end method

.method public isPlayBillingEnabledInConifg(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1299
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 1300
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1302
    :cond_0
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "serviceMgr & configurationAgent is not ready.. disable play billing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_1
    :goto_0
    return v0

    .line 1306
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isPlayBillingDisabled()Z

    move-result v2

    .line 1307
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->ignorePreloadForPlayBilling()Z

    move-result v3

    .line 1308
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isNetflixPreloaded()Z

    move-result v1

    .line 1313
    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1142
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1148
    if-ne p1, v5, :cond_2

    .line 1149
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1150
    const-string/jumbo v0, "Account credentials saved!"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1151
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v6}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const-string/jumbo v0, "Failed to save account credentials!"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showDebugToast(Ljava/lang/String;)V

    .line 1154
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0

    .line 1157
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->handleActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1163
    :cond_3
    const/16 v0, 0x14

    if-ne p1, v0, :cond_5

    const/16 v0, 0x15

    if-ne p2, v0, :cond_5

    .line 1167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 1168
    const-string/jumbo v0, "nextUrl"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpBootloader()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1171
    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setUrl(Ljava/lang/String;)V

    .line 1174
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsSignupFromPlayback:Z

    .line 1175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    .line 1176
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1184
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v1, v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0

    .line 1189
    :cond_5
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult: unknown request code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 219
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->doSaveCredentials(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 221
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 229
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 215
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    if-nez p1, :cond_0

    .line 236
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->SIGN_UP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 239
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isSignupDisabledDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finish()V

    .line 248
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/LoginUtils;->shouldUseAutoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 252
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isPlayBillingAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    .line 258
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBillingInitDone:Z

    .line 259
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsPlayBillingPresent:Z

    if-eqz v0, :cond_3

    .line 260
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "play billing is available. starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->startSetup(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;)V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    return-void

    .line 258
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 371
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupMenuItem:Z

    if-eqz v0, :cond_1

    .line 372
    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 373
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 374
    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$5;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 416
    :goto_0
    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 424
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 425
    return-void

    .line 395
    :cond_1
    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 396
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->getReactNativeMode()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 399
    :goto_1
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 400
    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)V

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-object v0, v2

    .line 413
    goto :goto_0

    .line 397
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onDestroy()V

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->credentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    if-eqz v0, :cond_1

    .line 346
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Destroying inAppBilling."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->dispose()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    .line 350
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsSignupFromPlayback:Z

    if-nez v1, :cond_0

    .line 294
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignupLoaded:Z

    .line 295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/SignUpParams;->getSignUpBootloader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setUrl(Ljava/lang/String;)V

    .line 296
    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->setNonMemberPlayback(Z)Z

    .line 306
    :cond_0
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsSignupFromPlayback:Z

    .line 307
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onResume()V

    .line 308
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1092
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onStart()V

    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mIsLoginActivityInFocus:Z

    .line 1095
    return-void
.end method

.method protected setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V
    .locals 3

    .prologue
    .line 986
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESN:Ljava/lang/String;

    .line 987
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mESNPrefix:Ljava/lang/String;

    .line 988
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSoftwareVersion:Ljava/lang/String;

    .line 989
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mDeviceCategory:Ljava/lang/String;

    .line 990
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mSignUpParams:Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    .line 992
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V

    .line 993
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$signUpWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$signUpWebChromeClient;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/netflix/mediaclient/ui/signup/SignupActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 994
    return-void
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x0

    return v0
.end method

.method protected showHelpInMenu()Z
    .locals 1

    .prologue
    .line 360
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->showHelpForNonMemebers()Z

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public testSkuDetails(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 5

    .prologue
    .line 327
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 330
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v0, v2, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getSkuDetails(Ljava/util/ArrayList;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    .line 336
    return-void
.end method

.method public testSkuPurchase(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 8

    .prologue
    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mPlayBilling:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const-string/jumbo v3, "raviPayload"

    const/16 v4, 0xc8

    const-string/jumbo v5, "raviAccountId"

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->purchase(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    .line 325
    return-void
.end method
