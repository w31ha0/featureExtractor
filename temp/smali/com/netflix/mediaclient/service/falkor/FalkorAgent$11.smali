.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$requestIdClone:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$requestIdClone:J

    iput-object p4, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 1049
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1050
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1052
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$requestIdClone:J

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$800(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1053
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Request IDs do not match - skipping prefetch callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync(Ljava/util/concurrent/CountDownLatch;)V

    .line 1057
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$900(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0
.end method
