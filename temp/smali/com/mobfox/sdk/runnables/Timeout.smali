.class public Lcom/mobfox/sdk/runnables/Timeout;
.super Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.source "Timeout.java"


# instance fields
.field cancelled:Z

.field timeout:Z

.field timeoutCB:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeoutCB"    # Ljava/util/concurrent/Callable;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;-><init>(Landroid/content/Context;)V

    .line 10
    iput-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->timeout:Z

    .line 11
    iput-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->cancelled:Z

    .line 22
    iput-object p2, p0, Lcom/mobfox/sdk/runnables/Timeout;->timeoutCB:Ljava/util/concurrent/Callable;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->cancelled:Z

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected condition()Z
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTimeout()Z
    .locals 1

    .prologue
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->timeout:Z

    monitor-exit p0

    return v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mobFoxRun()V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    .line 28
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->timeout:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->timeoutCB:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->timeout:Z

    .line 46
    iput-boolean v0, p0, Lcom/mobfox/sdk/runnables/Timeout;->cancelled:Z

    .line 47
    return-void
.end method
