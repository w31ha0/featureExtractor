.class public Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "ProfileSelectionActivity.java"


# static fields
.field public static final ALPHA_ANIMATION_DURATION_MS:I = 0x190

.field private static final ALPHA_CONTENT_FADE:F = 0.2f

.field private static final EXTRA_APP_WAS_RESTARTED:Ljava/lang/String; = "app_was_restarted"

.field private static final EXTRA_DESTINATION:Ljava/lang/String; = "extra_destination"

.field private static final EXTRA_KIDS_DOOR_NAME:Ljava/lang/String; = "extra_kids_door_name"

.field private static final EXTRA_PROFILE_ID:Ljava/lang/String; = "ProfileNum"

.field private static final EXTRA_START_KIDS_BOOL:Ljava/lang/String; = "extra_start_kids_bool"

.field private static final EXTRA_STOP_KIDS_BOOL:Ljava/lang/String; = "extra_stop_kids_bool"

.field private static final HANG_ON_KIDS_LOADING_SCREEN:Z = false

.field private static final KEY_IS_LOADING:Ljava/lang/String; = "is_loading"

.field private static final KEY_IS_PROFILE_EDIT_MODE:Ljava/lang/String; = "is_profile_edit_mode"

.field private static final KEY_IS_SHOWING_KIDS_LOADING_SCREEN:Ljava/lang/String; = "is_showing_kids_loading_screen"

.field private static final SELECT_PROFILE_ACTION:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.SELECT_PROFILE"

.field private static final TAG:Ljava/lang/String; = "ProfileSelectionActivity"

.field private static final maxNumGridColumns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

.field private canShowKidsLoadingScreen:Z

.field private columnWidth:I

.field private content:Landroid/view/View;

.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

.field private isLoading:Z

.field private isProfileEditMode:Z

.field private isShowingKidsLoadingScreen:Z

.field private kidsLoadingScreen:Landroid/view/View;

.field private leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private mAppWasRestarted:Z

.field private mDestination:Ljava/lang/String;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private numCols:I

.field private final onAvatarClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private shouldStartKids:Z

.field private topTextHeader:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 82
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 89
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 657
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 664
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->onAvatarClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adjustGridViewMargins()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setupGridViewColumns()V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleManagerReady(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    return-object v0
.end method

.method private adjustGridViewMargins()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 365
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 366
    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->columnWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    mul-int/2addr v1, v2

    .line 367
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 369
    const-string/jumbo v3, "ProfileSelectionActivity"

    const-string/jumbo v4, "screen: %d, grid: %d, padding: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v2, v6, v6, v6}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setPadding(IIII)V

    .line 378
    :goto_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showPromoViewIfNeeded(I)V

    .line 379
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v6, v6, v2, v6}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public static createStartIntentForAppRestart(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 120
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "app_was_restarted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    return-object v0
.end method

.method public static createStartIntentSingleTop(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 130
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntentForAppRestart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method public static createSwitchFromDeepLinking(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_destination"

    .line 146
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static createSwitchFromKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 150
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_stop_kids_bool"

    const/4 v2, 0x1

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_kids_door_name"

    .line 152
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public static createSwitchToKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 156
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_start_kids_bool"

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_kids_door_name"

    .line 158
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method private findViewAndAnimate(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 561
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    .line 562
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 563
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 565
    return-void

    .line 561
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private handleManagerReady(Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    .line 293
    if-nez v0, :cond_1

    .line 294
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "No profiles found for user!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No profiles found for user!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/Throwable;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v4

    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->canShowKidsLoadingScreen:Z

    .line 308
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    .line 310
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-direct {v0, p0, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setupGridViewColumns()V

    .line 314
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showContentView()V

    .line 316
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    if-eqz v0, :cond_2

    .line 317
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v4, "We\'re in loading state - showing loading view"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->canShowKidsLoadingScreen:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isShowingKidsLoadingScreen:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showLoadingViews(ZZ)V

    .line 325
    :cond_2
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v4, "shouldAutoSelectProfile: %s, shouldStartKids: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->shouldStartKids:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->shouldStartKids:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    .line 330
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 332
    add-int/lit8 v3, v4, 0x1

    :goto_3
    move v4, v3

    move-object v3, v0

    .line 334
    goto :goto_2

    :cond_3
    move v0, v2

    .line 319
    goto :goto_1

    .line 336
    :cond_4
    if-ne v4, v1, :cond_5

    .line 337
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v4, "Found one Kids profile - switching to: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 338
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startChangeProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    goto/16 :goto_0

    .line 341
    :cond_5
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v3, "Num Kids profiles found: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_6
    move-object v0, v3

    move v3, v4

    goto :goto_3
.end method

.method private logKidsEntryExit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_start_kids_bool"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_stop_kids_bool"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 777
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_kids_door_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 779
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 782
    :cond_1
    return-void
.end method

.method private refreshEditProfileModeViews()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 539
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->topTextHeader:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    move v0, v1

    .line 548
    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 549
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 550
    if-nez v3, :cond_4

    .line 551
    const-string/jumbo v2, "ProfileSelectionActivity"

    const-string/jumbo v3, "Something wierd happened: null grid child view!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 537
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    goto :goto_0

    .line 545
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 552
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 553
    const v2, 0x7f100339

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v2, :cond_5

    move v2, v1

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 554
    const v2, 0x7f1000a7

    invoke-direct {p0, v3, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewAndAnimate(Landroid/view/View;I)V

    goto :goto_3

    .line 553
    :cond_5
    const/16 v2, 0x8

    goto :goto_4

    .line 557
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->invalidateOptionsMenu()V

    .line 558
    return-void
.end method

.method private registerProfileChangeReceiver()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method private reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 792
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 793
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 794
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 795
    return-void
.end method

.method private setupGridViewColumns()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    .line 347
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 348
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 349
    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->maxNumGridColumns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->getCount()I

    move-result v0

    .line 353
    if-le v0, v4, :cond_0

    add-int/lit8 v0, v0, -0x2

    .line 354
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    .line 356
    const-string/jumbo v2, "ProfileSelectionActivity"

    const-string/jumbo v3, "max cols: %d, limited cols: %d, num cols: %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->numCols:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setNumColumns(I)V

    .line 359
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adjustGridViewMargins()V

    .line 360
    return-void
.end method

.method private showContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 403
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Showing content view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 417
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 419
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 421
    :cond_1
    return-void

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private showLoadingViews(ZZ)V
    .locals 5

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    .line 424
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Showing loading view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setEnabled(Z)V

    .line 429
    if-eqz p1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 435
    :goto_0
    if-eqz p2, :cond_0

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 437
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 439
    :cond_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showPromoViewIfNeeded(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 388
    const v0, 0x7f100338

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "user_profile_was_selected"

    invoke-static {p0, v1, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 392
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 393
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->columnWidth:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 398
    add-int v2, p1, v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0140

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private updateAppWasRestartedFlag(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 808
    if-eqz p1, :cond_0

    .line 809
    const-string/jumbo v0, "app_was_restarted"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    .line 810
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Got new value for \'app was restorted\' flag: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 812
    :cond_0
    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 233
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->PROFILE_GATE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 234
    return-void
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 654
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 634
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v1, :cond_0

    .line 635
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    .line 636
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    .line 637
    const/4 v0, 0x1

    .line 639
    :cond_0
    return v0
.end method

.method protected handleNetworkErrorDialog()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 489
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "relaunch onhandleProfileSelectionResult failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 491
    const-string/jumbo v0, "handleNetwotkErrorDialog()"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 497
    :goto_0
    return-void

    .line 494
    :cond_0
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "finish onhandleProfileSelectionResult failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finishAllActivities(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected handleProfileActivated()V
    .locals 5

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 451
    const-string/jumbo v2, "ProfileSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restarting app, time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleProfileActivated() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 454
    return-void
.end method

.method protected handleProfileReadyToSelect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "handleProfileReadyToSelect()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    .line 445
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleManagerReady(Z)V

    .line 446
    return-void
.end method

.method protected handleProfileSelectionResult(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 459
    invoke-static {p1}, Lcom/netflix/mediaclient/StatusCode;->getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 460
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 461
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Profile selection was successful.  Parent class should finish this activity in a moment..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 466
    const-string/jumbo v0, "user_profile_was_selected"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 481
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 475
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v1, p2, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 476
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDisplayMessage(Z)V

    .line 478
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-static {p0, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 479
    invoke-direct {p0, v1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->reportError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    goto :goto_0
.end method

.method protected handleProfilesListUpdated()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->notifyDataSetChanged()V

    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->adapter:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 700
    return-void
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->profiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    if-nez p1, :cond_0

    .line 191
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->PROFILE_GATE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->columnWidth:I

    .line 198
    const v0, 0x7f0300e3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setContentView(I)V

    .line 199
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f100334

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 201
    const v0, 0x7f100335

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->content:Landroid/view/View;

    .line 202
    const v0, 0x7f100336

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->topTextHeader:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f100337

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->onAvatarClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 211
    const v0, 0x7f1001f6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_destination"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mDestination:Ljava/lang/String;

    .line 214
    if-nez p1, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->logKidsEntryExit()V

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_start_kids_bool"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->shouldStartKids:Z

    .line 226
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->registerProfileChangeReceiver()V

    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->updateAppWasRestartedFlag(Landroid/content/Intent;)V

    .line 228
    return-void

    .line 219
    :cond_1
    const-string/jumbo v0, "is_loading"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    .line 220
    const-string/jumbo v0, "is_profile_edit_mode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    .line 221
    const-string/jumbo v0, "is_showing_kids_loading_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isShowingKidsLoadingScreen:Z

    .line 222
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Recovered state, isLoading: %b, isShowingKidsLoadingScreen: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isShowingKidsLoadingScreen:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 517
    const v0, 0x7f10000d

    const v1, 0x7f090245

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 518
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 519
    const v1, 0x7f0201a3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 520
    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$4;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    const-string/jumbo v2, "ProfileSelectionActivity"

    const-string/jumbo v3, "Saving loading state: %b"

    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    const-string/jumbo v2, "is_loading"

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string/jumbo v2, "is_showing_kids_loading_screen"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->kidsLoadingScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string/jumbo v0, "is_profile_edit_mode"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    return-void

    :cond_0
    move v0, v1

    .line 257
    goto :goto_0
.end method

.method public performUpAction()V
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    .line 628
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->refreshEditProfileModeViews()V

    .line 630
    :cond_0
    return-void
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isProfileEditMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startChangeProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    :cond_0
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Manager is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_MNGR_NOT_READY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 573
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 617
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 587
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 592
    :cond_2
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mDestination:Ljava/lang/String;

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 593
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Selected profile is the same as the current one - skipping profile change..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 598
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 599
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 600
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finish()V

    goto :goto_0

    .line 604
    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 605
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Network is NOT connected, prevent action and report to user!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    .line 608
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 609
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto :goto_0

    .line 613
    :cond_4
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->isLoading:Z

    .line 614
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->canShowKidsLoadingScreen:Z

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->showLoadingViews(ZZ)V

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->selectProfile(Ljava/lang/String;)V

    .line 616
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->mAppWasRestarted:Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 614
    goto :goto_1
.end method
