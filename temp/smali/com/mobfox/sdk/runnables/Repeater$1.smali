.class Lcom/mobfox/sdk/runnables/Repeater$1;
.super Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.source "Repeater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/runnables/Repeater;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/runnables/Repeater;

.field final synthetic val$_action:Ljava/util/concurrent/Callable;

.field final synthetic val$_delay:J

.field final synthetic val$_poster:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/runnables/Repeater;Landroid/content/Context;Ljava/util/concurrent/Callable;Landroid/os/Handler;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/mobfox/sdk/runnables/Repeater;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->this$0:Lcom/mobfox/sdk/runnables/Repeater;

    iput-object p3, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->val$_action:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->val$_poster:Landroid/os/Handler;

    iput-wide p5, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->val$_delay:J

    invoke-direct {p0, p2}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->this$0:Lcom/mobfox/sdk/runnables/Repeater;

    iget-object v1, v0, Lcom/mobfox/sdk/runnables/Repeater;->stop:Ljava/lang/Boolean;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->this$0:Lcom/mobfox/sdk/runnables/Repeater;

    iget-object v0, v0, Lcom/mobfox/sdk/runnables/Repeater;->stop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->val$_action:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_1
    iget-object v0, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->val$_poster:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->this$0:Lcom/mobfox/sdk/runnables/Repeater;

    iget-object v1, v1, Lcom/mobfox/sdk/runnables/Repeater;->runnable:Lcom/mobfox/sdk/runnables/MobFoxRunnable;

    iget-wide v2, p0, Lcom/mobfox/sdk/runnables/Repeater$1;->val$_delay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_1
.end method
