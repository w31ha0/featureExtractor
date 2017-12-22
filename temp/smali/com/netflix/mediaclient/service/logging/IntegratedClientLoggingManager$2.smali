.class Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;
.super Ljava/lang/Object;
.source "IntegratedClientLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

.field final synthetic val$event:Lcom/netflix/mediaclient/service/logging/client/model/Event;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;->val$event:Lcom/netflix/mediaclient/service/logging/client/model/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$200(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;->val$event:Lcom/netflix/mediaclient/service/logging/client/model/Event;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->post(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method
