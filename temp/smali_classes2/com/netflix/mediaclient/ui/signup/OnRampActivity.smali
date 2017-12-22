.class public Lcom/netflix/mediaclient/ui/signup/OnRampActivity;
.super Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;
.source "OnRampActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static final BOOT_URL:Ljava/lang/String; = "https://www.netflix.com/welcome/onramp?isProfilesOnRamp=true"

.field private static final PAGE_LOAD_TIMEOUT:J

.field public static final PARAM_FIRST_LOLOMO_AFTER_ONRAMP:Ljava/lang/String; = "isFirstLolomoAfterOnRamp"

.field private static final TAG:Ljava/lang/String; = "OnRampActivity"

.field private static onRampLatch:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;


# instance fields
.field mAbortOnRamp:Ljava/lang/Runnable;

.field private mBootUrl:Ljava/lang/String;

.field mHandleError:Ljava/lang/Runnable;

.field private onLoadedBeenCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->PAGE_LOAD_TIMEOUT:J

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->onRampLatch:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$1;-><init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->mAbortOnRamp:Ljava/lang/Runnable;

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$3;-><init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->mHandleError:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->onLoadedBeenCalled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->onLoadedBeenCalled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->mBootUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->onRampLatch:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    return-object v0
.end method

.method public static getOnRampLatch()Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->onRampLatch:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    return-object v0
.end method

.method public static shouldShowOnRamp(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->isOnRampTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isPrimaryProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createJSBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$OnRampJSBridge;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$OnRampJSBridge;-><init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V

    return-object v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;-><init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V

    return-object v0
.end method

.method public getBootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->mBootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 172
    return-object p0
.end method

.method protected getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->profileGate:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method

.method public getErrorHandler()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->mHandleError:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getNextTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->mAbortOnRamp:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 192
    sget-wide v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->PAGE_LOAD_TIMEOUT:J

    return-wide v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->onramp:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onDestroy()V

    .line 163
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->clearCookies()V

    .line 164
    return-void
.end method

.method public onWebViewLoaded()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onWebViewLoaded()V

    .line 225
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 226
    return-void
.end method

.method public provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v1, 0x0

    const v2, 0x7f090156

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 150
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 152
    return-void
.end method

.method public provideTwoButtonDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const v2, 0x7f090156

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f0900bd

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 158
    return-void
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected showHelpInMenu()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    return-void
.end method
