.class public final Lcom/netflix/mediaclient/service/logging/LoggingAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "LoggingAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;
.implements Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;
.implements Lcom/netflix/mediaclient/servicemgr/IClientLogging;


# static fields
.field private static final EVENT_POST_TIMEOUT_MS:J = 0xea60L

.field static final ICL_REPOSITORY_DIR:Ljava/lang/String; = "iclevents"

.field static final LOGBLOB_REPOSITORY_DIR:Ljava/lang/String; = "logblobs"

.field private static final LOG_EVENT_DELIVERY_TIMEOUT_IN_SEC:I = 0x1e

.field private static final NEXT_DELIVERY_ATTEMPT_TIMEOUT_IN_MS:I = 0xea60

.field static final PDSEVENT_REPOSITORY_DIR:Ljava/lang/String; = "pdsevents"

.field static final PT_REPOSITORY_DIR:Ljava/lang/String; = "ptevents"

.field private static final TAG:Ljava/lang/String; = "nf_log"

.field public static final gCritSessionId:J

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private connectionClassManagerListener:Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;

.field private mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

.field private mBreadcrumbLogging:Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

.field private mClientStatsLogHandler:Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;

.field private final mContext:Landroid/content/Context;

.field private mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field private mEventPostCheck:Ljava/lang/Runnable;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

.field private mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

.field private final mLoggerReceiver:Landroid/content/BroadcastReceiver;

.field private mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

.field private mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

.field private mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

.field private mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

.field private mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartedTime:J

.field private final mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private networkDispatcherListener:Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->gCritSessionId:J

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStartedTime:J

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 373
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mEventPostCheck:Ljava/lang/Runnable;

    .line 406
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent$4;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLoggerReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mContext:Landroid/content/Context;

    .line 161
    new-instance v0, Lcom/netflix/mediaclient/service/logging/breadcrumb/CrittercismBreadcrumbLoggingImpl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/breadcrumb/CrittercismBreadcrumbLoggingImpl;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mBreadcrumbLogging:Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    .line 162
    new-instance v0, Lcom/netflix/mediaclient/service/logging/error/CrittercismErrorLoggingImpl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/error/CrittercismErrorLoggingImpl;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ClientLoggingAgentWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerThread:Landroid/os/HandlerThread;

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerHandler:Landroid/os/Handler;

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgentHelper;->createPdsLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    .line 170
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent:: done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->startDelivery()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/LoggingAgent;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->handleInternal(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 441
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 442
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    return-void
.end method

.method private addConfigurationChangeListener()V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 234
    instance-of v1, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v1, :cond_0

    .line 235
    check-cast v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->addConfigAgentListener(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V

    .line 237
    :cond_0
    return-void
.end method

.method private handleInternal(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 651
    const-string/jumbo v1, "flush"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 653
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 654
    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Pause CL and PT events!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->pauseDelivery()V

    .line 667
    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 657
    :cond_1
    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 658
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Resume CL and PT events!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->resumeDelivery(Z)V

    goto :goto_0

    .line 660
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_RESUME_ALL_EVENTS_DELIVERY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Start deliverying all events!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->startDelivery()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 420
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 423
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->addActions(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 425
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOG_RESUME_ALL_EVENTS_DELIVERY"

    aput-object v3, v1, v2

    .line 426
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addActionsToFilter(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    .line 428
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 429
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLoggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Failed to register "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startDelivery()V
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "LoggingAgent::startDelivery: log delivery was already started!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    monitor-exit v1

    .line 501
    :goto_0
    return-void

    .line 493
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "LoggingAgent::startDelivery: starting log delivery!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->startDelivery()V

    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->startDelivery()V

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;->startDelivery()V

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;->startDelivery()V

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public changed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->recreateSessions(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method clearFailureCounter()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 461
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PNA:: destroy and unregister receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLoggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->networkDispatcherListener:Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;

    invoke-static {v0}, Lcom/android/volley/NetworkDispatcher;->removeNetworkDispatcherListener(Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;)V

    .line 250
    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->connectionClassManagerListener:Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->remove(Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;)V

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->destroy()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->destroy()V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/Log;->setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V

    .line 262
    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;->destroy()V

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->destroy()V

    .line 273
    :cond_4
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 274
    return-void
.end method

.method protected doInit()V
    .locals 7

    .prologue
    const-wide/32 v2, 0xea60

    .line 180
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v5

    invoke-direct {v0, v1, p0, v4, v5}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    .line 190
    new-instance v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-direct {v0, v1, p0, v4}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    .line 191
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgentHelper;->createLogblobLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    .line 193
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mClientStatsLogHandler:Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;

    .line 195
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init create executor thread start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 197
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init create executor thread done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mEventPostCheck:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->init()V

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->init(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 216
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->registerReceiver()V

    .line 217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-wide v2, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->gCritSessionId:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->onConfigurationChanged(Landroid/content/Context;JLcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V

    .line 218
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addConfigurationChangeListener()V

    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mClientStatsLogHandler:Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->init(Ljava/util/concurrent/ScheduledExecutorService;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V

    .line 225
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 226
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public flushLoggingEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 622
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Flush events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flush(Z)V

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    .line 626
    return-void
.end method

.method public getAccountOwnerToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveLoggingSessions()Ljava/util/List;
    .locals 1
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
    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getActiveSessions()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdvertiserIdLogging()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    .line 331
    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getApmLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    goto :goto_0
.end method

.method public getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mBreadcrumbLogging:Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    return-object v0
.end method

.method public getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    return-object v0
.end method

.method public getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    return-object v0
.end method

.method public getNextSequence()J
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-nez v0, :cond_0

    .line 521
    const-wide/16 v0, 0x0

    .line 523
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getNextSequence()J

    move-result-wide v0

    goto :goto_0
.end method

.method getNextTimeToDeliverAfterFailure()J
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPdsEventHandler()Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    return-object v0
.end method

.method public getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    return-object v0
.end method

.method public getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    return-object v0
.end method

.method getUptime()J
    .locals 4

    .prologue
    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStartedTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method public getUserSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    if-nez p1, :cond_0

    .line 395
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Intent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    return v2
.end method

.method public handleConnectivityChange()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->handleConnectivityChange()V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;->handleConnectivityChange()V

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->handleConnectivityChange()V

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;->handleConnectivityChange()V

    .line 548
    :cond_3
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigRefreshed(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 559
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Refresh configuration for error and breadcrumb logging"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-wide v2, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->gCritSessionId:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->onConfigurationChanged(Landroid/content/Context;JLcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V

    .line 563
    :cond_0
    return-void
.end method

.method public onPlayEnd()V
    .locals 2

    .prologue
    .line 602
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Flush events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    .line 604
    return-void
.end method

.method public onProfileSwitch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 589
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Flush events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 591
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->clear()V

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flush(Z)V

    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    .line 594
    return-void
.end method

.method public onUserLogout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "onUserLogout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->clear()V

    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->endAllActiveSessions()V

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flush(Z)V

    .line 578
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->resetAppID()V

    .line 580
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    .line 581
    return-void
.end method

.method public pauseDelivery()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->pauseDelivery()V

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->pauseDelivery()V

    .line 470
    return-void
.end method

.method public resumeDelivery(Z)V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->resumeDelivery(Z)V

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->resumeDelivery(Z)V

    .line 479
    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 452
    return-void
.end method
