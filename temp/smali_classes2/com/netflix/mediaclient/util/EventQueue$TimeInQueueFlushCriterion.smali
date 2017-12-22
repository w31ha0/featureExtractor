.class Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/util/EventQueue;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/util/EventQueue;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;)V

    return-void
.end method


# virtual methods
.method public shouldFlushQueue(IJ)Z
    .locals 4

    .prologue
    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 344
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$400(Lcom/netflix/mediaclient/util/EventQueue;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
