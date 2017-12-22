.class public Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;
.super Ljava/lang/Object;
.source "MaintenanceJobMgrImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;
.implements Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;


# static fields
.field private static final MAX_ACTION_EXECUTION_TIME:J

.field private static final RUN_ACTION_FINISH_AUDIT:Z = false

.field private static final TAG:Ljava/lang/String; = "nf_maintenanceJobMgr"


# instance fields
.field private final MAINTENANCE_JOB_CANCEL_DELAY:J

.field private final mAuditRunnable:Ljava/lang/Runnable;

.field private final mCancelMtJobRunnable:Ljava/lang/Runnable;

.field private mCancelMtJobRunnableScheduled:Z

.field private final mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMaintenanceActionSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/job/MaintenanceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

.field private mNfMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

.field private final mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

.field private mRunIdCounter:I

.field private final mWaitingForActionsToFinish:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/netflix/mediaclient/service/job/MaintenanceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->MAX_ACTION_EXECUTION_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mCancelMtJobRunnableScheduled:Z

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->MAINTENANCE_JOB_CANCEL_DELAY:J

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$3;-><init>(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mCancelMtJobRunnable:Ljava/lang/Runnable;

    .line 288
    new-instance v0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$4;-><init>(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mAuditRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMainHandler:Landroid/os/Handler;

    .line 60
    iput-object p2, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    .line 61
    iput-object p3, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 62
    iput-object p4, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->getMtJobPeriodInMsFromConfig()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildNetflixMaintenanceJob(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNfMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/util/RateLimiter;

    const/16 v1, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/RateLimiter;-><init>(IJ)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNfMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->onMaintenanceDone()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->onCancelMtJobRunnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->runAuditChecks()V

    return-void
.end method

.method private cancelMaintenanceJobIfScheduled()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 255
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "NetflixMaintenanceJob cancelled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    return-void
.end method

.method private static getMaintenanceJobPeriodMsFromPref(Landroid/content/Context;J)J
    .locals 3

    .prologue
    .line 307
    const-string/jumbo v0, "maintenace_job_period"

    invoke-static {p0, v0, p1, p2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMtJobPeriodInMsFromConfig()J
    .locals 4

    .prologue
    .line 220
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getOfflineMaintenanceJobPeriodInHrs()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private onCancelMtJobRunnable()V
    .locals 2

    .prologue
    .line 284
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "onCancelMtJobRunnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mCancelMtJobRunnableScheduled:Z

    .line 286
    return-void
.end method

.method private onMaintenanceDone()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mAuditRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->getMaintenanceJobPeriodMsFromPref(Landroid/content/Context;J)J

    move-result-wide v0

    .line 236
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->getMtJobPeriodInMsFromConfig()J

    move-result-wide v2

    .line 238
    const-string/jumbo v4, "nf_maintenanceJobMgr"

    const-string/jumbo v5, "jobPeriodFromPref=%d jobPeriodFromConfigurationAgent=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->cancelMaintenanceJobIfScheduled()V

    .line 250
    :goto_0
    return-void

    .line 242
    :cond_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->cancelMaintenanceJobIfScheduled()V

    .line 244
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildNetflixMaintenanceJob(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNfMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 245
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->scheduleMaintenanceJobIfRequired()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "onMaintenanceJobDone"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1, v9}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    goto :goto_0
.end method

.method private onMaintenanceJobRunningTooFast()V
    .locals 4

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mCancelMtJobRunnableScheduled:Z

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mCancelMtJobRunnableScheduled:Z

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mCancelMtJobRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->MAINTENANCE_JOB_CANCEL_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :cond_0
    return-void
.end method

.method private runAuditChecks()V
    .locals 4

    .prologue
    .line 296
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "runAuditChecks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/MaintenanceAction;

    .line 300
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-eqz v0, :cond_1

    .line 302
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call notifyMaintenanceActionDone by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 304
    :cond_1
    return-void
.end method

.method private scheduleMaintenanceJobIfRequired()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "NetflixMaintenanceJob scheduled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNfMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mNfMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRepeatingPeriodInMs()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->setMaintenanceJobPeriodMsToPref(Landroid/content/Context;J)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "NetflixMaintenanceJob already scheduled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setMaintenanceJobPeriodMsToPref(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 312
    const-string/jumbo v0, "maintenace_job_period"

    invoke-static {p0, v0, p1, p2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 313
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    monitor-enter v1

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 169
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    return-void

    .line 166
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 169
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public notifyMaintenanceActionDone(Lcom/netflix/mediaclient/service/job/MaintenanceAction;I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    const-string/jumbo v2, "nf_maintenanceJobMgr"

    const-string/jumbo v3, "notifyMaintenanceActionDone action=%s runId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 193
    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    monitor-enter v2

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    iget-object v3, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$2;-><init>(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/RateLimiter;->onNewEvent()Z

    move-result v0

    .line 98
    const-string/jumbo v3, "nf_maintenanceJobMgr"

    const-string/jumbo v4, "onNetflixStartJob tooFast=%b"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->onMaintenanceJobRunningTooFast()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;->sendJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v3, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    monitor-enter v3

    .line 108
    :try_start_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 109
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v3, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    monitor-enter v3

    .line 113
    :try_start_1
    iget-object v4, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 114
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/MaintenanceAction;

    .line 118
    iget v4, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mRunIdCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mRunIdCounter:I

    .line 119
    iget-object v4, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    monitor-enter v4

    .line 120
    :try_start_2
    iget-object v5, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    iget v6, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mRunIdCounter:I

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    iget v4, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mRunIdCounter:I

    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/service/job/MaintenanceAction;->runAction(I)V

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 114
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 121
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 127
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    monitor-enter v3

    .line 128
    :try_start_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 129
    :goto_2
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$1;-><init>(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 128
    goto :goto_2

    .line 129
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    .prologue
    .line 149
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "onNetflixStopJob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;->sendJobStopLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    monitor-enter v1

    .line 156
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mWaitingForActionsToFinish:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 157
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/MaintenanceAction;

    .line 159
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/job/MaintenanceAction;->stopAction()V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 157
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 161
    :cond_0
    return-void
.end method

.method public registerAction(Lcom/netflix/mediaclient/service/job/MaintenanceAction;)V
    .locals 5

    .prologue
    .line 175
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "registerAction %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterAction(Lcom/netflix/mediaclient/service/job/MaintenanceAction;)V
    .locals 5

    .prologue
    .line 183
    const-string/jumbo v0, "nf_maintenanceJobMgr"

    const-string/jumbo v1, "unregisterAction %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->mMaintenanceActionSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
