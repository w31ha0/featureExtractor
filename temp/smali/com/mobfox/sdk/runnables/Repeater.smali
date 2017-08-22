.class public Lcom/mobfox/sdk/runnables/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"


# instance fields
.field action:Ljava/util/concurrent/Callable;

.field context:Landroid/content/Context;

.field delay:J

.field poster:Landroid/os/Handler;

.field runnable:Lcom/mobfox/sdk/runnables/MobFoxRunnable;

.field stop:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;JLjava/util/concurrent/Callable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "poster"    # Landroid/os/Handler;
    .param p3, "delay"    # J
    .param p5, "action"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater;->stop:Ljava/lang/Boolean;

    .line 22
    iput-object p1, p0, Lcom/mobfox/sdk/runnables/Repeater;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/mobfox/sdk/runnables/Repeater;->poster:Landroid/os/Handler;

    .line 24
    iput-wide p3, p0, Lcom/mobfox/sdk/runnables/Repeater;->delay:J

    .line 25
    iput-object p5, p0, Lcom/mobfox/sdk/runnables/Repeater;->action:Ljava/util/concurrent/Callable;

    .line 26
    return-void
.end method


# virtual methods
.method public setAction(Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "action"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mobfox/sdk/runnables/Repeater;->action:Ljava/util/concurrent/Callable;

    .line 30
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater;->stop:Ljava/lang/Boolean;

    .line 34
    iget-object v4, p0, Lcom/mobfox/sdk/runnables/Repeater;->action:Ljava/util/concurrent/Callable;

    .line 35
    .local v4, "_action":Ljava/util/concurrent/Callable;
    iget-object v5, p0, Lcom/mobfox/sdk/runnables/Repeater;->poster:Landroid/os/Handler;

    .line 36
    .local v5, "_poster":Landroid/os/Handler;
    iget-wide v6, p0, Lcom/mobfox/sdk/runnables/Repeater;->delay:J

    .line 37
    .local v6, "_delay":J
    new-instance v1, Lcom/mobfox/sdk/runnables/Repeater$1;

    iget-object v3, p0, Lcom/mobfox/sdk/runnables/Repeater;->context:Landroid/content/Context;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mobfox/sdk/runnables/Repeater$1;-><init>(Lcom/mobfox/sdk/runnables/Repeater;Landroid/content/Context;Ljava/util/concurrent/Callable;Landroid/os/Handler;J)V

    iput-object v1, p0, Lcom/mobfox/sdk/runnables/Repeater;->runnable:Lcom/mobfox/sdk/runnables/MobFoxRunnable;

    .line 50
    iget-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater;->poster:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobfox/sdk/runnables/Repeater;->runnable:Lcom/mobfox/sdk/runnables/MobFoxRunnable;

    iget-wide v2, p0, Lcom/mobfox/sdk/runnables/Repeater;->delay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/mobfox/sdk/runnables/Repeater;->stop:Ljava/lang/Boolean;

    monitor-enter v1

    .line 55
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater;->stop:Ljava/lang/Boolean;

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
