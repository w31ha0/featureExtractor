.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$000(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$200(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$100(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string/jumbo v0, "nf_logs_pds"

    const-string/jumbo v1, "Check if we have not delivered events from last time our app was runnung..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1$1;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;)V

    .line 144
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$400(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Lcom/netflix/mediaclient/util/data/DataRepository;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->loadAll(Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;)V

    goto :goto_0
.end method
