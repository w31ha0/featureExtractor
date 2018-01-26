.class final Ltwitter4j/internal/async/DispatcherImpl;
.super Ljava/lang/Object;
.source "DispatcherImpl.java"

# interfaces
.implements Ltwitter4j/internal/async/Dispatcher;


# instance fields
.field private active:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private threads:[Ltwitter4j/internal/async/ExecuteThread;

.field ticket:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ltwitter4j/internal/async/DispatcherConfiguration;)V
    .locals 5
    .param p1, "conf"    # Ltwitter4j/internal/async/DispatcherConfiguration;

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    .line 86
    iput-boolean v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    .line 42
    invoke-interface {p1}, Ltwitter4j/internal/async/DispatcherConfiguration;->getAsyncNumThreads()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/async/ExecuteThread;

    iput-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    new-instance v2, Ltwitter4j/internal/async/ExecuteThread;

    const-string v3, "Twitter4J Async Dispatcher"

    invoke-direct {v2, v3, p0, v0}, Ltwitter4j/internal/async/ExecuteThread;-><init>(Ljava/lang/String;Ltwitter4j/internal/async/DispatcherImpl;I)V

    aput-object v2, v1, v0

    .line 45
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Ltwitter4j/internal/async/ExecuteThread;->setDaemon(Z)V

    .line 46
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ltwitter4j/internal/async/ExecuteThread;->start()V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ltwitter4j/internal/async/DispatcherImpl$1;

    invoke-direct {v2, p0}, Ltwitter4j/internal/async/DispatcherImpl$1;-><init>(Ltwitter4j/internal/async/DispatcherImpl;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 55
    return-void
.end method

.method static access$000(Ltwitter4j/internal/async/DispatcherImpl;)Z
    .locals 1
    .param p0, "x0"    # Ltwitter4j/internal/async/DispatcherImpl;

    .prologue
    .line 38
    iget-boolean v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized invokeLater(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :try_start_3
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public poll()Ljava/lang/Runnable;
    .locals 4

    .prologue
    .line 67
    :goto_0
    iget-boolean v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    if-eqz v1, :cond_1

    .line 68
    iget-object v2, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 71
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 72
    monitor-exit v2

    .line 83
    .end local v0    # "task":Ljava/lang/Runnable;
    :goto_1
    return-object v0

    .line 75
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    iget-object v2, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_1
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 75
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public declared-synchronized shutdown()V
    .locals 6

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    if-eqz v4, :cond_1

    .line 90
    const/4 v4, 0x0

    iput-boolean v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    .line 91
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    .local v0, "arr$":[Ltwitter4j/internal/async/ExecuteThread;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 92
    .local v3, "thread":Ltwitter4j/internal/async/ExecuteThread;
    invoke-virtual {v3}, Ltwitter4j/internal/async/ExecuteThread;->shutdown()V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "thread":Ltwitter4j/internal/async/ExecuteThread;
    :cond_0
    iget-object v5, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    iget-object v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 96
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .end local v0    # "arr$":[Ltwitter4j/internal/async/ExecuteThread;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 98
    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already shutdown"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method