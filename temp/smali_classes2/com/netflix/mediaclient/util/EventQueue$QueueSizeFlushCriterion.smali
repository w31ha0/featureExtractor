.class Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;
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
    .line 315
    iput-object p1, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;)V

    return-void
.end method


# virtual methods
.method public shouldFlushQueue(IJ)Z
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/EventQueue;->access$200(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/EventQueue;->access$300(Lcom/netflix/mediaclient/util/EventQueue;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 325
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
