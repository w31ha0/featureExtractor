.class Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;
.super Ljava/lang/Object;
.source "IntegratedClientLoggingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    return-void
.end method


# virtual methods
.method public onEventsDelivered(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$900(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->clearFailureCounter()V

    .line 1062
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$600(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public onEventsDeliveryFailed(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1028
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$800(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1000(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    .line 1045
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$900(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1040
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
