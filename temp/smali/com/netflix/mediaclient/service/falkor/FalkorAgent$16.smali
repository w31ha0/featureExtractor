.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0x493e0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1200(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    .line 1300
    return-void

    .line 1290
    :catch_0
    move-exception v0

    goto :goto_0
.end method
