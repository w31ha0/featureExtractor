.class public Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;
.super Ljava/lang/Object;
.source "NetflixJobSchedulerPreL.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;


# static fields
.field private static final NETFLIX_JOB_ID:Ljava/lang/String; = "NetflixJobId="

.field private static final TAG:Ljava/lang/String; = "nf_job_scheduler_prel"

.field private static sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private static buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 323
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    if-nez v0, :cond_1

    .line 324
    const-class v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    monitor-enter v1

    .line 325
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    if-nez v0, :cond_0

    .line 326
    const-string/jumbo v0, "pending_jobs"

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :try_start_1
    const-class v3, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :goto_0
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    if-nez v0, :cond_0

    .line 337
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v2, "buildPendingJobsFromPrefIfRequired sPendingJobRegistry was null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    .line 341
    :cond_0
    monitor-exit v1

    .line 343
    :cond_1
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static cancelAlarm(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netflix/mediaclient/service/job/NetflixAlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixJobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 254
    :cond_0
    return-void
.end method

.method public static cancelAllJobs(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 311
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 312
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 313
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelAlarm(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 316
    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 317
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    const-string/jumbo v0, "pending_jobs"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->dumpPref(Landroid/content/Context;)V

    .line 320
    return-void
.end method

.method private static checkAllAndStartJobs(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 299
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 300
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    .line 302
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->checkAndStartJob(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    return-void
.end method

.method private static checkAndStartJob(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 184
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v4, p1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 191
    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-wide v0, p1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mLastExecutionTime:J

    .line 201
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRepeatingPeriodInMs()J

    move-result-wide v6

    add-long/2addr v0, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 203
    :goto_1
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_2

    .line 204
    iget-wide v0, p1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mRequestIssueTime:J

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 207
    :cond_2
    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 215
    invoke-virtual {v4, p0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p0, v4}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->getServiceStartIntentForJobId(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method private static dumpPref(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method private static getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;
    .locals 3

    .prologue
    .line 279
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 280
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    monitor-exit v1

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onAlarmReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetflixJobId="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetflixJobId="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    .line 170
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->checkAndStartJob(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onJobExecutionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 4

    .prologue
    .line 48
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mLastExecutionTime:J

    .line 52
    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRepeating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->removeJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->savePendingJobsToPref(Landroid/content/Context;)V

    .line 57
    :cond_1
    return-void
.end method

.method public static onNetworkConnectivityChanged(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 150
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 151
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->checkAllAndStartJobs(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method private static removeJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    .prologue
    .line 285
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 286
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    monitor-exit v1

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static savePendingJobsToPref(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 230
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "pending_jobs"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->dumpPref(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method private static setJobExecInfoToMap(Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 293
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 292
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setOneOffAlarm(JLandroid/app/PendingIntent;)V
    .locals 5

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 269
    if-eqz v0, :cond_0

    .line 270
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 276
    :cond_0
    return-void
.end method

.method private setRepeatingAlarm(JLandroid/app/PendingIntent;)V
    .locals 7

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 258
    if-eqz v0, :cond_0

    .line 259
    const/4 v1, 0x0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->removeJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelAlarm(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->savePendingJobsToPref(Landroid/content/Context;)V

    .line 132
    :cond_0
    return-void
.end method

.method public isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->dumpPref(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 89
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;)V

    .line 90
    iput-wide v4, v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mLastExecutionTime:J

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mRequestIssueTime:J

    .line 92
    iput-object p1, v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 93
    invoke-static {v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->setJobExecInfoToMap(Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->savePendingJobsToPref(Landroid/content/Context;)V

    .line 96
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const-class v3, Lcom/netflix/mediaclient/service/job/NetflixAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixJobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRepeating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRepeatingPeriodInMs()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->setRepeatingAlarm(JLandroid/app/PendingIntent;)V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->setOneOffAlarm(JLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
