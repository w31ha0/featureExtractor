.class public Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "EndOfGrandfatheringActivity.java"


# static fields
.field private static final EXTRA_CURRENT_PAGE_INDEX:Ljava/lang/String; = "com.netflix.mediaclient.ui.ums.eog.pageIndex"

.field private static final EXTRA_CURRENT_PLAN_INDEX:Ljava/lang/String; = "com.netflix.mediaclient.ui.ums.eog.planIndex"

.field private static final TAG:Ljava/lang/String; = "eog"

.field public static final TEST_BLOCKING:Z = false

.field public static final TEST_CELL_ID:I = 0x5

.field public static final TEST_USING_DUMMY_DATA:Z


# instance fields
.field private mCurrentPageIndex:I

.field private mCurrentPlanIndex:I

.field private mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

.field private mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

.field private mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private addViewsToFlipper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 246
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getLandingPageLayoutToUse()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 248
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getPlanPageLayoutToUse()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 250
    return-void
.end method

.method public static createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEndOfGrandfatheringActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "adding clear_task flag"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    :cond_0
    return-object v0
.end method

.method private getCurrentPlanIndexOfUser()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    const/4 v0, 0x1

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getEndOfGrandfatheringActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 63
    const-class v0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    return-object v0
.end method

.method private getLandingPageLayoutToUse()I
    .locals 3

    .prologue
    const v0, 0x7f03005c

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldUseLayoutWithImages(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isSmallSizeTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "returning phone layout for cell5 tablet bcoz size too small"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "use tablet landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const v0, 0x7f030060

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f03005f

    goto :goto_0

    :cond_3
    const v0, 0x7f03005b

    goto :goto_0
.end method

.method private getPlanPageLayoutToUse()I
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isSmallSizeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const v0, 0x7f030062

    .line 238
    :goto_0
    return v0

    .line 234
    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "use tablet plan page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const v0, 0x7f030061

    goto :goto_0

    .line 238
    :cond_1
    const v0, 0x7f03005e

    goto :goto_0
.end method

.method private init(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 184
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->initUi()V

    .line 185
    return-void
.end method

.method private initUi()V
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    .line 189
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->setContentView(I)V

    .line 191
    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    .line 192
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->addViewsToFlipper()V

    .line 194
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;-><init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    .line 195
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;-><init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->initUi()V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->initUi()V

    .line 200
    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPageIndex:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldGoToPlanPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToPlanPage()V

    .line 206
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->markEogAlertAsDirty()V

    .line 209
    :cond_0
    return-void

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getCurrentPlanIndexOfUser()I

    move-result v0

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_1
.end method

.method private markEogAlertAsDirty()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isDirty:Z

    .line 313
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "eogAlert marked dirty; can\'t use same data again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public static shouldBlockUser(Z)Z
    .locals 0

    .prologue
    .line 129
    return p0
.end method


# virtual methods
.method protected backPressed()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    .line 126
    :cond_0
    return-void
.end method

.method public canProceed()Z
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 285
    :goto_0
    if-nez v0, :cond_0

    .line 286
    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "fields are null - can\'t proceed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    return v0

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity$1;-><init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V

    return-object v0
.end method

.method public getCurrentPlanIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    return v0
.end method

.method public getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 259
    :goto_0
    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mEogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public goToLandingPage()V
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPrompt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 270
    return-void
.end method

.method public goToPlanPage()V
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPlanSelector:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 265
    return-void
.end method

.method protected handleBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 105
    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "handleBackPressed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldGoToLandingPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToLandingPage()V

    .line 118
    :goto_0
    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string/jumbo v1, "eog"

    const-string/jumbo v2, "finishing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordUmsImpression()V

    .line 118
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const-string/jumbo v0, "com.netflix.mediaclient.ui.ums.eog.pageIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPageIndex:I

    .line 72
    const-string/jumbo v0, "com.netflix.mediaclient.ui.ums.eog.planIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPageIndex:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Saving eog state..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string/jumbo v1, "com.netflix.mediaclient.ui.ums.eog.pageIndex"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string/jumbo v0, "com.netflix.mediaclient.ui.ums.eog.planIndex"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getCurrentPlanIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAction(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 155
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "performAction currentChildIndex: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mLandingPage:Lcom/netflix/mediaclient/ui/ums/EogLandingPage;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by landing page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->performAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by plan page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_1
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by nobody!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performPlanSelection(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 172
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "performPlanSelection currentChildIndex: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mPlanPage:Lcom/netflix/mediaclient/ui/ums/EogPlanPage;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->performPlanSelection(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by plan page"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Handled by nobody!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performUpAction()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldGoToLandingPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToLandingPage()V

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "finishing activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordUmsImpression()V

    .line 101
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    goto :goto_0
.end method

.method public recordPlanSelection()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v2

    .line 321
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 322
    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "serviceMgr or eogAlert are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 346
    :goto_1
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->markEogAlertAsDirty()V

    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_0
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 332
    :pswitch_1
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 336
    :pswitch_2
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recordUmsImpression()V
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "serviceMgr or eogAlert are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->messageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->skipBtnImpressionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentPlanIndex(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->mCurrentPlanIndex:I

    .line 45
    return-void
.end method
