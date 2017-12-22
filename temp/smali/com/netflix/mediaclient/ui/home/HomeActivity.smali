.class public Lcom/netflix/mediaclient/ui/home/HomeActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecyclerProvider;
.implements Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# static fields
.field private static final ACTIVITY_RESUME_TIMEOUT_MS:J = 0x1b77400L

.field private static final DELAY_BEFORE_NOTIFICATIONS_READ:J = 0xbb8L

.field private static final EXTRA_BACK_STACK_INTENTS:Ljava/lang/String; = "extra_back_stack_intents"

.field private static final EXTRA_GENRE_ID:Ljava/lang/String; = "genre_id"

.field private static final EXTRA_GENRE_PARCEL:Ljava/lang/String; = "genre_parcel"

.field private static final EXTRA_HAS_CHECKED_ONRAMP:Ljava/lang/String; = "extra_has_checked_onramp"

.field private static final EXTRA_LOMO_PARCEL:Ljava/lang/String; = "lomo_parcel"

.field private static final EXTRA_NOTIFICATION_LIST_STATUS:Ljava/lang/String; = "extra_notification_list_status"

.field public static final REFRESH_HOME_LOLOMO:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

.field public static final REQUEST_RESOLVE_ERROR:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private bWasHamburgerClicked:Z

.field private final backStackIntents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field private genreId:Ljava/lang/String;

.field private isFirstLaunch:Z

.field private lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field private mStartedTimeMs:J

.field private final mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private final managerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

.field private notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

.field private final notificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private pauseTimeMs:J

.field private readRunnable:Ljava/lang/Runnable;

.field private readRunnableHandler:Landroid/os/Handler;

.field private final refreshHomeReceiver:Landroid/content/BroadcastReceiver;

.field private slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

.field private viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    .line 111
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 158
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$2;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 723
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->managerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    .line 807
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->refreshHomeReceiver:Landroid/content/BroadcastReceiver;

    .line 823
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/home/HomeActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/home/HomeActivity;Z)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->clearAllStateAndRefresh(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->bWasHamburgerClicked:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/home/HomeActivity;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->bWasHamburgerClicked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->cancelMarkingNotificationsAsRead()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->leaveExperienceBreadcrumb()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notifyOthersOfTtrDone(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/home/HomeActivity;)J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mStartedTimeMs:J

    return-wide v0
.end method

.method private cancelMarkingNotificationsAsRead()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    sget-object v1, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    :cond_0
    return-void
.end method

.method private clearAllStateAndRefresh(Z)V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 517
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "Ignoring refresh call because service manager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return-void

    .line 521
    :cond_0
    if-eqz p1, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->flushCaches()Z

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->refresh()V

    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->refresh()V

    .line 526
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->refreshSocialNotificationsStateIfNeeded()V

    goto :goto_0
.end method

.method private static createLoLoMoFrag(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;
    .locals 1

    .prologue
    .line 639
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297;->shouldUseLolomoRecyclerView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 643
    :cond_0
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag_Ab7814;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag_Ab7814;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297;->shouldUseLolomoRecyclerView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_2
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    goto :goto_0
.end method

.method public static createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getHomeActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public static createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 136
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "genre_id"

    const-string/jumbo v2, "lolomo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getHomeActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 155
    const-class v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    return-object v0
.end method

.method private handleNewIntent(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "genre_id"

    .line 393
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "lomo_parcel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    const-string/jumbo v0, "genre_id"

    const-string/jumbo v1, "lolomo"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :cond_0
    const-string/jumbo v0, "expandCastPlayer"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notifyCastPlayerShown(Z)V

    .line 401
    :cond_1
    const-string/jumbo v0, "genre_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    const-string/jumbo v0, "lomo_parcel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 403
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 404
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "No new ID to show"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return v2

    .line 413
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 414
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 415
    :cond_4
    const-string/jumbo v3, "HomeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asked to show list that we\'re already showing - skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_7

    move-object v0, v1

    .line 416
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    if-eqz v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->closeDrawers()V

    .line 431
    :cond_5
    const-string/jumbo v0, "lolomo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 436
    :cond_6
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    .line 437
    const-string/jumbo v0, "genre_parcel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 438
    const-string/jumbo v0, "lomo_parcel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 440
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getCurrentViewType()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0

    .line 416
    :cond_7
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 418
    :cond_8
    const-string/jumbo v0, "lolomo"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 422
    const-string/jumbo v0, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding genre to back stack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_9
    move v2, v3

    goto :goto_2
.end method

.method private leaveExperienceBreadcrumb()V
    .locals 2

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isFirstLaunch:Z

    if-eqz v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "experience="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 795
    :cond_0
    return-void
.end method

.method private lockSlidingDrawer()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 699
    return-void
.end method

.method private notifyOthersOfTtrDone(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 882
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "notifyOthersOfTtrDone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    if-nez p1, :cond_0

    .line 890
    :goto_0
    return-void

    .line 886
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 889
    invoke-static {p1}, Lcom/netflix/mediaclient/util/LogUtils;->startAllLogging(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private onResumeAfterTimeout(Z)V
    .locals 2

    .prologue
    .line 498
    const v0, 0x7f090182

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->clearAllStateAndRefresh(Z)V

    .line 500
    return-void
.end method

.method private refreshSocialNotificationsStateIfNeeded()V
    .locals 2

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->refreshIrisNotifications(Z)V

    .line 849
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->refreshHomeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_EXPAND_HOME_CAST_PLAYER"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->canLoadNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 859
    :cond_0
    return-void
.end method

.method private setActionBarTransparent_Ab7814(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 291
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    const v1, 0x7f02026d

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 296
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 297
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 298
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getActionBarGroup()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getActionBarGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0}, Lcom/netflix/android/widgetry/utils/UiUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 302
    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    .line 206
    const v0, 0x7f1001ee

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 271
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->unlockSlidingDrawerIfPossible()V

    .line 273
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->createSlidingMenuAdapter(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setFocusable(Z)V

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    .line 281
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateActionBar()V

    .line 282
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateSlidingDrawer()V

    .line 283
    return-void
.end method

.method private shouldFlushCacheOnResumeTimeout()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 503
    .line 504
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->hasJobScheduler(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->hasPrefetchLolomoExpired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getHomeActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "genre_id"

    .line 143
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "genre_parcel"

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public static showLomo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getHomeActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "lomo_parcel"

    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method

.method private showNewFrag()V
    .locals 4

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateActionBar()V

    .line 674
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateSlidingDrawer()V

    .line 675
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setPrimaryFrag(Landroid/app/Fragment;)V

    .line 677
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1001dd

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v2

    const-string/jumbo v3, "primary"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    .line 678
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 680
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 682
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 683
    return-void
.end method

.method private toggleDrawer()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const v3, 0x800003

    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuClosed:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 695
    :goto_0
    return-void

    .line 691
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuOpened:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 692
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->bWasHamburgerClicked:Z

    goto :goto_0
.end method

.method private unlockSlidingDrawerIfPossible()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 703
    return-void
.end method

.method private updateActionBar()V
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 707
    :goto_0
    const-string/jumbo v2, "HomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating action bar, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "genre:"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    .line 709
    if-eqz v1, :cond_1

    .line 710
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 712
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    sget-object v2, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setSandwichIcon(Z)V

    .line 717
    :cond_1
    return-void

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 707
    :cond_4
    const-string/jumbo v1, "lomo:"

    goto :goto_1

    .line 712
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    goto :goto_2

    .line 715
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private updateSlidingDrawer()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 721
    return-void
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public canShowSnackBar()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 336
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setActionBarTransparent_Ab7814(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V

    .line 337
    return-object v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->managerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object v0
.end method

.method protected bridge synthetic createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    return-object v0
.end method

.method protected createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 2

    .prologue
    .line 621
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 623
    const-string/jumbo v0, "lolomo"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createLoLoMoFrag(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->supportsListId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->createGalleryFragment(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getGenreType()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->GALLERY:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    if-ne v0, v1, :cond_2

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useKidsGenresLoMo()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "1647397"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createLoLoMoFrag(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 550
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    .prologue
    .line 342
    const v0, 0x7f1001da

    return v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 669
    const v0, 0x7f030070

    return v0
.end method

.method public getCurrentViewType()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-nez v0, :cond_0

    .line 863
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 867
    :goto_0
    return-object v0

    .line 864
    :cond_0
    const-string/jumbo v0, "lolomo"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_0

    .line 867
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->browseTitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_0
.end method

.method public getGenre()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;
    .locals 1

    .prologue
    .line 611
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const v3, 0x800003

    const/4 v1, 0x1

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v2, "Sliding drawer was open, closing..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    move v0, v1

    .line 570
    :goto_0
    return v0

    .line 563
    :cond_0
    const-string/jumbo v0, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Back pressed, backStack size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->onNewIntent(Landroid/content/Intent;)V

    move v0, v1

    .line 566
    goto :goto_0

    .line 569
    :cond_1
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "No more items in back stack, finishing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->HOME_ACTIVITY_CREATED:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 186
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isFirstLaunch:Z

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mStartedTimeMs:J

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    const-string/jumbo v0, "extra_back_stack_intents"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 191
    const-string/jumbo v0, "extra_notification_list_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->handleNewIntent(Landroid/content/Intent;)Z

    .line 195
    new-instance v0, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    .line 197
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setupViews()V

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceivers()V

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->pauseTimeMs:J

    .line 203
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    .line 577
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v1

    .line 579
    :goto_0
    if-eqz v0, :cond_3

    .line 580
    invoke-static {p0, p1, v3}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->addSelectPlayTarget(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V

    .line 585
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    .line 589
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 591
    :goto_3
    invoke-static {p0, p1, v3}, Lcom/netflix/mediaclient/ui/search/SearchMenu;->addSearchNavigation(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_6

    :goto_4
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 593
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 594
    return-void

    :cond_2
    move v3, v2

    .line 577
    goto :goto_0

    .line 582
    :cond_3
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v4, "onCreateOptionsMenu got null CastPlayerHelper"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 587
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v2

    .line 589
    goto :goto_3

    :cond_6
    move v1, v2

    .line 591
    goto :goto_4
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 373
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "onNewIntent: "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->handleNewIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showNewFrag()V

    .line 378
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 531
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onPause()V

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->pauseTimeMs:J

    .line 539
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->cancelMarkingNotificationsAsRead()V

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onActivityPause(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 542
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 543
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 455
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onResume()V

    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onActivityResume(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->pauseTimeMs:J

    sub-long/2addr v0, v2

    .line 460
    const-wide/32 v2, 0x1b77400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 461
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "Activity resume timeout reached"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->shouldFlushCacheOnResumeTimeout()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->onResumeAfterTimeout(Z)V

    .line 469
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 470
    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 474
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->invalidateOptionsMenu()V

    .line 476
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 488
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 662
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 663
    const-string/jumbo v0, "extra_back_stack_intents"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 664
    const-string/jumbo v0, "extra_notification_list_status"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 665
    return-void
.end method

.method protected onSlidingPanelCollapsed(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->unlockSlidingDrawerIfPossible()V

    .line 363
    return-void
.end method

.method protected onSlidingPanelExpanded(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lockSlidingDrawer()V

    .line 368
    return-void
.end method

.method public performUpAction()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->toggleDrawer()V

    .line 617
    return-void
.end method

.method protected requiresDownloadButtonListener()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarSolidBg_Ab7814()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 317
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->showLogo()V

    .line 319
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_0

    .line 321
    const v2, 0x7f02005c

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 324
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 325
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 326
    const v2, 0x7f0f0021

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 327
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getActionBarGroup()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getActionBarGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 331
    :cond_1
    return-void
.end method

.method public setActionBarTransparent_Ab7814()V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 309
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setActionBarTransparent_Ab7814(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V

    .line 310
    return-void
.end method

.method public setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getHomeView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->buildMyDownloadTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    return-object v0
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSetIntentOnNewIntent()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method protected showNoNetworkOverlayIfNeeded()Z
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x1

    return v0
.end method

.method protected showProfileToast()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 491
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    const-string/jumbo v0, "DEBUG: Profile %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 495
    :cond_0
    return-void
.end method
