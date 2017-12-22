.class Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;
.super Ljava/util/TimerTask;
.source "ErrorLoggingManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;-><init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
