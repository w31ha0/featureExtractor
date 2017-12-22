.class Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;
.super Ljava/lang/Object;
.source "IntegratedClientLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

.field final synthetic val$saveIfFailed:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Z)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;->val$saveIfFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$200(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;->val$saveIfFailed:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->flushEvents(Z)V

    .line 857
    return-void
.end method
