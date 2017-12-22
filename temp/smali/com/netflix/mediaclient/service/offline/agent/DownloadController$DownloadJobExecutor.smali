.class Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;


# static fields
.field private static final DL_RESUME_JOB_DL_START_DELAY:J = 0x7530L


# instance fields
.field final mDownloadResumeRunnable:Ljava/lang/Runnable;

.field private final mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 6

    .prologue
    .line 644
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->mDownloadResumeRunnable:Ljava/lang/Runnable;

    .line 645
    new-instance v0, Lcom/netflix/mediaclient/util/RateLimiter;

    const/16 v1, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/RateLimiter;-><init>(IJ)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

    .line 646
    return-void
.end method


# virtual methods
.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 650
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onNetflixStartJob jobId=%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 652
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$6;->$SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 654
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/RateLimiter;->onNewEvent()Z

    move-result v0

    .line 655
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v2, "onNetflixStartJob tooFast=%b"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 656
    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$700(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->mDownloadResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->access$700(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;->mDownloadResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 5

    .prologue
    .line 674
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onNetflixStopJob jobId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 675
    return-void
.end method
