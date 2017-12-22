.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;)V
    .locals 0

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    return-void
.end method

.method private handleUntimelyJobRequest(J)V
    .locals 3

    .prologue
    .line 1595
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    .line 1600
    :cond_0
    return-void
.end method

.method private isStartJobUntimely(J)Z
    .locals 3

    .prologue
    .line 1611
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1560
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    .line 1565
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const-string/jumbo v1, "onNetflixStartJob 1"

    invoke-static {v0, v9, v8, v8, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1570
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->getLastJobStartTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 1571
    sub-long v4, v0, v2

    .line 1572
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->isStartJobUntimely(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->handleUntimelyJobRequest(J)V

    goto :goto_0

    .line 1576
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    const-string/jumbo v3, "prefs_prefetch_lolomo_job_last_start_time_ms"

    invoke-static {v2, v3, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 1577
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10, v10}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPrefetchLolomoJobStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1581
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1002(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z

    .line 1582
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->startLolomoFetchJob(Z)Z

    move-result v0

    .line 1583
    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const-string/jumbo v1, "onNetflixStartJob 2"

    invoke-static {v0, v8, v9, v9, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1002(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z

    .line 1620
    return-void
.end method
