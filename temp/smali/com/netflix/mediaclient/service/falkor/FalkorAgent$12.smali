.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v4, 0x493e0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1002(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z

    .line 1084
    iget-object v3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    const-string/jumbo v4, "notifyJobSchedulerFinishedAsync"

    invoke-static {v3, v0, v2, v1, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V

    .line 1085
    return-void

    :cond_0
    move v0, v2

    .line 1084
    goto :goto_1

    .line 1073
    :catch_0
    move-exception v0

    goto :goto_0
.end method
