.class public final Lcom/netflix/mediaclient/service/NetflixService;
.super Landroid/app/Service;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/INetflixService;


# static fields
.field public static final ACTION_CLOSE_CAST_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_CLOSE_CAST_PLAYER"

.field public static final ACTION_EXPAND_CAST_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_EXPAND_CAST_PLAYER"

.field public static final ACTION_EXPAND_HOME_CAST_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_EXPAND_HOME_CAST_PLAYER"

.field private static final ACTION_REFRESH_WIDGET_CONTENT_ALARM_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

.field private static final ACTION_SHOW_CAST_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_SHOW_CAST_PLAYER"

.field private static final ACTION_SHUTDOWN_SERVICE_PENDING_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

.field public static final INTENT_EXTRA_ALREADY_RUNNING:Ljava/lang/String; = "isRunning"

.field private static final SERVICE_KILL_DELAY_MS:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "NetflixService"

.field private static final TEST_DELAY_INIT_BY_5_SECONDS:Z = false

.field private static final WIDGET_CONTENT_REFRESH_DELAY_MS:J = 0xa4cb800L

.field private static fetchErrorsEnabled:Z

.field private static isCreated:Z

.field private static sJobExecutionMonitor:Lcom/netflix/mediaclient/service/NetflixService$JobExecutionMonitor;


# instance fields
.field private final agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

.field private handler:Landroid/os/Handler;

.field hasLoggedAgent:Z

.field private final initTimeoutRunnable:Ljava/lang/Runnable;

.field private final mBinder:Landroid/os/IBinder;

.field private mBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;

.field private final mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

.field private mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field private mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

.field private mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

.field private mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

.field private mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field private final mInitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/NetflixService$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitComplete:Z

.field private mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

.field private mMaintenaceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

.field private mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private mMdxEnabled:Z

.field private final mMdxReceiver:Landroid/content/BroadcastReceiver;

.field private mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

.field private final mNetflixJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            "Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

.field private mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

.field private final mNetworkChangeDelayRunnable:Ljava/lang/Runnable;

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mNrdController:Lcom/netflix/mediaclient/service/NrdController;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field private mOfflineBroadcastIntentReceiver:Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;

.field private mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

.field private final mPostedNotificationSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

.field private mPrepareHelper:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

.field private mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

.field private mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field private mServiceStartedTimeInMs:J

.field private final mShowCastPlayerIntent:Landroid/content/BroadcastReceiver;

.field private mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private mUserAgentBroadcastIntentReceiver:Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;

.field private mUserFlowTag:Ljava/lang/String;

.field private mVoipAgent:Lcom/netflix/mediaclient/service/voip/VoipAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    .line 206
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    .line 210
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    .line 215
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    .line 222
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    .line 1320
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$9;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 1408
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBinder:Landroid/os/IBinder;

    .line 1627
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$10;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    .line 1672
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$11;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    .line 1769
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$12;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mShowCastPlayerIntent:Landroid/content/BroadcastReceiver;

    .line 1791
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$13;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1808
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$14;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeDelayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static TEST_ONLY_setJobExecutionMonitor(Lcom/netflix/mediaclient/service/NetflixService$JobExecutionMonitor;)V
    .locals 0

    .prologue
    .line 2019
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/voip/VoipAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/PlayerAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService;->handleOnInitError(Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/msl/MSLAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initCompleted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/error/ErrorAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/NetflixService;ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initTimeout()V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/NetflixService;J)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/NetflixService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeDelayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->onNetworkChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NrdController;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/falkor/FalkorAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/preapp/PreAppAgent;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    return-object v0
.end method

.method public static areFetchErrorsEnabled()Z
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method private cancelPendingSelfStop()V
    .locals 2

    .prologue
    .line 1607
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1608
    if-nez v0, :cond_0

    .line 1609
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to cancel shutdown alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :goto_0
    return-void

    .line 1614
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static createShowMdxPlayerBroadcastIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1891
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_SHOW_CAST_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1619
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    .line 1621
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    .line 1619
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createWidgetContentRefreshPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 2035
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    .line 2037
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    .line 2035
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private doStartCommand(Landroid/content/Intent;II)V
    .locals 3

    .prologue
    .line 330
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Received start command intent "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 332
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Stopping service via shutdown intent..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    goto :goto_0

    .line 344
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 346
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.offline"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Offline command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isReady()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 349
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getCommandHandler()Lcom/netflix/mediaclient/service/IntentCommandHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/IntentCommandHandler;->handleCommand(Landroid/content/Intent;)V

    .line 355
    :cond_3
    :goto_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v1, :cond_4

    .line 356
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "MDX command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 360
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    .line 361
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isSupported()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "swiped_notification_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 362
    :cond_5
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Push notification command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 365
    :cond_6
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 366
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Client logging command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 369
    :cond_7
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.USER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 370
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "User agent command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 373
    :cond_8
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_PSERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 374
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Preapp service command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 378
    :cond_9
    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "handling widget content refresh alarm expiry..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-wide/32 v0, 0xa4cb800

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->updateWidgetContentAlarm(J)V

    .line 382
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 383
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informMemberUpdated(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 351
    :cond_a
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "received a command while offline agent is not ready"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 385
    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informNonMemberVideosUpdated(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private enableMdxAgentAndInit(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->isInitCalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->destroy()V

    .line 1747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isDisableMdx()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    .line 1751
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_1

    .line 1752
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 1755
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->registerMdxReceiver()V

    .line 1756
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 1759
    :cond_1
    return-void

    .line 1749
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentNetTypeAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1802
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    .line 1804
    if-eqz v0, :cond_0

    .line 1805
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1804
    :goto_0
    return-object v0

    .line 1805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleOnInitError(Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/ServiceAgent;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/ServiceAgent;",
            ">;",
            "Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 573
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    const-string/jumbo v0, "NetflixService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NetflixService init failed with ServiceAgent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " statusCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput-object p2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    .line 578
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    .line 579
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isInitCalled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 580
    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    invoke-virtual {v0, v4, p4}, Lcom/netflix/mediaclient/service/ServiceAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    goto :goto_0

    .line 582
    :cond_0
    const-string/jumbo v4, "NetflixService"

    const-string/jumbo v5, "Agent %s from error batch already initialized!"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initCompleted()V

    .line 586
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    move v0, v1

    .line 590
    :goto_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private declared-synchronized init()V
    .locals 4

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$1;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 422
    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/util/ArrayList;)V

    .line 514
    new-instance v2, Lcom/netflix/mediaclient/service/NetflixService$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/NetflixService$3;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 523
    new-instance v3, Lcom/netflix/mediaclient/service/NetflixService$4;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/netflix/mediaclient/service/NetflixService$4;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/util/ArrayList;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 536
    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$5;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/NetflixService$5;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/util/ArrayList;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 549
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v2, "NetflixService initing..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 555
    const-wide/32 v0, 0x15f90

    .line 559
    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initCompleted()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 613
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 614
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPrepareHelper:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->init()V

    .line 616
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->postApplicationStartedEvent()V

    .line 618
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Invoking InitCallbacks..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/NetflixService$InitCallback;

    .line 620
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/NetflixService$InitCallback;->onInitComplete()V

    goto :goto_0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    .line 627
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mShowCastPlayerIntent:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_SHOW_CAST_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->handleConnectivityChange()V

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onApplicationStarted()V

    .line 635
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Send local intent that Netflix service is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    const-string/jumbo v1, "status_code"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 638
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 640
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "user_flow_aim_low"

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 642
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "begin user flow %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->beginUserflow(Ljava/lang/String;)V

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/NetflixService$6;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->enableMdxAgentAndInit(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 657
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->registerPartnerBroadcastIntentsReceivers()V

    .line 659
    const v0, 0xea60

    .line 660
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "StopService runnable posted - service will die in %d seconds unless bound to or started..."

    new-array v3, v5, [Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 661
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    .line 663
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "start alarm to wake up in WIDGET_CONTENT_REFRESH_DELAY_MS to refresh content "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-wide/32 v0, 0xa4cb800

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->updateWidgetContentAlarm(J)V

    .line 667
    :cond_3
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService init took=%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/NetflixService;->mServiceStartedTimeInMs:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->r(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 668
    return-void

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "user_flow_offline"

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initTimeout()V
    .locals 2

    .prologue
    .line 671
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Service init has timed out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    .line 673
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initCompleted()V

    .line 674
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    .line 675
    return-void
.end method

.method public static isInstanceCreated()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    return v0
.end method

.method private notifyMdxAgentUiComingToForeground()V
    .locals 1

    .prologue
    .line 1899
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->uiComingToForeground()V

    .line 1902
    :cond_0
    return-void
.end method

.method private notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1489
    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notifying client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " that service is ready, status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1492
    if-eqz v0, :cond_0

    .line 1493
    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 1498
    :cond_0
    return-void
.end method

.method private onNetworkChange()V
    .locals 2

    .prologue
    .line 1816
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "onNetworkChange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->handleConnectivityChange()V

    .line 1819
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleConnectivityChange()V

    .line 1820
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->handleConnectivityChange()V

    .line 1821
    invoke-static {}, Lcom/netflix/cstatssamurai/ClientStats;->getInstance()Lcom/netflix/cstatssamurai/ClientStats;

    move-result-object v0

    .line 1822
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1821
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentNetTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cstatssamurai/ClientStats;->handleConnectivityChange(Ljava/lang/String;)V

    .line 1823
    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->cacheFlush()V

    .line 1824
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->handleConnectivityChange()V

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPrepareHelper:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->handleConnectivityChange()V

    .line 1828
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleConnectivityChange()V

    .line 1829
    return-void
.end method

.method private postApplicationStartedEvent()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-nez v0, :cond_0

    .line 596
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to post application started event. Logging agent is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    if-nez v0, :cond_1

    .line 601
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to post application started event. APM manager is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->isUserLoggedIn()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->reportStoredLogEvents(Landroid/content/Context;Z)V

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->didCrashOnLastLoad()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startApplicationSession(Z)V

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->handleConnectivityChange(Landroid/content/Context;)V

    goto :goto_0

    .line 607
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private registerMdxReceiver()V
    .locals 2

    .prologue
    .line 1737
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1738
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1739
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1740
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1741
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1742
    return-void
.end method

.method private registerPartnerBroadcastIntentsReceivers()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method private safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1838
    if-nez p1, :cond_0

    .line 1839
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to unregister, receiver is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :goto_0
    return-void

    .line 1847
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unregister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopSelfInMs(J)V
    .locals 5

    .prologue
    .line 1585
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1586
    if-nez v0, :cond_0

    .line 1587
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to set shutdown alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :goto_0
    return-void

    .line 1589
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1590
    add-long/2addr v2, p1

    .line 1599
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-8729 - Exception trying to schedule an AlarmManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static toggleFetchErrorsEnabled()V
    .locals 1

    .prologue
    .line 785
    sget-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    .line 786
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWidgetContentAlarm(J)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 2022
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2023
    if-nez v0, :cond_0

    .line 2024
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to set widget content refresh alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :goto_0
    return-void

    .line 2026
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2027
    add-long v4, v2, p1

    .line 2028
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v6, "updating widget refresh alarm - fireIn %d ms, time sinceBoot %d (ms), widgetRefreshMs: %d ms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v1, v6, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2030
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createWidgetContentRefreshPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v10, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->addRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    move-result v0

    return v0
.end method

.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    if-nez v0, :cond_0

    .line 2004
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "MSLAgent unavailable. Unable to add a network request inspector"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :goto_0
    return-void

    .line 2007
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public addProfile(Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 2

    .prologue
    .line 978
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 979
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 980
    return-void
.end method

.method public allocateABTest(IIII)V
    .locals 2

    .prologue
    .line 1157
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1158
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->allocateABTest(IILcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1159
    return-void
.end method

.method public consumeUmaAlert()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->consumeUmaAlert()V

    .line 935
    return-void
.end method

.method public createAutoLoginToken(JII)V
    .locals 3

    .prologue
    .line 1233
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1234
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1235
    return-void
.end method

.method public deallocateABTest(III)V
    .locals 2

    .prologue
    .line 1163
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1164
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->deallocateABTest(ILcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1165
    return-void
.end method

.method public deleteLocalResource(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->deleteLocalResource(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;II)V
    .locals 2

    .prologue
    .line 1174
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1175
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1176
    return-void
.end method

.method public editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 6

    .prologue
    .line 984
    new-instance v5, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v5, p0, p5, p6}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 985
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgent;->editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 986
    return-void
.end method

.method public fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
    .locals 2

    .prologue
    .line 824
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 825
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 826
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
    .locals 2

    .prologue
    .line 800
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 801
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 802
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJII)V
    .locals 11

    .prologue
    .line 813
    new-instance v10, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v10, p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 814
    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 815
    return-void
.end method

.method public fetchSurvey(II)V
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1152
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1153
    return-void
.end method

.method public getAccountOwnerToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableAvatarsList(II)V
    .locals 2

    .prologue
    .line 996
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 997
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 998
    return-void
.end method

.method public getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;

    return-object v0
.end method

.method public getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    return-object v0
.end method

.method public getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method public getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    return-object v0
.end method

.method public getCurrentAppLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    return-object v0
.end method

.method public getESN()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    return-object v0
.end method

.method public getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    return-object v0
.end method

.method public getFalkorAgent()Lcom/netflix/mediaclient/service/falkor/FalkorAccess;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    return-object v0
.end method

.method public getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    return-object v0
.end method

.method public getMaintenanceJobMgr()Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;
    .locals 1

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMaintenaceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    return-object v0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method public getNetflixPowerManager()Lcom/netflix/mediaclient/service/NetflixPowerManager;
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    return-object v0
.end method

.method public getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getNrdpPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    return-object v0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getNrdDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_0

    .line 1266
    const-string/jumbo v0, "2014.1"

    .line 1272
    :goto_0
    return-object v0

    .line 1267
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdApp:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_1

    .line 1268
    const-string/jumbo v0, "2014.1"

    goto :goto_0

    .line 1269
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->MdxLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_2

    .line 1270
    const-string/jumbo v0, "2014.1"

    goto :goto_0

    .line 1272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    return-object v0
.end method

.method public getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    return-object v0
.end method

.method public getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;
    .locals 1

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPrepareHelper:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    return-object v0
.end method

.method public getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    return-object v0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    return-object v0
.end method

.method public getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;
    .locals 1

    .prologue
    .line 1297
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$8;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1313
    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartedTimeInMs()J
    .locals 2

    .prologue
    .line 2064
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mServiceStartedTimeInMs:J

    return-wide v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method public getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    return-object v0
.end method

.method public getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    return-object v0
.end method

.method public isCurrentProfileInstantQueueEnabled()Z
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isCurrentProfileInstantQueueEnabled()Z

    move-result v0

    return v0
.end method

.method public isDeviceHd()Z
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDeviceHd()Z

    move-result v0

    return v0
.end method

.method public isDolbyVisionSupported()Z
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDolbyVisionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDolbyVisionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdr10Supported()Z
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isHdr10Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isHdr10Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonMemberPlayback()Z
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isNonMemberPlayback()Z

    move-result v0

    return v0
.end method

.method public isPlaybackInProgress()Z
    .locals 1

    .prologue
    .line 2079
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileSwitchingDisabled()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled()Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isTablet()Z

    move-result v0

    return v0
.end method

.method public isUserAgeVerified()Z
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isAgeVerified()Z

    move-result v0

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 1188
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1190
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isNrmCookiePresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1212
    :goto_0
    return-void

    .line 1194
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Trying to login without nrm cookies. -- fetchingNrmCookies "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    new-instance v2, Lcom/netflix/mediaclient/service/NetflixService$7;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/NetflixService$7;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchEsnDependentConfigsOnAppStart(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    goto :goto_0
.end method

.method public loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;II)V
    .locals 2

    .prologue
    .line 1243
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1244
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1245
    return-void
.end method

.method public logoutUser(II)V
    .locals 2

    .prologue
    .line 1221
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1222
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1223
    return-void
.end method

.method public markSurveysAsRead()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->markSurveysAsRead()V

    .line 1170
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 1412
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService is onBind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 1415
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 256
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService.onCreate."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NETFLIX_SERVICE_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 258
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 259
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mServiceStartedTimeInMs:J

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->updateAppUpgradedPrefs(Landroid/content/Context;)V

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerSelector;->createNetflixJobScheduler(Landroid/content/Context;)Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .line 270
    new-instance v0, Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    .line 271
    new-instance v0, Lcom/netflix/mediaclient/service/NrdController;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/NrdController;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    .line 272
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 273
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    .line 274
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    .line 277
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 278
    new-instance v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    .line 280
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    .line 281
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    .line 283
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    .line 284
    new-instance v0, Lcom/netflix/mediaclient/service/error/ErrorAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    .line 285
    new-instance v0, Lcom/netflix/mediaclient/service/voip/VoipAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/VoipAgent;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    .line 286
    new-instance v0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMaintenaceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    .line 287
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMaintenaceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V

    .line 288
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMaintenaceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    .line 289
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    .line 290
    new-instance v0, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;

    .line 291
    new-instance v0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {v0, v1, p0, v2}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPrepareHelper:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    .line 293
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getStartedTimeInMs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v7

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->init(Landroid/content/Context;JLcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V

    .line 296
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->init()V

    .line 297
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 679
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 680
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService.onDestroy."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 684
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Send local intent that Netflix service is destroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineBroadcastIntentReceiver:Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineBroadcastIntentReceiver:Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;

    const-string/jumbo v1, "PartnerOfflineBroadcastReceiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgentBroadcastIntentReceiver:Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgentBroadcastIntentReceiver:Lcom/netflix/mediaclient/service/PartnerUserAgentBroadcastReceiver;

    const-string/jumbo v1, "PartnerUserAgentBroadcastReceiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 695
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "MDX receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "network receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mShowCastPlayerIntent:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "mdx show player receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->clear()V

    .line 704
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->destroy()V

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    if-eqz v0, :cond_4

    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->destroy()V

    .line 711
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    if-eqz v0, :cond_5

    .line 712
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->destroy()V

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v0, :cond_6

    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->destroy()V

    .line 717
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    if-eqz v0, :cond_7

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->destroy()V

    .line 720
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v0, :cond_8

    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->destroy()V

    .line 723
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    if-eqz v0, :cond_9

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->destroy()V

    .line 726
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-eqz v0, :cond_a

    .line 727
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->destroy()V

    .line 729
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    if-eqz v0, :cond_b

    .line 730
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->destroy()V

    .line 733
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    if-eqz v0, :cond_c

    .line 734
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->destroy()V

    .line 737
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    if-eqz v0, :cond_d

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->destroy()V

    .line 741
    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    if-eqz v0, :cond_e

    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->destroy()V

    .line 745
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_f

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->forceReleasePartialWakeLock()V

    .line 748
    :cond_f
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMaintenaceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    if-eqz v0, :cond_10

    .line 749
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMaintenaceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->destroy()V

    .line 751
    :cond_10
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPrepareHelper:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    if-eqz v0, :cond_11

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPrepareHelper:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->destroy()V

    .line 754
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    .line 755
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 756
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    .line 761
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 762
    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Destroying app process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 766
    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Destroying app process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " done."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 316
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->NETFLIX_SERVICE_STARTED_COMMAND:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    .line 325
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1540
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1545
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalcorCache()V

    .line 1548
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 2043
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 2044
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 2048
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync()V

    .line 2051
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onTrimMemory(I)V

    .line 2053
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onTrimMemory(I)V

    .line 2055
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1420
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService is onUnbind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->size()I

    move-result v0

    .line 1423
    if-lez v0, :cond_0

    .line 1424
    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We still have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " callbacks - not stopping service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :goto_0
    return v4

    .line 1428
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1429
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "has active mdx session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v0, v1, :cond_2

    .line 1433
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Service init failed due to no connectivity - calling stopSelf()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    goto :goto_0

    .line 1439
    :cond_2
    const-wide/32 v0, 0x1b77400

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    goto :goto_0
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public refreshCurrentUserMessageArea()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshUserMessage()V

    .line 925
    return-void
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshProfileSwitchingStatus()V

    .line 1008
    return-void
.end method

.method public registerCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
    .locals 4

    .prologue
    .line 1464
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1465
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 1467
    if-nez p1, :cond_0

    .line 1468
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, " registerCallback - cb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->put(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)I

    move-result v0

    .line 1472
    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v1, :cond_2

    .line 1474
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 1475
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1476
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "UI started, notify MDX"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->notifyMdxAgentUiComingToForeground()V

    .line 1482
    :cond_1
    :goto_0
    return-void

    .line 1480
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V
    .locals 2

    .prologue
    .line 1940
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    .line 1941
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    monitor-exit v1

    .line 1943
    return-void

    .line 1942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeProfile(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 990
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 991
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 992
    return-void
.end method

.method public requestBackgroundForNotification(IZ)V
    .locals 2

    .prologue
    .line 1991
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1992
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1993
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1997
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopForeground(Z)V

    .line 1999
    :cond_0
    return-void
.end method

.method public requestForegroundForNotification(ILandroid/app/Notification;)V
    .locals 2

    .prologue
    .line 1979
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1980
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1985
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->startForeground(ILandroid/app/Notification;)V

    .line 1987
    :cond_0
    return-void
.end method

.method public requestServiceShutdownAfterDelay(J)V
    .locals 1

    .prologue
    .line 1581
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    .line 1582
    return-void
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->selectProfile(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setCurrentAppLocale(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public setNonMemberPlayback(Z)V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setNonMemberPlayback(Z)V

    .line 887
    return-void
.end method

.method public startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .prologue
    .line 1948
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    .line 1949
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;

    .line 1950
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    if-eqz v0, :cond_0

    .line 1952
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;->onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 1959
    :cond_0
    return-void

    .line 1950
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    .line 1965
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;

    .line 1966
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    if-eqz v0, :cond_0

    .line 1968
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;->onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 1975
    :cond_0
    return-void

    .line 1966
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public uiComingFromBackground()V
    .locals 2

    .prologue
    .line 1906
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "UI coming from background, notify MDX"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->notifyMdxAgentUiComingToForeground()V

    .line 1908
    return-void
.end method

.method public unregisterCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
    .locals 4

    .prologue
    .line 1527
    if-nez p1, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->remove(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    move-result-object v0

    .line 1531
    if-nez v0, :cond_1

    .line 1532
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Client callback was either not-registered/removed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1534
    :cond_1
    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyAge(II)V
    .locals 2

    .prologue
    .line 1145
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1146
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyAge(Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1147
    return-void
.end method

.method public verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 1139
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1140
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V

    .line 1141
    return-void
.end method
