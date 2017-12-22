.class Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;
.super Ljava/lang/Object;
.source "ApmLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

.field final synthetic val$lastShutdownGraceful:Z

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;ZJ)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;->val$lastShutdownGraceful:Z

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSet(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 136
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application ID is ready, start application session..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;->val$lastShutdownGraceful:Z

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;->val$now:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;ZLjava/lang/String;J)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application ID is null in callback, this should NOT happen..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/EventHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V

    goto :goto_0
.end method
