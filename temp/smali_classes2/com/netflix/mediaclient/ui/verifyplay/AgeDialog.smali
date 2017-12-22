.class public Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "AgeDialog.java"


# static fields
.field private static final AGE_DIALOG_WIDTH_PHONE_DP:I = 0x140

.field private static final AGE_DIALOG_WIDTH_TABLET_DP:I = 0x190

.field private static final AGE_PROGRESS:Ljava/lang/String; = "age_progress"

.field private static final AGE_VERIFY_URL:Ljava/lang/String; = "https://www.netflix.com/verifyage"

.field private static final TAG:Ljava/lang/String; = "nf_age"


# instance fields
.field private mActive:Z

.field private mAgeMessage:Landroid/widget/TextView;

.field private mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

.field private mDialog:Landroid/support/v7/app/AlertDialog;

.field private mDialogWidthInDp:I

.field private mInProgress:Z

.field private mRestored:Z

.field private mSpinner:Landroid/widget/ProgressBar;

.field private mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->notifyCallerAgeCancelled()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->ageVerifyDone()V

    return-void
.end method

.method private ageVerifyDone()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mActive:Z

    .line 165
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->showProgress(Z)V

    .line 166
    return-void
.end method

.method protected static createAgeDialog(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "creating dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 63
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->setStyle(II)V

    .line 65
    return-object v0
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    .line 236
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "dismissing age dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mActive:Z

    .line 239
    return-void
.end method

.method private notifyCallerAgeCancelled()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 246
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "%s onAgeCancelled vault: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 247
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    aput-object v4, v2, v3

    .line 246
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    if-nez v0, :cond_1

    .line 250
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "mValut is null - cannot start playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PINCANCELLED"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 258
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v5, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    .line 263
    :cond_3
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "notifyCallerAgeCancelled PLAYER callback is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->OFFLINE_DOWNLOAD:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-interface {v0, v5, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;->onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0

    .line 270
    :cond_5
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "notifyCallerAgeCancelled OFFLINE_DOWNLOAD callback is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setDialogWindowSize()V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 226
    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mDialogWidthInDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 227
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string/jumbo v1, "nf_age"

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

.method private showProgress(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mInProgress:Z

    .line 114
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mSpinner:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mAgeMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const v0, 0x7f0900a0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 116
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->showVerifyButton(Z)V

    .line 117
    return-void

    .line 114
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 115
    :cond_2
    const v0, 0x7f0900a2

    goto :goto_1
.end method

.method private showVerifyButton(Z)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    :cond_0
    return-void

    .line 122
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 129
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onCancel"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mActive:Z

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->notifyCallerAgeCancelled()V

    .line 132
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mInProgress:Z

    .line 73
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mRestored:Z

    .line 74
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v3, "onCreateDialog - mIsActive:%b,  restored=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mActive:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mRestored:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mRestored:Z

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "age_progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mInProgress:Z

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mVault:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    .line 80
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    const v4, 0x7f030020

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 85
    const v0, 0x7f1000a3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mSpinner:Landroid/widget/ProgressBar;

    .line 86
    const v0, 0x7f1000a2

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mAgeMessage:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x190

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mDialogWidthInDp:I

    .line 89
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    const/4 v2, -0x2

    const v3, 0x7f0900bd

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnCancel;

    invoke-direct {v4, p0, v6}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnCancel;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$1;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    const/4 v2, -0x1

    const v3, 0x7f0900a1

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;

    invoke-direct {v4, p0, v6}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$1;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mActive:Z

    .line 96
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 98
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mRestored:Z

    if-nez v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->ageVerificationDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportUiModalViewImpressionEvent(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 101
    :cond_1
    return-object v0

    :cond_2
    move v0, v2

    .line 73
    goto/16 :goto_0

    .line 87
    :cond_3
    const/16 v0, 0x140

    goto :goto_1
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 156
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onManagerReady - starting age verification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->verifyAge(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onResume()V

    .line 137
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->setDialogWindowSize()V

    .line 139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onSavedInstanceState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo v0, "age_progress"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onStart()V

    .line 145
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mInProgress:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->showProgress(Z)V

    .line 147
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mRestored:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "starting age verification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$OnAgeVerifiedCallback;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->verifyAge(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public setAgeVerifierCallback(Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->mCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    .line 170
    return-void
.end method
