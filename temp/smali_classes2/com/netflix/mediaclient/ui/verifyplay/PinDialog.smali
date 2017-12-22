.class public Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "PinDialog.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final PIN_DIALOG_WIDTH_PHONE_DP:I = 0x140

.field public static final PIN_DIALOG_WIDTH_TABLET_DP:I = 0x190

.field private static final PIN_ERROR:Ljava/lang/String; = "pin_error"

.field private static final PIN_LENGTH:Ljava/lang/Integer;

.field private static final PIN_PROGRESS:Ljava/lang/String; = "pin_progress"

.field private static final TAG:Ljava/lang/String; = "nf_pin"


# instance fields
.field private mActive:Z

.field private mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

.field private mDialogWidthInDp:I

.field private mErrorIcon:Landroid/widget/ImageView;

.field private mInError:Z

.field private mInProgress:Z

.field private mPinEditText:Landroid/widget/EditText;

.field private mPinForgotView:Landroid/widget/TextView;

.field private mPinMessage:Landroid/widget/TextView;

.field private mSpinner:Landroid/widget/ProgressBar;

.field private mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->PIN_LENGTH:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isPinCheckForPreviewContent(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showConnectivityErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinForgotView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mActive:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->dismissAndNotifyCallers()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->PIN_LENGTH:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->processUserInputPin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showErrorIcon(Z)V

    return-void
.end method

.method protected static createPinDialog(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;
    .locals 3

    .prologue
    .line 67
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "creating dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->setArguments(Landroid/os/Bundle;)V

    .line 74
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->setStyle(II)V

    .line 76
    return-object v0
.end method

.method private dismissAndNotifyCallers()V
    .locals 0

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->dismissDialog()V

    .line 379
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->notifyCallerPinCancelled()V

    .line 380
    return-void
.end method

.method private getIMM(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0
.end method

.method private isPinCheckForPreviewContent(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPreviewProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCallerPinCancelled()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 386
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "%s onPinCancelled vault: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 387
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    aput-object v4, v2, v3

    .line 386
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    if-nez v0, :cond_1

    .line 390
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "mValut is null - cannot start playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PINCANCELLED"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 398
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v5, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    .line 402
    :cond_3
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "notifyCallerPinCancelled RequestedBy.PLAYER callback is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->OFFLINE_DOWNLOAD:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    if-eqz v0, :cond_5

    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v5, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;->onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    .line 408
    :cond_5
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "notifyCallerPinCancelled RequestedBy.OFFLINE_DOWNLOAD callback is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected static notifyCallerPinVerified(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 342
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-nez v0, :cond_2

    .line 343
    :cond_0
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "mValut/activity/asset is null - cannot start playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 352
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 353
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPinVerified(Z)V

    .line 355
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAY_LAUNCHER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->isRemotePlayback()Z

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getmBookmark()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackOnPINSuccess(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    goto :goto_0

    .line 358
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_PINCONFIRMED"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 362
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 363
    if-eqz p2, :cond_5

    .line 364
    invoke-interface {p2, v2, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    .line 366
    :cond_5
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "notifyCallerPinVerified RequestedBy.PLAYER callback is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->OFFLINE_DOWNLOAD:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    if-eqz p2, :cond_7

    .line 370
    invoke-interface {p2, v2, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;->onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    .line 372
    :cond_7
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "notifyCallerPinVerified RequestedBy.OFFLINE_DOWNLOAD callback is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processUserInputPin(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showProgress(Z)V

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showErrorIcon(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getIMM(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->forceHideKeyboard(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    .line 262
    const-string/jumbo v0, "nf_pin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEditorAction gotDone! password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    .line 265
    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;->MATURITY_PIN:Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;

    .line 266
    const/4 v0, 0x0

    .line 267
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isPinCheckForPreviewContent(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;->PREVIEW_CONTENT_PIN:Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;

    .line 269
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    invoke-direct {v3, p0, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 273
    return-void
.end method

.method private setDialogWindowSize()V
    .locals 4

    .prologue
    .line 463
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 465
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 466
    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mDialogWidthInDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 467
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 468
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    const-string/jumbo v1, "nf_pin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not set windowSize e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static showConnectivityErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "%s (%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0901ce

    .line 481
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$2;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$2;-><init>()V

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 488
    return-void
.end method

.method private showErrorIcon(Z)V
    .locals 2

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInError:Z

    .line 459
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mErrorIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    return-void

    .line 459
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showProgress(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 444
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInProgress:Z

    .line 445
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mSpinner:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 446
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isPinCheckForPreviewContent(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinForgotView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    :cond_0
    if-eqz p1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinMessage:Landroid/widget/TextView;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 445
    goto :goto_0

    :cond_3
    move v0, v1

    .line 446
    goto :goto_1

    :cond_4
    move v2, v1

    .line 450
    goto :goto_2
.end method

.method private showSoftKeyboard(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getIMM(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 428
    :cond_0
    return-void
.end method

.method private showSoftKeyboardOnStart()V
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 433
    :cond_0
    return-void
.end method


# virtual methods
.method protected dismissDialog()V
    .locals 2

    .prologue
    .line 414
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "dismissing pin dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 417
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->pinDialogDismissed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "app in backgound. cannot dismiss - retry on next start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInvokeLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 144
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onCancel"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mActive:Z

    .line 146
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->notifyCallerPinCancelled()V

    .line 147
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string/jumbo v3, "nf_pin"

    const-string/jumbo v4, "onCreateDialog - mIsActive:%b,  restored=%b"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mActive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string/jumbo v0, "pin_progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInProgress:Z

    .line 86
    const-string/jumbo v0, "pin_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInError:Z

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    .line 91
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    const v4, 0x7f0300c4

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 96
    const v0, 0x7f10029f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mSpinner:Landroid/widget/ProgressBar;

    .line 98
    const v0, 0x7f10029c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnDone;

    invoke-direct {v5, p0, v6}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnDone;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;

    invoke-direct {v5, p0, v6}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 102
    const v0, 0x7f10029b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinMessage:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f10029e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinForgotView:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinForgotView:Landroid/widget/TextView;

    new-instance v5, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinForgotView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isPinCheckForPreviewContent(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinForgotView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_1
    const v0, 0x7f10029d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mErrorIcon:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x190

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mDialogWidthInDp:I

    .line 121
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInError:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showErrorIcon(Z)V

    .line 122
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInProgress:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showProgress(Z)V

    .line 124
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    const/4 v2, -0x2

    const v3, 0x7f0900bd

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnCancel;

    invoke-direct {v4, p0, v6}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnCancel;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mActive:Z

    .line 130
    return-object v0

    :cond_2
    move v0, v2

    .line 83
    goto/16 :goto_0

    .line 119
    :cond_3
    const/16 v0, 0x140

    goto :goto_1
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 174
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInProgress:Z

    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "doing pin validation again for restored dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->processUserInputPin(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onResume()V

    .line 152
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinForgotView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 155
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->setDialogWindowSize()V

    .line 156
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInProgress:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showSoftKeyboardOnStart()V

    .line 159
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onSavedInstanceState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string/jumbo v0, "pin_progress"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string/jumbo v0, "pin_error"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mInError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onStart()V

    .line 164
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->toDismissDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onStart - dismissOnForeground"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->dismissAndNotifyCallers()V

    .line 169
    :cond_0
    return-void
.end method

.method public retryOnPinFailure()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinMessage:Landroid/widget/TextView;

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showErrorIcon(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mPinEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->showSoftKeyboard(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/widget/EditText;)V

    .line 323
    return-void
.end method

.method public setPinVerifierCallback(Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 2

    .prologue
    .line 184
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "setPinVerifierCallback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    .line 186
    return-void
.end method
