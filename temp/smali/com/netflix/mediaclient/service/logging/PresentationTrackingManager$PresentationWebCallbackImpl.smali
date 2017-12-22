.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    return-void
.end method


# virtual methods
.method public onEventsDelivered(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$700(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->clearFailureCounter()V

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$500(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public onEventsDeliveryFailed(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 383
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$800(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    .line 398
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$700(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 393
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
