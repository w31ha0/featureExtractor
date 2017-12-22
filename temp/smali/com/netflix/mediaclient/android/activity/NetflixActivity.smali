.class public abstract Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NetflixActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus;
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListenerProvider;
.implements Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;
.implements Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final ACTION_BAR_VISIBILITY_CHECK_DELAY_MS:J = 0x3e8L

.field public static final ACTION_CS_CALL_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

.field public static final ACTION_CS_CALL_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.ui.cs.ACTION_CALL_STARTED"

.field public static final ACTION_DISPLAY_ERROR:Ljava/lang/String; = "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

.field private static final ACTION_FINISH_ALL_ACTIVITIES:Ljava/lang/String; = "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

.field public static final CAST_PLAYER_FRAG_TAG:Ljava/lang/String; = "cast_player"

.field public static DL_REQUEST_CODE:I = 0x0

.field public static final EXPAND_CAST_PLAYER_DELAY_MS:J = 0x190L

.field public static final EXTRA_DL_PLAYABLE_ID:Ljava/lang/String; = "playableId"

.field public static final EXTRA_DL_VIDEO_TYPE:Ljava/lang/String; = "videoTYpe"

.field public static final EXTRA_ENABLE_TRANSITION_ANIMATION:Ljava/lang/String; = "com.netflix.mediaclient._TRANSITION_ANIMATION"

.field public static final EXTRA_ENTRY:Ljava/lang/String; = "entry"

.field protected static final EXTRA_EXPAND_CAST_PLAYER:Ljava/lang/String; = "expandCastPlayer"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field private static final EXTRA_IS_MDX_CONNECTING:Ljava/lang/String; = "mdx_connecting"

.field public static final EXTRA_PARAM_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final EXTRA_PARAM_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_PARAM_URL:Ljava/lang/String; = "url"

.field private static final EXTRA_SHOULD_EXPAND_CAST_PLAYER:Ljava/lang/String; = "cast_player_expanded"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final FRAG_DIALOG_TAG:Ljava/lang/String; = "frag_dialog"

.field private static final INSTANCE_STATE_SAVED_TAG:Ljava/lang/String; = "NetflixActivity_instanceState"

.field public static final PERMISSIONS_WRITE_EXTERNAL_STORAGE:I = 0x1

.field private static final PREPARE_HELPER_NO_OP:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

.field private static final PRINT_LOADING_STATUS:Z = false

.field private static final TAG:Ljava/lang/String; = "NetflixActivity"

.field private static hasShownEndpointLatch:Z

.field private static isTutorialOn:Z


# instance fields
.field private actionBarHeight:I

.field activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

.field private final autoUnregisterLocalReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final autoUnregisterReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final autokillReceiver:Landroid/content/BroadcastReceiver;

.field private castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

.field private final closeCastPlayerReceiver:Landroid/content/BroadcastReceiver;

.field currentTrackerId:Ljava/lang/String;

.field private final expandCastPlayerReceiver:Landroid/content/BroadcastReceiver;

.field protected handler:Landroid/os/Handler;

.field private hasSavedInstance:Z

.field protected final instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isVisible:Z

.field private final localBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

.field protected mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mConnectingToTarget:Z

.field protected mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field protected mErrorDialogId:Ljava/lang/String;

.field private mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

.field protected mHelpMenuItem:Landroid/view/MenuItem;

.field protected mIsTablet:Z

.field protected mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

.field private mMdxStatusUpdated:Z

.field private mNoNetworkOverlay:Landroid/widget/RelativeLayout;

.field private final mPendingServiceManagerRunnable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareHelper:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

.field private final mShownPopupMenus:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/PopupMenu;",
            ">;"
        }
    .end annotation
.end field

.field private netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

.field private final panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

.field private final printLoadingStatusRunnable:Ljava/lang/Runnable;

.field private serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private shakeDetector:Lcom/squareup/seismic/ShakeDetector;

.field private shouldExpandCastPlayer:Z

.field protected slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

.field private tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

.field private final updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

.field private final userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected visibleDialog:Landroid/app/Dialog;

.field protected final visibleDialogLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PrepareHelperNoOp;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/PrepareHelperNoOp;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->PREPARE_HELPER_NO_OP:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn:Z

    .line 1570
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasShownEndpointLatch:Z

    .line 2995
    const/4 v0, 0x3

    sput v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->DL_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    .line 203
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    .line 222
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->PREPARE_HELPER_NO_OP:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPrepareHelper:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    .line 234
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 265
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    .line 270
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    .line 297
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->EMPTY:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    .line 302
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    .line 304
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    .line 331
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    .line 1368
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    .line 1791
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$5;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autokillReceiver:Landroid/content/BroadcastReceiver;

    .line 1801
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->expandCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 1818
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$7;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->closeCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 1834
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$8;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    .line 2377
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2565
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 2621
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    .line 2842
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->localBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;)Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPrepareHelper:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist()V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/offline/TutorialHelper;)Lcom/netflix/mediaclient/ui/offline/TutorialHelper;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupDownloadButtonListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->PREPARE_HELPER_NO_OP:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerEndOfPostPlay()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->collapseSlidingPanel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleDisplayToken(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleErrorDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleCustomerSupportCallEnded()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandCastPlayer:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandCastPlayer:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addMdxReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addUserAgentUpdateReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateHelpInMenuStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addFab()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayNoNetworkOverlay()V

    return-void
.end method

.method private declared-synchronized addFab()V
    .locals 4

    .prologue
    .line 1673
    monitor-enter p0

    :try_start_0
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1729
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1677
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCustomerSupportCallInProgress()Z

    move-result v0

    .line 1678
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1682
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1673
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1690
    :cond_2
    const v0, 0x7f10018d

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    .line 1691
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    .line 1698
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCustomerSupportCallInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1699
    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Customer support call is NOT in progress for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1703
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1704
    const v1, 0x7f03003d

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1705
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    const v1, 0x7f10017a

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 1706
    if-nez v0, :cond_4

    .line 1707
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Fab is not found in root layout! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1711
    :cond_4
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1712
    const/16 v2, 0x51

    iput v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1713
    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1715
    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$4;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1727
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 1728
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private addMdxReceiver()V
    .locals 2

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Activity does not required MDX, skipping add of MDX receiver."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :goto_0
    return-void

    .line 1288
    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Listen to updated from MDX service, add"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1290
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1291
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Listen to updated from MDX service, added"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addNoNetworkOverlay()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1605
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showNoNetworkOverlayIfNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Add No network overlay to %s "

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1611
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 1616
    :cond_2
    const v0, 0x7f10018d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    .line 1617
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    .line 1624
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1625
    const v1, 0x7f0300ab

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1626
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    const v1, 0x7f100269

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    .line 1627
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 1628
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "No network overlay is not found in root layout! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1632
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1633
    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1634
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1636
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private addUserAgentUpdateReceiver()V
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1306
    return-void
.end method

.method private collapseSlidingPanel()V
    .locals 2

    .prologue
    .line 2007
    const/4 v0, 0x0

    .line 2008
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2009
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Collapsing sliding panel..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->collapsePane()Z

    move-result v0

    .line 2013
    :cond_0
    if-nez v0, :cond_1

    .line 2015
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->onPanelCollapsed()V

    .line 2019
    :cond_1
    return-void
.end method

.method private displayErrorDialogIfExist()V
    .locals 4

    .prologue
    .line 2887
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 2888
    if-eqz v0, :cond_0

    .line 2889
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    .line 2890
    if-nez v1, :cond_1

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->getCurrentError()Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    .line 2895
    if-eqz v1, :cond_0

    .line 2898
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2899
    const-string/jumbo v2, "NetflixActivity"

    const-string/jumbo v3, "Display error dialog"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    new-instance v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V

    .line 2906
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 2907
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->errorDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    .line 2909
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2910
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2911
    monitor-exit v1

    goto :goto_0

    .line 2925
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2914
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    .line 2915
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2918
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    move-result-object v0

    .line 2919
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2921
    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->activateLinkIfExist(Landroid/app/Dialog;)V

    .line 2923
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 2925
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2928
    :cond_4
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Unable to display an error dialog, data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized displayNoNetworkOverlay()V
    .locals 1

    .prologue
    .line 1593
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeNoNetworkOverlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    :goto_0
    monitor-exit p0

    return-void

    .line 1596
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addNoNetworkOverlay()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static finishAllActivities(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    .prologue
    .line 1776
    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 2988
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 2989
    if-eqz v0, :cond_0

    .line 2990
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 2992
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSlidingRightInTransition()I
    .locals 1

    .prologue
    .line 2973
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04000e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f04000c

    goto :goto_0
.end method

.method private getSlidingRightOutTransition()I
    .locals 1

    .prologue
    .line 2969
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04000f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f04000d

    goto :goto_0
.end method

.method private handleCustomerSupportCallEnded()V
    .locals 0

    .prologue
    .line 2871
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeFab()V

    .line 2872
    return-void
.end method

.method private handleDisplayToken(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 2453
    return-void
.end method

.method private handleErrorDialog()V
    .locals 2

    .prologue
    .line 2876
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    .line 2877
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Display error dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist()V

    .line 2883
    :goto_0
    return-void

    .line 2879
    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Not visible, can not display error dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasCastPlayerFrag()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomerSupportCallInProgress()Z
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-nez v0, :cond_0

    .line 1744
    const/4 v0, 0x1

    .line 1746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTutorialOn()Z
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn:Z

    return v0
.end method

.method private notifyCastPlayerEndOfPostPlay()V
    .locals 2

    .prologue
    .line 1894
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "CastPlayer end of postplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->hidePane()V

    .line 1900
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideCastPlayer()V

    .line 1901
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1910
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1911
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1912
    return-void
.end method

.method private onFromBackground()V
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showCastPlayerPostPlayOnResume()V

    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->uiComingFromBackground()V

    .line 741
    return-void
.end method

.method private overridePendingTransitionAnimation(II)V
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->isTransitionAnimationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->allowTransitionAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    .line 466
    :cond_0
    return-void
.end method

.method private postActionBarUpdate()V
    .locals 4

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2023
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2024
    return-void
.end method

.method private removeDownloadButtonListener()V
    .locals 2

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 797
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v1, :cond_0

    .line 802
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    goto :goto_0
.end method

.method private declared-synchronized removeFab()V
    .locals 2

    .prologue
    .line 1733
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_1

    .line 1734
    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Unable to remove FAB!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    :goto_0
    monitor-exit p0

    return-void

    .line 1736
    :cond_1
    :try_start_1
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Hiding FAB..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1733
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setAssistBlocked(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 519
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setAssistBlocked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 520
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    const-string/jumbo v1, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t execute setAssistBlocked method. Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setInstanceStateSaved(Z)V
    .locals 2

    .prologue
    .line 2339
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 2340
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2341
    monitor-exit v1

    .line 2342
    return-void

    .line 2341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setTutorialOn(Z)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method private setupDownloadButtonListener()V
    .locals 4

    .prologue
    .line 1341
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requiresDownloadButtonListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 1347
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDownloadButtonListener()V

    .line 1353
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v0, :cond_2

    .line 1355
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    .line 1357
    :cond_2
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    .line 1358
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 1359
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    goto :goto_0
.end method

.method private shouldDismissVisibleDialog()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 871
    :goto_0
    :pswitch_0
    return v1

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 857
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    if-nez v2, :cond_2

    .line 858
    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    move v1, v0

    .line 859
    goto :goto_0

    :cond_1
    move v0, v1

    .line 856
    goto :goto_1

    .line 862
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->$SwitchMap$com$netflix$mediaclient$android$activity$NetflixActivity$DismissingDialogConfig:[I

    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v1, v0

    .line 864
    goto :goto_0

    .line 868
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    goto :goto_0

    .line 862
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateHelpInMenuStatus()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1589
    :cond_0
    return-void
.end method


# virtual methods
.method public addDebugOverlay()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method protected allowTransitionAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 448
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method public canShowSnackBar()Z
    .locals 1

    .prologue
    .line 1150
    const/4 v0, 0x0

    return v0
.end method

.method public cleanUpInteractiveTrackers()V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getInteractiveTracker(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    move-result-object v0

    .line 1394
    if-eqz v0, :cond_0

    .line 1395
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getInteractiveTracker(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->setListener(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V

    .line 1398
    :cond_0
    return-void
.end method

.method public closeAllPopupMenus()V
    .locals 1

    .prologue
    .line 2041
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0

    .line 2044
    :cond_0
    return-void
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 1052
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x0

    return-object v0
.end method

.method protected disableShakeToReportBugs()Z
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2370
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    .line 2371
    invoke-static {}, Lcom/netflix/mediaclient/util/MdxUtils;->isMediaSessionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    const/4 v0, 0x1

    .line 2374
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2350
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    .line 2351
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2360
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    .line 2361
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayDialog(Landroid/support/v7/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 2183
    if-nez p1, :cond_0

    .line 2184
    const/4 v0, 0x0

    .line 2192
    :goto_0
    return-object v0

    .line 2188
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2189
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 2190
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    .line 2191
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 2231
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2232
    :cond_0
    const/4 v0, 0x0

    .line 2241
    :goto_0
    return-object v0

    .line 2236
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2237
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    move-result-object v0

    .line 2238
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    .line 2239
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public displayDialog(Landroid/app/Dialog;)V
    .locals 3

    .prologue
    .line 2200
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2204
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2205
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2206
    monitor-exit v1

    goto :goto_0

    .line 2220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2209
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2210
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v2, "Error dualog is displayed, do not remove it!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    monitor-exit v1

    goto :goto_0

    .line 2214
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 2215
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2217
    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2218
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 2220
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected displayErrorDialog(Ljava/lang/String;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2758
    const-string/jumbo v0, "%s ( %d )"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2760
    if-eqz p3, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2769
    :goto_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 2770
    return-void

    .line 2760
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 3

    .prologue
    .line 2773
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v1, 0x0

    const v2, 0x7f090156

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2774
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 2775
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2776
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2777
    if-eqz p3, :cond_2

    .line 2781
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 2797
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2799
    :cond_1
    return-void

    .line 2782
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2786
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0

    .line 2797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2787
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2791
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected expandCastPlayerIfVisible()V
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return-void

    .line 1872
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    .line 1878
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerShown(Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 351
    const v0, 0x7f04000b

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightOutTransition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    .line 352
    return-void
.end method

.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    return v0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    .prologue
    .line 1318
    const v0, 0x1020002

    return v0
.end method

.method public getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    .prologue
    .line 2500
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 2501
    if-eqz v0, :cond_0

    .line 2502
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 2503
    if-eqz v0, :cond_0

    .line 2504
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 2507
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    return-object v0
.end method

.method public getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 1

    .prologue
    .line 2495
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogFragment()Landroid/app/DialogFragment;
    .locals 2

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "frag_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    return-object v0
.end method

.method public getDismissingDialogConfiguration()Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    .prologue
    .line 2947
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object v0
.end method

.method protected getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-object v0
.end method

.method public getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;
    .locals 1

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    return-object v0
.end method

.method public getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPrepareHelper:Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    return-object v0
.end method

.method public getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method protected getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    return-object v0
.end method

.method public getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    return-object v0
.end method

.method public abstract getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected handleAccountDeactivated()V
    .locals 2

    .prologue
    .line 2285
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    if-nez v0, :cond_0

    .line 2286
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->create(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 2289
    :cond_0
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    if-eqz v0, :cond_1

    .line 2290
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Account deactivated, leave to LogoutActivity to complete transition..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :goto_0
    return-void

    .line 2292
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0
.end method

.method protected handleActionOnNoNetworkOverlay()V
    .locals 0

    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->recreate()V

    .line 1669
    return-void
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method protected handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 2652
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->INVALID_COUNRTY:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2653
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "User accessing Netflix in a not supported country. Show alert and kill self"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    .line 2667
    :cond_0
    :goto_0
    return-void

    .line 2656
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->INSUFFICIENT_CONTENT:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2657
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Insufficient content for this profile - cant show lolomo. Show alert and go to profile selection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 2665
    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method protected handleInvalidCurrentProfile()V
    .locals 1

    .prologue
    .line 2308
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 2310
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 2311
    return-void
.end method

.method protected handleNetworkErrorDialog()V
    .locals 0

    .prologue
    .line 2803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 2804
    return-void
.end method

.method protected handleProfileActivated()V
    .locals 0

    .prologue
    .line 2278
    return-void
.end method

.method protected handleProfileReadyToSelect()V
    .locals 0

    .prologue
    .line 2264
    return-void
.end method

.method protected handleProfileSelectionResult(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 2271
    return-void
.end method

.method protected handleProfilesListUpdated()V
    .locals 0

    .prologue
    .line 2301
    return-void
.end method

.method public handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2676
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0x7f0901c1

    const v7, 0x7f09013f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2688
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2689
    if-eqz v0, :cond_0

    .line 2690
    :goto_0
    const-string/jumbo v1, ""

    .line 2691
    sget-object v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2743
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2744
    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2745
    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    .line 2754
    :goto_1
    return-object v0

    .line 2689
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 2694
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2695
    const-string/jumbo v0, "%s ( %d )"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2697
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_1

    .line 2701
    :pswitch_1
    const-string/jumbo v0, "%s ( %d )"

    new-array v1, v6, [Ljava/lang/Object;

    const v2, 0x7f090095

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2702
    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$17;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$17;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p0, v0, v1, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_1

    .line 2714
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-object v0, v1

    .line 2715
    goto :goto_1

    .line 2724
    :pswitch_3
    const-string/jumbo v0, "%s ( %d )"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2725
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_1

    .line 2731
    :pswitch_4
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2732
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 2736
    :pswitch_5
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v2, "going to signup activity"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isSignUpEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2738
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createShowWithNewCookiesIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 2739
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    move-object v0, v1

    goto/16 :goto_1

    .line 2748
    :cond_2
    const v0, 0x7f0901ce

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2749
    const v1, 0x7f0901ce

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    .line 2691
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hasSavedInstance()Z
    .locals 1

    .prologue
    .line 1364
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasSavedInstance:Z

    return v0
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 1061
    const/4 v0, 0x1

    return v0
.end method

.method protected hideCastPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1915
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 1919
    :cond_0
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1920
    if-eqz v0, :cond_1

    .line 1921
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1922
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1923
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideRDP()Z

    .line 1925
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->setIsShowing(Z)V

    .line 1929
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->postActionBarUpdate()V

    .line 1930
    return-void
.end method

.method protected initSlidingPanel()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 561
    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasCastPlayerFrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ed

    .line 566
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 565
    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V

    .line 570
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldApplyPaddingToSlidingPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    goto :goto_0
.end method

.method protected initToolbar()V
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    .line 733
    return-void
.end method

.method public isCastPlayerShowing()Z
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isComingFromBackground()Z
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground()Z

    move-result v0

    .line 1314
    return v0
.end method

.method public isConnectingToTarget()Z
    .locals 1

    .prologue
    .line 2027
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    return v0
.end method

.method public isDialogFragmentVisible()Z
    .locals 1

    .prologue
    .line 2135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstanceStateSaved()Z
    .locals 2

    .prologue
    .line 2330
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 2331
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPanelExpanded()Z
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 2824
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    return v0
.end method

.method public mdxStatusUpdatedByMdxReceiver()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    .line 308
    return-void
.end method

.method public notifyCastPlayerEndOfPlayback()V
    .locals 2

    .prologue
    .line 1884
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "CastPlayer end of playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->hidePane()V

    .line 1890
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideCastPlayer()V

    .line 1891
    return-void
.end method

.method public notifyCastPlayerHidden()V
    .locals 2

    .prologue
    .line 1933
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "CastPlayer frag hidden"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->collapseSlidingPanel()V

    .line 1936
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideCastPlayer()V

    .line 1937
    return-void
.end method

.method public notifyCastPlayerShown(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1940
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    .line 1941
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "notifyCastPlayerShown connected=%b"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1942
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1943
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showCastPlayer()V

    .line 1944
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->postActionBarUpdate()V

    .line 1946
    if-eqz p1, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->post(Ljava/lang/Runnable;)Z

    .line 1955
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 1956
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    .line 1959
    :cond_1
    return-void
.end method

.method public notifyMdxShowDetailsRequest()V
    .locals 4

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2004
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2999
    sget v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->DL_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    .line 3000
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 3001
    const-string/jumbo v0, "playableId"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3002
    const-string/jumbo v1, "videoTYpe"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3003
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    .line 3004
    if-eqz v2, :cond_0

    .line 3005
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2, v0, v1, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 3009
    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->handleBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isPaneVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 939
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    goto :goto_0

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->collapsePane()Z

    goto :goto_0

    .line 954
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->backButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 959
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 382
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    .line 383
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->getDefaultActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    .line 384
    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasSavedInstance:Z

    .line 390
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldShowKidsBackground()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f0f0110

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 396
    :cond_0
    :goto_1
    if-eqz p1, :cond_7

    const-string/jumbo v0, "cast_player_expanded"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandCastPlayer:Z

    .line 397
    if-eqz p1, :cond_1

    const-string/jumbo v0, "mdx_connecting"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    .line 403
    const-string/jumbo v0, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->expandCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_EXPAND_CAST_PLAYER"

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->closeCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_CLOSE_CAST_PLAYER"

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    const-string/jumbo v2, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->localBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 412
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLastKnownLocale()V

    .line 414
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupServiceManager()V

    .line 416
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    .line 419
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 420
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setAssistBlocked(Landroid/view/View;Z)V

    .line 422
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->shouldBeLockedInPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 427
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_4

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 435
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightInTransition()I

    move-result v0

    const v1, 0x7f04000a

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    .line 436
    return-void

    :cond_5
    move v0, v2

    .line 384
    goto/16 :goto_0

    .line 392
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getBackgroundColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 396
    goto/16 :goto_2
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 988
    if-eqz p2, :cond_0

    .line 989
    new-instance v0, Lcom/netflix/mediaclient/android/debug/DebugMenuItems;

    const-string/jumbo v1, "NetflixActivity"

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/android/debug/DebugMenuItems;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 990
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/debug/DebugMenuItems;->addItems(Landroid/view/Menu;)V

    .line 993
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showHelpInMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 994
    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 997
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 998
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 999
    if-eqz v1, :cond_1

    .line 1000
    const-string/jumbo v2, "source"

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1005
    const-string/jumbo v1, "entry"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1009
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1013
    :cond_3
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 969
    .line 970
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    const-string/jumbo v0, "Netflix I/O Party"

    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 973
    :cond_0
    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 978
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->releaseCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 891
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 895
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 898
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->cleanUpInteractiveTrackers()V

    .line 900
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->release()V

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 906
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 908
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 912
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->destroyAll()V

    .line 913
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 495
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEVICE_WITH_MENU_BUTTON_BUG:Z

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEVICE_WITH_MENU_BUTTON_BUG:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->openOptionsMenu()V

    .line 505
    const/4 v0, 0x1

    .line 507
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2475
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldSetIntentOnNewIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setIntent(Landroid/content/Intent;)V

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 482
    return-void
.end method

.method public onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 4

    .prologue
    .line 2839
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPlayVerified vault: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOfflinePlayableRequested(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 1

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3019
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->onOfflinePlayableRequested(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    .line 3021
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1028
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->handleHomeButtonSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const/4 v0, 0x1

    .line 1033
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 778
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 779
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    .line 780
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->activityPaused()V

    .line 781
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->releaseCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 782
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    .line 783
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 784
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->startActivityTransitionTimer()V

    .line 786
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 789
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDownloadButtonListener()V

    .line 790
    return-void
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 4

    .prologue
    .line 2832
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPlayVerified vault: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 679
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 770
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->onResumeFragments()V

    .line 774
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 683
    packed-switch p1, :pswitch_data_0

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 685
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 686
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->dumpToDisk(Landroid/app/Activity;)V

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->sendDialogResponse(Ljava/lang/String;)V

    .line 1044
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 695
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 705
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    .line 707
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->activityResumed()V

    .line 708
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isComingFromBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onFromBackground()V

    .line 715
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    .line 716
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->setCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 718
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    .line 719
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->stopActivityTransitionTimer()V

    .line 722
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addFab()V

    .line 724
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayNoNetworkOverlay()V

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 728
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupDownloadButtonListener()V

    .line 729
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2318
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    .line 2319
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2320
    const-string/jumbo v1, "cast_player_expanded"

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    .line 2321
    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2320
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2322
    const-string/jumbo v0, "mdx_connecting"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isConnectingToTarget()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2324
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2327
    :cond_0
    return-void

    .line 2321
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSlidingPanelCollapsed(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2816
    return-void
.end method

.method protected onSlidingPanelExpanded(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2810
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 537
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 540
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "cast_player"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    .line 541
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initSlidingPanel()V

    .line 555
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 558
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldReportNavigationActionEndedOnStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldDismissVisibleDialog()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 823
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    .line 826
    if-eqz v0, :cond_2

    .line 830
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->errorDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 831
    iput-object v4, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    .line 838
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 843
    :cond_3
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    :try_start_3
    const-string/jumbo v2, "NetflixActivity"

    const-string/jumbo v3, "Failed to dismiss dialog!"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public performUpAction()V
    .locals 3

    .prologue
    .line 1070
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->upButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 1072
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 1077
    :goto_0
    const v0, 0x7f04000b

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightOutTransition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    .line 1078
    return-void

    .line 1075
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createShowIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autokillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 1113
    return-void
.end method

.method public registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 1129
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1130
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1131
    return-void
.end method

.method public registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1126
    return-void
.end method

.method public registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 1120
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1121
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1122
    return-void
.end method

.method public registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1117
    return-void
.end method

.method public removeDialogFrag()V
    .locals 3

    .prologue
    .line 2144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v1

    .line 2146
    if-eqz v1, :cond_1

    .line 2147
    instance-of v0, v1, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 2148
    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 2150
    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2152
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2153
    return-void
.end method

.method public removeNoNetworkOverlay()V
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 1653
    :cond_0
    return-void
.end method

.method public removeVisibleDialog()V
    .locals 2

    .prologue
    .line 2163
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2164
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 2168
    :cond_0
    monitor-exit v1

    .line 2169
    return-void

    .line 2168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2555
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 2556
    if-eqz v0, :cond_0

    .line 2557
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    .line 2561
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->endUiModelessViewSession(Ljava/lang/String;)V

    .line 2563
    :cond_0
    return-void
.end method

.method public reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2536
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    .line 2537
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2538
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    .line 2539
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2543
    invoke-interface {v1, v2, p1, v0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiModelessViewSession(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 2546
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 2519
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    .line 2520
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2521
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    .line 2525
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2527
    :cond_0
    return-void
.end method

.method public requestDownloadButtonRefresh(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v0, p1, p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 3015
    :cond_0
    return-void
.end method

.method protected requiresDownloadButtonListener()Z
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x0

    return v0
.end method

.method public runInUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1861
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V
    .locals 1

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;->run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setConnectingToTarget(Z)V
    .locals 0

    .prologue
    .line 2031
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    .line 2032
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 608
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 610
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAttachToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initToolbar()V

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addDebugOverlay()V

    .line 615
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 622
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 624
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAttachToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initToolbar()V

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addDebugOverlay()V

    .line 629
    return-void
.end method

.method public setDismissingDialogConfiguration(Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;)V
    .locals 0

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 2957
    return-void
.end method

.method public setLifeCycleListener(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 338
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 2461
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2462
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2466
    :goto_0
    return-void

    .line 2464
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    goto :goto_0
.end method

.method public setSlidingEnabled(Z)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setSlidingEnabled(Z)V

    .line 588
    :cond_0
    return-void
.end method

.method protected setupCastPlayerFrag(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f100107

    .line 360
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 367
    if-nez p1, :cond_1

    .line 368
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "creating CastPlayerControlsFrag"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 370
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    check-cast v0, Landroid/app/Fragment;

    const-string/jumbo v2, "cast_player"

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 372
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 374
    :cond_1
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "re-using CastPlayerControlsFrag"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "cast_player"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    goto :goto_0
.end method

.method public setupInteractiveTracking(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V
    .locals 3

    .prologue
    .line 1370
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    .line 1372
    const-string/jumbo v0, "InteractiveTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupInteractiveTracking -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1374
    :cond_0
    const-string/jumbo v0, "setupInteractiveTracking -- Service not ready"

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 1388
    :cond_1
    :goto_0
    return-void

    .line 1379
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasSavedInstance()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1380
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->setInteractiveTracker(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;)V

    .line 1384
    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getInteractiveTracker(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    move-result-object v0

    .line 1385
    if-eqz v0, :cond_1

    .line 1386
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->setListener(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V

    goto :goto_0
.end method

.method protected setupServiceManager()V
    .locals 3

    .prologue
    .line 527
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isComingFromBackground()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;Z)V

    .line 528
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 529
    return-void
.end method

.method public final shouldAddCastToMenu()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1252
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Activity does not required MDX."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_0
    :goto_0
    return v0

    .line 1256
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 1257
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1258
    :cond_2
    const-string/jumbo v2, "NetflixActivity"

    const-string/jumbo v3, "Service manager is %s or service manager is not ready."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1262
    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1263
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "User is not logged in, not adding MDX icon"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1270
    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v1

    .line 1271
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    :cond_5
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Checking isAnyMdxTargetAvailable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isAnyMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAttachToolbar()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldFinishOnManagerError()Z
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldReportNavigationActionEndedOnStop()Z
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSetIntentOnNewIntent()Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldShowKidsBackground()Z
    .locals 1

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z
    .locals 1

    .prologue
    .line 1578
    const/4 v0, 0x1

    return v0
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAccountInMenu()Z
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showCallInProgressFloatingActionButton()Z
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x1

    return v0
.end method

.method protected showCastPlayer()V
    .locals 4

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_1

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1967
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ed

    .line 1968
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1967
    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 1970
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->showPane()V

    .line 1972
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1973
    if-eqz v0, :cond_2

    .line 1974
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1977
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v1

    .line 1979
    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1980
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1981
    if-eqz v2, :cond_3

    .line 1983
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1984
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1985
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1986
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1990
    :cond_3
    instance-of v0, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1991
    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideRDP()Z

    .line 1992
    check-cast v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideRelatedGroup()V

    goto :goto_0
.end method

.method protected showCastPlayerPostPlayOnResume()V
    .locals 3

    .prologue
    .line 744
    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_0

    .line 748
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->getPostplayState()Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoIdsPostplay()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-lez v1, :cond_0

    .line 752
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_NEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    const-string/jumbo v2, "id"

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 755
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.RDP_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 756
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->sendShowAndDisableIntent(Landroid/content/Context;)V

    .line 762
    :cond_0
    return-void
.end method

.method public showContactUsInSlidingMenu()Z
    .locals 1

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDebugToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2977
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2982
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2984
    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/DialogFragment;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2081
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 2125
    :goto_0
    return v1

    .line 2085
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v1

    .line 2086
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-10201, Dialog fragment already visible ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") while trying to display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". There should only be one visible at time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2088
    const-string/jumbo v2, "NetflixActivity"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    move v1, v3

    .line 2091
    goto :goto_0

    .line 2098
    :cond_2
    iget-object v5, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 2099
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2100
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Instance state has been saved - skipping showing dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    goto :goto_0

    .line 2105
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 2106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v2

    .line 2107
    if-eqz v2, :cond_5

    .line 2108
    instance-of v1, v2, Landroid/app/DialogFragment;

    if-eqz v1, :cond_4

    .line 2109
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v7, "Dismissing previous dialog"

    invoke-static {v1, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    move-object v0, v2

    check-cast v0, Landroid/app/DialogFragment;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 2112
    :cond_4
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v7, "Removing previous dialog"

    invoke-static {v1, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    invoke-virtual {v6, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2115
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2117
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Showing dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "frag_dialog"

    invoke-static {p1, v1, v6, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->safeShowDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2119
    :try_start_2
    monitor-exit v5

    move v1, v3

    goto/16 :goto_0

    .line 2121
    :catch_0
    move-exception v1

    .line 2122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to show dialog, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2123
    const-string/jumbo v2, "NetflixActivity"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2125
    monitor-exit v5

    move v1, v4

    goto/16 :goto_0

    .line 2127
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public showFetchErrorsToast()V
    .locals 2

    .prologue
    .line 1207
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1209
    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->areFetchErrorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Fetch errors ENABLED"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1208
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1210
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1212
    :cond_0
    return-void

    .line 1209
    :cond_1
    const-string/jumbo v0, "Fetch errors DISABLED"

    goto :goto_0
.end method

.method protected showHelpInMenu()Z
    .locals 1

    .prologue
    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method protected showMdxInMenu()Z
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method public showMenu(Landroid/widget/PopupMenu;)Z
    .locals 1

    .prologue
    .line 2053
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2054
    :cond_0
    const/4 v0, 0x0

    .line 2064
    :goto_0
    return v0

    .line 2056
    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 2057
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 2058
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2064
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showNoNetworkOverlayIfNeeded()Z
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x0

    return v0
.end method

.method public showOfflineInMenu()Z
    .locals 1

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

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
    .line 1170
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1170
    :goto_0
    return v0

    .line 1171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startLaunchActivityIfVisible()V
    .locals 2

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-nez v0, :cond_0

    .line 1753
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Activity is visible, starting launch activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const-string/jumbo v0, "startLaunchActivityIfVisible()"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 1755
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1754
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 1760
    :goto_0
    return-void

    .line 1758
    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Activity is not visible, skipping launch of new activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTargetSelectionDialog()V
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1299
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    .line 1302
    :cond_0
    return-void
.end method

.method public updateVisibleDialog(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 2248
    if-nez p1, :cond_0

    .line 2258
    :goto_0
    return-void

    .line 2252
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2253
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2254
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2256
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 2257
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wasMdxStatusUpdatedByMdxReceiver()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    .line 312
    return v0

    .line 314
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    throw v0
.end method
