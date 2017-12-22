.class public Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "ContactUsActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;


# static fields
.field private static final EXTRA_PARAM_AUTODIAL:Ljava/lang/String; = "AUTODIAL"

.field private static final EXTRA_SHOULD_DIPLAY_VERIFICATION_DIALOG:Ljava/lang/String; = "com.netflix.mediaclient.ui.voip.verification_dialog"

.field private static PERMISSIONS_AUDIO:[Ljava/lang/String; = null

.field private static final REQUEST_AUDIO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VoipActivity"


# instance fields
.field private mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

.field private mAutoDial:Z

.field private mCallCancelled:Z

.field private mDialButton:Landroid/view/View;

.field private mDialerOnTop:Z

.field private mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

.field private mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

.field private mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

.field private final mPerformAction:Landroid/view/View$OnClickListener;

.field private mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private mVerificationDialogDisplayed:Z

.field private mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mCallCancelled:Z

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mPerformAction:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->verifyBeforeDial(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayErrorMessageDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    return-void
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->fetchConfigAndDial()V

    return-void
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    return-object v0
.end method

.method private attachPerformAction(I)V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mPerformAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    :cond_0
    return-void
.end method

.method private checkForAutoDial(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    if-eqz p1, :cond_1

    const-string/jumbo v0, "AUTODIAL"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "AutoDial requested"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAutoDial:Z

    .line 262
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAutoDial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Start autodial, service manager exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->startDial()V

    .line 266
    :cond_0
    return-void

    .line 259
    :cond_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAutoDial:Z

    goto :goto_0
.end method

.method private checkForLogData(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 270
    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 276
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 278
    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Source found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    .line 283
    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "From found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_3
    const-string/jumbo v0, "entry"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    const-string/jumbo v0, "entry"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 287
    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entry point found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkForLogData(Landroid/content/Intent;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkForAutoDial(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method private clearWindowFlags()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 155
    return-void
.end method

.method private createEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Entry field is known, use it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 211
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Return to help page from dial or from links"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createFrom()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "From field is known, use it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFrom:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    .line 235
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "From field is not known, use entry point"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-ne v0, v1, :cond_1

    .line 226
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Use entry point login"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    goto :goto_0

    .line 228
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->nonMemberLanding:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-ne v0, v1, :cond_2

    .line 229
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Use entry point nml"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->nml:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    goto :goto_0

    .line 234
    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Entry point is not know, return null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 836
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createStartIntentWithAutoDial(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 840
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 841
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 842
    const-string/jumbo v1, "AUTODIAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 843
    return-object v0
.end method

.method private displayConfirmationDialog()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    .line 662
    new-instance v4, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    .line 672
    new-instance v6, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$5;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$5;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    .line 681
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const v2, 0x7f0900ce

    .line 683
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900cd

    .line 684
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0900cc

    .line 686
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 689
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v2, v0, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 691
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mErrorDialogId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 692
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mErrorDialogId:Ljava/lang/String;

    .line 695
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 696
    return-void
.end method

.method private displayErrorMessageDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 581
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 582
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 583
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 584
    return-void
.end method

.method private doStartDial()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 617
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->dial:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v3, v1, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is already in progress, what to start?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_0
    return-void

    .line 622
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "startDial:: Start call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Failed to dial"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    const/4 v0, -0x1

    invoke-virtual {p0, v3, v3, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private fetchConfigAndDial()V
    .locals 2

    .prologue
    .line 546
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "fetching voip config before dialing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PermissionUtils;->shouldRequestPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Record audio permission are not granted. Requested them."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->requestAudioPermissions()V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Record audio permission has already been granted. Start dialing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-nez v0, :cond_2

    .line 556
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToDialerPage()V

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mCallCancelled:Z

    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$3;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->fetchVoipConfigData(Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)V

    goto :goto_0

    .line 575
    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "fetchConfigAndDial:: Already in dialer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFlags()I
    .locals 1

    .prologue
    .line 158
    const/high16 v0, 0x480000

    return v0
.end method

.method private goToDialerPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 458
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setWindowFlags()V

    .line 460
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Phone, lock on portrait for dial screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setRequestedOrientation(I)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 466
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    .line 467
    return-void
.end method

.method private goToLandingPage()V
    .locals 2

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->clearWindowFlags()V

    .line 447
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Phone, release lock on portrait for dial screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setRequestedOrientation(I)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    .line 454
    return-void
.end method

.method private init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 338
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    .line 341
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    .line 342
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->initUI(Z)V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->addOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)V

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->reportEvent()V

    .line 348
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    if-eqz v0, :cond_1

    .line 349
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Verification dialog was previosly displayed, show it again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayConfirmationDialog()V

    .line 352
    :cond_1
    return-void
.end method

.method private initUI(Z)V
    .locals 3

    .prologue
    const v2, 0x7f100168

    const/4 v1, 0x0

    .line 361
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setContentView(I)V

    .line 363
    const v0, 0x7f100136

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->attachPerformAction(I)V

    .line 364
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->attachPerformAction(I)V

    .line 365
    const v0, 0x7f100169

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->attachPerformAction(I)V

    .line 366
    const v0, 0x7f10016a

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->attachPerformAction(I)V

    .line 367
    const v0, 0x7f10016b

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->attachPerformAction(I)V

    .line 368
    const v0, 0x7f10016c

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->attachPerformAction(I)V

    .line 369
    const v0, 0x7f10016d

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->attachPerformAction(I)V

    .line 371
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 372
    const v0, 0x7f100137

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mFlipper:Landroid/widget/ViewFlipper;

    .line 373
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    .line 374
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    .line 375
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    .line 377
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->update()V

    .line 388
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->update(Z)V

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->initUi()V

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is in progress, move to dialer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToDialerPage()V

    .line 397
    :goto_2
    return-void

    .line 383
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v2, "VOIP is disabled, do not show dial button on landing page!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 388
    goto :goto_1

    .line 395
    :cond_3
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is not in progress, leave on landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initVoipEngine(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->initVoipEngine(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->addOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)V

    .line 644
    :cond_1
    return-void
.end method

.method private reportEvent()V
    .locals 3

    .prologue
    .line 192
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Back to ContactUsActivity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    .line 194
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Dialer visible, report back to "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createFrom()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportBackToDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V

    .line 201
    :goto_1
    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0

    .line 198
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Help section visible, report new help request session started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V

    goto :goto_1
.end method

.method private requestAudioPermissions()V
    .locals 3

    .prologue
    .line 811
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Displaying audio permission rationale to provide additional context."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->getFab()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006a

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$6;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    .line 821
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setWindowFlags()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 151
    return-void
.end method

.method private shouldDisplayCallConfirmationDialog()Z
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowConfirmationDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 653
    :goto_0
    return v0

    .line 656
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyBeforeDial(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mCallCancelled:Z

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mCallCancelled:Z

    .line 614
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Phone, force portrait for dial screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setRequestedOrientation(I)V

    .line 598
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->initVoipEngine(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->recordAudioToSdcard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PermissionUtils;->shouldRequestPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 608
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->doStartDial()V

    goto :goto_0

    .line 610
    :cond_4
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Error while creating VoIP engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayErrorMessageDialog(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    goto :goto_0
.end method


# virtual methods
.method public callConnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->callConnected()V

    goto :goto_0
.end method

.method public callDisconnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    .line 435
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callDisconnected:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    .line 440
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->callEnded()V

    goto :goto_0

    .line 438
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callDisconnected:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    .line 495
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callEnded:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    goto :goto_0

    .line 498
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callEnded:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    .line 510
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callFailed:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    .line 515
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->callEnded()V

    goto :goto_0

    .line 513
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "callFailed:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public callRinging(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->callRinging()V

    goto :goto_0
.end method

.method public cancelCall()V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mCallCancelled:Z

    .line 755
    return-void
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V

    return-object v0
.end method

.method public engineStatusChanged(Z)V
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 746
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->contactUs:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    return-object v0
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public networkFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_1

    .line 478
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "networkFailed:: Back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->goToLandingPage()V

    .line 483
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->callEnded()V

    goto :goto_0

    .line 481
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "networkFailed:: Already back to landing page contact us"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkIntent(Landroid/content/Intent;)V

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    invoke-direct {v0, p0, p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;-><init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->setVolumeControlStream(I)V

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string/jumbo v0, "com.netflix.mediaclient.ui.voip.verification_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    .line 132
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->destroy()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->removeOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)Z

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isCallInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->destroyVoipEngine()V

    .line 313
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVoip:Lcom/netflix/mediaclient/servicemgr/IVoip;

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mAudioObserver:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 317
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->checkIntent(Landroid/content/Intent;)V

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->reportEvent()V

    .line 246
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 778
    if-nez p1, :cond_3

    .line 780
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Received response for Audio permission request."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    .line 783
    const-string/jumbo v4, "VoipActivity"

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    :cond_0
    array-length v1, p3

    :goto_1
    if-ge v0, v1, :cond_1

    aget v2, p3, v0

    .line 786
    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 789
    :cond_1
    const/4 v0, 0x2

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/PermissionUtils;->verifyPermissions([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Audio permission has now been granted. Go to dialer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->fetchConfigAndDial()V

    .line 801
    :goto_2
    return-void

    .line 794
    :cond_2
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Audio permission was NOT granted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->getFab()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090069

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_2

    .line 799
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2
.end method

.method protected declared-synchronized onResume()V
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayConfirmationDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Saving dialog state..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v0, "com.netflix.mediaclient.ui.voip.verification_dialog"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mVerificationDialogDisplayed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStart()V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->reportEvent()V

    .line 167
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStop()V

    .line 172
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 173
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->back:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 182
    :goto_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v1, :cond_1

    .line 183
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportExitFromDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    .line 188
    :goto_1
    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->home:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    goto :goto_0

    .line 186
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v2, v1, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_1
.end method

.method public performAction(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Handled by landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerScreen:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Handled by dialer page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Handled by nobody!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performUpAction()V
    .locals 4

    .prologue
    .line 760
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mDialerOnTop:Z

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->up:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportExitFromDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    .line 765
    :goto_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    .line 770
    :goto_1
    return-void

    .line 763
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->up:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Running app in broken state, go for relaunch..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->finish()V

    goto :goto_1
.end method

.method protected shouldFinishOnManagerError()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method startDial()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->isSIPCallAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "startDial Failed:: a GSM call is currently ongoing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayErrorMessageDialog(Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->shouldDisplayCallConfirmationDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "User is in test cell to display confirmation dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->displayConfirmationDialog()V

    goto :goto_0

    .line 540
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Start call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->fetchConfigAndDial()V

    goto :goto_0
.end method
