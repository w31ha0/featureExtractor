.class public Lcom/netflix/mediaclient/service/job/NetflixJobService;
.super Landroid/app/job/JobService;
.source "NetflixJobService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final JOB_COMPLETE_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.job.netflixjobservice.jobcomplete"

.field private static final NETFLIX_JOB_FINISHED_NEEDS_RESCHEDULE:Ljava/lang/String; = "needsReschedule"

.field private static final NETFLIX_JOB_ID:Ljava/lang/String; = "NetflixJobId="

.field private static final TAG:Ljava/lang/String; = "nf_job_service_l"


# instance fields
.field private final mJobFinishReceiver:Landroid/content/BroadcastReceiver;

.field private final mJobsParamsInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mJobsWaitingForServiceManager:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsWaitingForServiceManager:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsParamsInfoMap:Ljava/util/Map;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mMainHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJobService$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService$2;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJobService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobFinishReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/job/NetflixJobService;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->executeJobs()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/job/NetflixJobService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->onJobFinishBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private callAndroidJobFinish(Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->isAndroidJobFinishDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "nf_job_service_l"

    const-string/jumbo v1, "not calling Android JobService jobFinish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string/jumbo v0, "nf_job_service_l"

    const-string/jumbo v1, "calling Android JobService jobFinish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0
.end method

.method private createServiceManagerHelperIfRequired()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    .line 74
    :cond_0
    return-void
.end method

.method private executeJobs()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 136
    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method private static isAndroidJobFinishDisabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 221
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->isJobFinishDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markAllPendingJobsFinished()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsParamsInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 151
    const-string/jumbo v2, "nf_job_service_l"

    const-string/jumbo v3, "markAllPendingJobsFinished calling jobFinish"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 153
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->callAndroidJobFinish(Landroid/app/job/JobParameters;)V

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private onJobFinishBroadcast(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 178
    const-string/jumbo v0, "NetflixJobId="

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->UNKNOWN_JOB_ID:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 180
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsParamsInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsParamsInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->callAndroidJobFinish(Landroid/app/job/JobParameters;)V

    .line 190
    :cond_0
    return-void
.end method

.method private releaseServiceManagerHelper()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->destroy()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    .line 81
    :cond_0
    return-void
.end method

.method public static sendJobFinishBroadcast(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.service.job.netflixjobservice.jobcomplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "NetflixJobId="

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const-string/jumbo v1, "needsReschedule"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 206
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->createServiceManagerHelperIfRequired()V

    .line 56
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobFinishReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.service.job.netflixjobservice.jobcomplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->releaseServiceManagerHelper()V

    .line 67
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/app/job/JobService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 98
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->createServiceManagerHelperIfRequired()V

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->isServiceManagerFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->markAllPendingJobsFinished()V

    .line 107
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->releaseServiceManagerHelper()V

    .line 108
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsParamsInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->isServiceManagerReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/job/NetflixJobService$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService$1;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJobService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    const-string/jumbo v0, "nf_job_service_l"

    const-string/jumbo v1, "waiting for serviceManager to be ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mJobsParamsInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public serviceManagerFailed()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->markAllPendingJobsFinished()V

    .line 218
    :cond_0
    return-void
.end method

.method public serviceManagerReady()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->executeJobs()V

    .line 211
    return-void
.end method
