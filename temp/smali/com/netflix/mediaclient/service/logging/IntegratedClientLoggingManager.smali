.class public Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;
.super Ljava/lang/Object;
.source "IntegratedClientLoggingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/ApplicationStateListener;
.implements Lcom/netflix/mediaclient/service/logging/EventHandler;


# static fields
.field private static final CL_MAX_TIME_THAN_EVENT_CAN_STAY_IN_QUEUE_MS:I = 0xea60

.field private static final CL_MIN_NUMBER_OF_EVENTS_TO_POST:I = 0x1e

.field private static final DEFAULT_USER_SESSION_TIMEOUT_MS:I = 0x1b7740

.field public static final EXTRA_FORCE_FLUSH:Ljava/lang/String; = "FORCE_FLUSH"

.field static final REPOSITORY_DIR:Ljava/lang/String; = "iclevents"

.field private static final RETRY_TO_DELIVER_BACKUPS_IN_SEC:I = 0xf

.field private static final TAG:Ljava/lang/String; = "nf_log_cl"


# instance fields
.field private mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

.field private mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

.field private mBackupHandler:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

.field private mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

.field private mDialLogging:Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;

.field private final mEventPerSessionRndGeneratorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

.field private mExceptionLoggingCl:Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

.field private mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

.field private final mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoggingRequestFactory:Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;

.field private final mLoggingSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/LoggingSession;",
            ">;"
        }
    .end annotation
.end field

.field private mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

.field private final mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private final mPendingCachedLogPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private mPushNotificationLogging:Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;

.field private mRatingsLogging:Lcom/netflix/mediaclient/ui/rating/Ratings$CL;

.field private mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

.field private final mSequence:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mService:Lcom/netflix/mediaclient/service/NetflixService;

.field private mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

.field private mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

.field private mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

.field private final mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private final mUserSessionEnabledStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    .line 285
    new-instance v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mBackupHandler:Ljava/lang/Runnable;

    .line 1123
    new-instance v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 184
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    .line 185
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 186
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    .line 187
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingRequestFactory:Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->validateActiveSessions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->sendEvents(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->loadAndSendEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->removeSavedEvents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->sendLoggingEvents(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method private addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1234
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 1235
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    return-void
.end method

.method private checkUserSessionState()V
    .locals 6

    .prologue
    .line 531
    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Local playback is in progress, consider that user just interacted with UI. Exit."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Local playback is NOT in progress, check last user interaction"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v0

    .line 545
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getUserSessionDurationInMs()J

    move-result-wide v2

    .line 546
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->isUserSessionExist()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    const-string/jumbo v2, "nf_log_cl"

    const-string/jumbo v3, "It is more than 30 minutes and user session exist. End user session"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->timeout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V

    goto :goto_0

    .line 550
    :cond_2
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->isLogoutInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->isUserSessionExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "It is less than 30 minutes and user session does NOT exist. Start user session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->inputEvent:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    goto :goto_0
.end method

.method private createSession(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isApplicationInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "UI is in foreground when service was started, create foreground session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startForegroundSession(Landroid/content/Intent;)V

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getNumberOfActivities()I

    move-result v0

    if-lez v0, :cond_1

    .line 251
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "UI exist, but app is background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startBackgroundingSession()V

    goto :goto_0

    .line 254
    :cond_1
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "UI does not exist, app is in suspend state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startSuspendSession()V

    goto :goto_0
.end method

.method private deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 8

    .prologue
    .line 774
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 775
    :cond_0
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "No saved events found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1
    return-void

    .line 784
    :cond_2
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 785
    invoke-interface {v2}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 787
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 788
    const-string/jumbo v2, "nf_log_cl"

    const-string/jumbo v3, "We are already trying to deliver %s deliveryRequestId, skip"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    if-eqz p2, :cond_4

    .line 794
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$3;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$3;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 799
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 794
    invoke-interface {v3, v4, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 801
    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$4;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$4;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private flushEventQueueIfCriteriaIsFulfilled()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->flushIfCriteriaIsFulfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Events were send recently. We reached timeout, force send"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    return-void
.end method

.method private getUserSessionDurationInMs()J
    .locals 4

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 1100
    if-nez v0, :cond_0

    .line 1101
    const-wide/32 v0, 0x1b7740

    .line 1104
    :goto_0
    return-wide v0

    .line 1103
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApmUserSessionDurationInSeconds()I

    move-result v0

    int-to-long v0, v0

    .line 1104
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private initDataRepository()V
    .locals 3

    .prologue
    .line 267
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "ICLManager::init data repository started "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "iclevents"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 272
    new-instance v0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    .line 273
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "ICLManager::init data repository done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private isEventSuppressed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 954
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createSessionLookupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 955
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 956
    if-nez v0, :cond_1

    move v1, v2

    .line 998
    :cond_0
    :goto_0
    return v1

    .line 960
    :cond_1
    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object v4

    .line 961
    if-eqz v4, :cond_0

    .line 972
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v0

    if-gtz v0, :cond_2

    .line 973
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v2, "Event should NOT be suppressed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 977
    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v0

    if-lt v0, v6, :cond_3

    .line 978
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v2, "Event is fully suppressed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    .line 987
    if-nez v0, :cond_4

    .line 988
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 989
    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 993
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSuppressPercentagePerEvent()I

    move-result v3

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_1
    move v1, v0

    .line 998
    goto :goto_0

    :cond_5
    move v0, v2

    .line 993
    goto :goto_1
.end method

.method private isKids()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1072
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 1073
    if-nez v1, :cond_0

    .line 1074
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "getUiMode:: getUserAgent is null! isKids() = false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_0
    return v0

    .line 1078
    :cond_0
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1079
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "getUiMode:: user is NOT logged in. isKids() = false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1083
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    .line 1084
    if-nez v1, :cond_2

    .line 1085
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "getUiMode:: user is logged in, but profile is null. isKids() = false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1089
    :cond_2
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    goto :goto_0
.end method

.method private loadAndSendEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$5;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V

    .line 834
    return-void
.end method

.method private loadNotDeliveredEvents()V
    .locals 5

    .prologue
    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mBackupHandler:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mBackupHandler:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_PAUSED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_UNPAUSED"

    aput-object v2, v0, v1

    .line 198
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 199
    return-void
.end method

.method private removeSavedEvents(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/data/DataRepository;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "Failed to remove payload from repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveEvents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/data/DataRepository;->save(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 759
    :goto_0
    return-object v0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "Failed to save payload to repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEvents(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 562
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->addAllEvent(Ljava/util/List;)V

    .line 566
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    if-eqz p2, :cond_0

    .line 573
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->saveEvents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v2, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->sendLoggingEvents(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V

    .line 583
    :goto_0
    return-void

    .line 577
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->sendLoggingEvents(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "Failed to create JSON object for logging request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendLoggingEvents(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "sendLoggingEvents without callback starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingRequestFactory:Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;

    invoke-virtual {v0, v2, p1, v2}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;->createLoggingEventsRequest(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 610
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "sendLoggingEvents without callback  done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void
.end method

.method private sendLoggingEvents(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    .locals 2

    .prologue
    .line 594
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "sendLoggingEvents starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingRequestFactory:Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;->createLoggingEventsRequest(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 597
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "sendLoggingEvents done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 203
    return-void
.end method

.method private validateActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 629
    instance-of v0, p1, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 630
    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;

    .line 631
    const-string/jumbo v2, "appSession"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->getSessionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Do not check app session start event, skip"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getAllActiveSessions()Ljava/util/List;

    move-result-object v0

    .line 641
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    .line 645
    const-string/jumbo v5, "appSession"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 647
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v5

    if-nez v5, :cond_2

    .line 648
    const-string/jumbo v5, "nf_log_cl"

    const-string/jumbo v6, "Application session id was missing! Remove session key!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_1
    :goto_2
    const-string/jumbo v5, "userSession"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 655
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v5

    if-nez v5, :cond_3

    .line 656
    const-string/jumbo v5, "nf_log_cl"

    const-string/jumbo v6, "User session id is missing!! Remove session key!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_3
    move v1, v0

    .line 662
    goto :goto_1

    .line 651
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 659
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_3

    .line 664
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    .line 665
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->removeActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;)Z

    goto :goto_4

    .line 668
    :cond_5
    if-lt v2, v7, :cond_6

    if-ge v1, v7, :cond_7

    .line 669
    :cond_6
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "validate session found error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    :cond_7
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "validate session done with no errors"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method private validateActiveSessions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/Event;

    .line 618
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->validateActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    goto :goto_0

    .line 620
    :cond_0
    return-void
.end method


# virtual methods
.method addActions(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 1216
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1217
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1218
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1219
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1220
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1221
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1222
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IkoLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1223
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/OfflineLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1224
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ExceptionLoggingCl;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1225
    sget-object v0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1226
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1227
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/DialLogging;->ACTIONS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 1229
    return-object p1
.end method

.method public addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    .locals 1

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public canSendEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->isConsolidatedLoggingSessionEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->isEventSuppressed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkState()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flushEventQueueIfCriteriaIsFulfilled()V

    .line 526
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->checkUserSessionState()V

    .line 527
    return-void
.end method

.method public createUserSession(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/Log;->resetSessionID(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V

    .line 521
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->newUserSession()V

    .line 522
    return-void
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->removeListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z

    .line 262
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->unRegisterReceivers()V

    .line 263
    return-void
.end method

.method public endAllActiveSessions()V
    .locals 2

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->pauseDelivery()V

    .line 1167
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endAllActiveSessions()V

    .line 1168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endAllActiveSessions()V

    .line 1169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAllActiveSessions()V

    .line 1170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->endAllActiveSessions()V

    .line 1171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->endAllActiveSessions()V

    .line 1172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endAllActiveSessions()V

    .line 1173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endAllActiveSessions()V

    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endAllActiveSessions()V

    .line 1175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endAllActiveSessions()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->resumeDelivery(Z)V

    .line 1180
    return-void

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    const-string/jumbo v1, "Failed to report"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method flush(Z)V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method public getActionLogging()Lcom/netflix/mediaclient/servicemgr/UserActionLogging;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    return-object v0
.end method

.method getActiveSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    monitor-enter v2

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/LoggingSession;

    .line 352
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/client/LoggingSession;->getKey()Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    return-object v1
.end method

.method public getApmLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerServiceLogging()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    return-object v0
.end method

.method getNextSequence()J
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSequence:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOfflineLogging()Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    return-object v0
.end method

.method public getSignInLogging()Lcom/netflix/mediaclient/servicemgr/SignInLogging;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    return-object v0
.end method

.method public getUiViewLogging()Lcom/netflix/mediaclient/servicemgr/UIViewLogging;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    return-object v0
.end method

.method public getUserSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 3

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleConnectivityChange(Landroid/content/Context;)V

    .line 1112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Device is connected, lets see if we need to deliver cached events..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    move-result-object v0

    .line 1116
    if-nez v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_1

    .line 1117
    :cond_0
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "We found %d cached log entries, network is connected, lets try to deliver them"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    .line 1121
    :cond_1
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 704
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleIntent(Landroid/content/Intent;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by APM logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    :goto_0
    const-string/jumbo v0, "FORCE_FLUSH"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 732
    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->flushEvents(Z)V

    .line 735
    :cond_1
    return-void

    .line 706
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleIntent(Landroid/content/Intent;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 707
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by UI Action logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleIntent(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by UI View logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 711
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by Search logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 713
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by customer service logging logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 715
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by signIn logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 717
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by Iko logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 719
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by Offline logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExceptionLoggingCl:Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 721
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by ExceptionLoggingCl logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 722
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mRatingsLogging:Lcom/netflix/mediaclient/ui/rating/Ratings$CL;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 723
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by RatingsLogging logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 724
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPushNotificationLogging:Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 725
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by PushNotification logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDialLogging:Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "Handled by Dial logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    .prologue
    .line 210
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    .line 214
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    .line 215
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    .line 216
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getAndClearCachedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 220
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "Add ICL manager as listener on user input..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->addListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z

    .line 222
    const-string/jumbo v1, "nf_log_cl"

    const-string/jumbo v2, "Add ICL manager as listener on user input done."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    .line 225
    new-instance v1, Lcom/netflix/mediaclient/service/logging/SearchLogging;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/service/logging/SearchLogging;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

    .line 226
    new-instance v1, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    .line 227
    new-instance v1, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    .line 228
    new-instance v1, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    .line 229
    new-instance v1, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    .line 230
    new-instance v1, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExceptionLoggingCl:Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;

    .line 231
    new-instance v1, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mRatingsLogging:Lcom/netflix/mediaclient/ui/rating/Ratings$CL;

    .line 232
    new-instance v1, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPushNotificationLogging:Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;

    .line 233
    new-instance v1, Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDialLogging:Lcom/netflix/mediaclient/service/logging/DialLoggingImpl;

    .line 235
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->initDataRepository()V

    .line 236
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->registerReceivers()V

    .line 237
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->createSession(Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method public isConsolidatedLoggingSessionEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 881
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createSessionLookupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 883
    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 931
    :cond_0
    :goto_0
    return v1

    .line 889
    :cond_1
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v4, "CL session cached status not found, check if overide exist"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 893
    if-nez v0, :cond_2

    move v1, v2

    .line 894
    goto :goto_0

    .line 897
    :cond_2
    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v4

    if-gtz v4, :cond_3

    .line 910
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v2, "CL session is enabled without restrictions"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v4

    if-lt v4, v5, :cond_4

    .line 915
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v2, "CL session is disabled"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 923
    :cond_4
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 924
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 925
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v0

    if-lt v4, v0, :cond_5

    move v0, v1

    .line 930
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    .line 931
    goto :goto_0

    :cond_5
    move v0, v2

    .line 925
    goto :goto_1
.end method

.method newUserSession()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1006
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1007
    return-void
.end method

.method public onBackground(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 383
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "App in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startBackgroundingSession()V

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundingSession()V

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endForegroundSession()V

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startBackgroundSession()V

    .line 389
    return-void
.end method

.method public onFocusGain(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 427
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "App ui gains focus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 429
    return-void
.end method

.method public onFocusLost(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 421
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "App ui lost focus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startUnfocusedSession()V

    .line 423
    return-void
.end method

.method public onForeground(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 361
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "App in foreground"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 364
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startResumingSession()V

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endResumingSession()V

    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundSession()V

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endSuspendSession()V

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startForegroundSession(Landroid/content/Intent;)V

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 376
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    goto :goto_0
.end method

.method public onUiGone(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 412
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "App ui gone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundingSession()V

    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startSuspendSession()V

    .line 417
    return-void
.end method

.method public onUiStarted(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 4

    .prologue
    .line 397
    const-string/jumbo v0, "nf_log_cl"

    const-string/jumbo v1, "App ui started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 400
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    goto :goto_0
.end method

.method pauseDelivery()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->pauseDelivery()V

    .line 838
    return-void
.end method

.method public post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getActiveSessions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->addAllActiveSession(Ljava/util/List;)V

    .line 472
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getNextSequence()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setSequence(J)V

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUptime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setUptime(J)V

    .line 474
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->isKids()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setKids(Z)V

    .line 475
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getModalView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->getCurrentUiView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 480
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public declared-synchronized recreateSessions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->pauseDelivery()V

    .line 1196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->logoutCompleted()V

    .line 1197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startApplicationSession(Z)V

    .line 1198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession()V

    .line 1199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleConnectivityChange(Landroid/content/Context;)V

    .line 1200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->resumeDelivery(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    monitor-exit p0

    return-void

    .line 1195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    .locals 1

    .prologue
    .line 450
    if-nez p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method resumeDelivery(Z)V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->resumeDelivery(Z)V

    .line 842
    return-void
.end method

.method public setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/Log;->setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V

    .line 1206
    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 697
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExceptionLoggingCl:Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mRatingsLogging:Lcom/netflix/mediaclient/ui/rating/Ratings$CL;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 699
    return-void
.end method

.method startDelivery()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->startDelivery()V

    .line 849
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->loadNotDeliveredEvents()V

    .line 850
    return-void
.end method
