.class public Lcom/google/example/games/basegameutils/GameHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final CLIENT_ALL:I = 0xf

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_PLUS:I = 0x2

.field public static final CLIENT_SNAPSHOT:I = 0x8

.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x0

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final TAG:Ljava/lang/String; = "GameHelper"


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppContext:Landroid/content/Context;

.field mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    .line 85
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 88
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    .line 92
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    .line 99
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 102
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 112
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 115
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 116
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 117
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 120
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 132
    iput v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    .line 137
    iput-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 145
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 148
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 151
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 154
    iput-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    .line 157
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    .line 180
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    .line 186
    iput v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    .line 757
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 758
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 199
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 200
    iput p2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    .line 202
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 233
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    return-void
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 987
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 988
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 987
    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 993
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 994
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 993
    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 2

    .prologue
    .line 946
    if-nez p0, :cond_0

    .line 947
    const-string v0, "GameHelper"

    const-string v1, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :goto_0
    return-void

    .line 952
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 969
    const/16 v0, 0x232a

    const/4 v1, 0x0

    .line 968
    invoke-static {p2, p0, v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 970
    if-nez v0, :cond_1

    .line 972
    const-string v0, "GameHelper"

    .line 973
    const-string v1, "No standard error dialog available. Making fallback dialog."

    .line 972
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    .line 977
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 979
    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 983
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 955
    :pswitch_0
    const/4 v0, 0x2

    .line 954
    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 959
    :pswitch_1
    const/4 v0, 0x1

    .line 958
    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 963
    :pswitch_2
    const/4 v0, 0x3

    .line 962
    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameHelper error: Operation attempted without setup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string v1, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 645
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resetSignInCancellations()V

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    .line 648
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 650
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 686
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 657
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 672
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 674
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    .line 677
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 678
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 679
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 682
    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 683
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 684
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 473
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 481
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 477
    return-void
.end method

.method connect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 689
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 698
    :goto_0
    return-void

    .line 693
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 695
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 696
    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 697
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 275
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 276
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 280
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 279
    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 282
    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 283
    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 284
    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 287
    :cond_1
    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 288
    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 289
    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 292
    :cond_2
    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 293
    sget-object v1, Lcom/google/android/gms/appstate/AppStateManager;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 294
    sget-object v1, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 297
    :cond_3
    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 298
    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 299
    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 302
    :cond_4
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 303
    return-object v0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1016
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 894
    :goto_0
    return-void

    .line 891
    :cond_0
    const-string v0, "GameHelper"

    .line 892
    const-string v1, "disconnect() called when client was already disconnected."

    .line 891
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    .line 521
    if-eqz p1, :cond_0

    .line 522
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 528
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 531
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 341
    const-string v1, "No GoogleApiClient. Did you call setup()?"

    .line 340
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const-string v0, "GameHelper"

    .line 453
    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const-string v0, "GameHelper"

    .line 435
    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 434
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 763
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 764
    const-string v1, "GAMEHELPER_SHARED_PREFS"

    .line 763
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 765
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const-string v0, "GameHelper"

    .line 494
    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 493
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 904
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 905
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->disconnect()V

    .line 906
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 908
    iget v0, p1, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->showFailureDialog()V

    .line 914
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 915
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 916
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequests()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignInError()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTurnBasedMatch()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementSignInCancellations()I
    .locals 4

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 773
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 774
    const-string v2, "GAMEHELPER_SHARED_PREFS"

    const/4 v3, 0x0

    .line 773
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 774
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 775
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 776
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 777
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1025
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** GameHelper ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1021
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!! GameHelper WARNING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1000
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 1001
    const/4 v0, 0x0

    .line 1003
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1008
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 1009
    const/4 v0, 0x0

    .line 1011
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2

    .prologue
    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Notifying LISTENER of sign-in "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 630
    if-eqz p1, :cond_3

    .line 631
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 636
    :cond_0
    :goto_1
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    .line 628
    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v2, 0x2329

    const/4 v4, 0x0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult: req="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    if-ne p1, v2, :cond_0

    const-string v0, "RC_RESOLVE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    const-string v1, ", resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 573
    if-eq p1, v2, :cond_1

    .line 574
    const-string v0, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 622
    :goto_1
    return-void

    .line 571
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_1
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    .line 581
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    if-nez v0, :cond_2

    .line 582
    const-string v0, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 588
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 590
    const-string v0, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_1

    .line 592
    :cond_3
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_4

    .line 593
    const-string v0, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_1

    .line 595
    :cond_4
    if-nez p2, :cond_5

    .line 597
    const-string v0, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    .line 599
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 600
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 602
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 603
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 606
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 607
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->incrementSignInCancellations()I

    move-result v1

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAR: # of cancellations "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 615
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAR: responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 618
    const-string v1, ", so giving up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 619
    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    .line 620
    invoke-direct {v0, v1, p2}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;-><init>(II)V

    .line 619
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 717
    const-string v0, "onConnected: connected!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 719
    if-eqz p1, :cond_2

    .line 720
    const-string v0, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 722
    const-string v0, "invitation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 723
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 725
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 726
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invitation ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 731
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    .line 732
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 731
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 733
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnected: connection hint has "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 736
    const-string v1, " request(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 739
    :cond_1
    const-string v0, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 741
    const-string v0, "turn_based_match"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 740
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 745
    :cond_2
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->succeedSignIn()V

    .line 746
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 793
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 795
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 796
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 799
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 798
    invoke-static {v3}, Lcom/google/example/games/basegameutils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - resolvable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - details: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v2

    .line 806
    iget-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v3, :cond_0

    .line 807
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 828
    :goto_0
    if-nez v0, :cond_3

    .line 830
    const-string v0, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 831
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 832
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 833
    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 843
    :goto_1
    return-void

    .line 809
    :cond_0
    iget-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    if-eqz v3, :cond_1

    .line 810
    const-string v0, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    move v0, v1

    .line 812
    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v2, v3, :cond_2

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 816
    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 817
    iget v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 824
    const-string v2, " >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 825
    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 837
    :cond_3
    const-string v0, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resolveConnectionResult()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionSuspended, cause="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->disconnect()V

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 924
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 925
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 926
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 927
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 380
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 382
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 383
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "GameHelper"

    .line 388
    const-string v1, "GameHelper: client was already connected on onStart()"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 392
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 395
    :cond_1
    const-string v0, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 396
    const-string v0, "Instead, reporting a sign-in failure."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/example/games/basegameutils/GameHelper$1;

    invoke-direct {v1, p0}, Lcom/google/example/games/basegameutils/GameHelper$1;-><init>(Lcom/google/example/games/basegameutils/GameHelper;)V

    .line 402
    const-wide/16 v2, 0x3e8

    .line 397
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 409
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 416
    :goto_0
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 417
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 421
    return-void

    .line 414
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    .line 712
    :goto_0
    return-void

    .line 709
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 783
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    .line 784
    const-string v1, "GAMEHELPER_SHARED_PREFS"

    .line 783
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 784
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 785
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 786
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 787
    return-void
.end method

.method resolveConnectionResult()V
    .locals 3

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    if-eqz v0, :cond_0

    .line 853
    const-string v0, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 884
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 858
    const-string v0, "No need to resolve issue, activity does not exist anymore"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolveConnectionResult: trying to resolve result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    const-string v0, "Result has resolution. Starting it."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 870
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    .line 871
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    .line 872
    const/16 v2, 0x2329

    .line 871
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 875
    const-string v0, "SendIntentException, so connecting again."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_0

    .line 881
    :cond_2
    const-string v0, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 882
    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V

    goto :goto_0
.end method

.method public setAppStateApiOptions(Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->doApiOptionsPreCheck()V

    .line 253
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 254
    return-void
.end method

.method public setConnectOnStart(Z)V
    .locals 2

    .prologue
    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forcing mConnectOnStart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1069
    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 1070
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->doApiOptionsPreCheck()V

    .line 244
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 245
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0

    .prologue
    .line 215
    iput p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    .line 216
    return-void
.end method

.method public setPlusApiOptions(Lcom/google/android/gms/plus/Plus$PlusOptions;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->doApiOptionsPreCheck()V

    .line 262
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 263
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    .line 375
    return-void
.end method

.method public setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V
    .locals 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 318
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    .line 319
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setup: requested clients: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    .line 332
    return-void
.end method

.method public showFailureDialog()V
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v1

    .line 934
    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    .line 935
    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/google/example/games/basegameutils/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 543
    :cond_0
    iget v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 544
    const-string v0, "Clearing default account on PlusClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 550
    :cond_1
    iget v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 551
    const-string v0, "Signing out from the Google API Client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 556
    :cond_2
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 557
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 558
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 559
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 749
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    .line 751
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    .line 752
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    .line 753
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    .line 754
    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 755
    return-void
.end method
