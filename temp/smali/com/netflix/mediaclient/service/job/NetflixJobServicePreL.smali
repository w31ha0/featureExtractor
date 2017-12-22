.class public Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;
.super Landroid/app/Service;
.source "NetflixJobServicePreL.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;


# static fields
.field private static final NETFLIX_JOB:Ljava/lang/String; = "NetflixJobId"

.field private static final TAG:Ljava/lang/String; = "nf_job_service_prel"


# instance fields
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

.field private mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    return-void
.end method

.method private createServiceManagerHelperIfRequired()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    .line 62
    :cond_0
    return-void
.end method

.method private executeJobs()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 109
    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->onJobExecutionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    return-void
.end method

.method public static getServiceStartIntentForJobId(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string/jumbo v1, "NetflixJobId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method private releaseServiceManagerHelper()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->destroy()V

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->createServiceManagerHelperIfRequired()V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->releaseServiceManagerHelper()V

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 75
    const-string/jumbo v0, "NetflixJobId"

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->UNKNOWN_JOB_ID:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 76
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->createServiceManagerHelperIfRequired()V

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->isServiceManagerFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->releaseServiceManagerHelper()V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->isServiceManagerReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->executeJobs()V

    goto :goto_0
.end method

.method public serviceManagerFailed()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public serviceManagerReady()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->executeJobs()V

    .line 119
    return-void
.end method
