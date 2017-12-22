.class Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;
.super Ljava/lang/Object;
.source "LoggingAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Running state check..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$100(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->checkState()V

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$200(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->checkState()V

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$300(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;->checkState()V

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$400(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;->checkState()V

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->checkState()V

    .line 382
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Running state check done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method
