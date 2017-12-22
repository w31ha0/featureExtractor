.class Lorg/chromium/net/urlconnection/MessageLoop;
.super Ljava/lang/Object;
.source "MessageLoop.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INVALID_THREAD_ID:J = -0x1L


# instance fields
.field private mLoopFailed:Z

.field private mLoopRunning:Z

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/net/urlconnection/MessageLoop;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 29
    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 37
    return-void
.end method

.method private calledOnValidThread()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 40
    iget-wide v2, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    .line 44
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private take(ZJ)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 56
    .line 58
    if-nez p1, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 66
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    throw v1

    .line 73
    :cond_1
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasLoopFailed()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    return v0
.end method

.method public loop()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/net/urlconnection/MessageLoop;->loop(I)V

    .line 84
    return-void
.end method

.method public loop(I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 94
    sget-boolean v0, Lorg/chromium/net/urlconnection/MessageLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/net/urlconnection/MessageLoop;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 97
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 98
    iget-boolean v4, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    if-eqz v4, :cond_1

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot run loop as an exception has occurred previously."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iget-boolean v4, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    if-eqz v4, :cond_2

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot run loop when it is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    iput-boolean v8, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 107
    :goto_0
    iget-boolean v4, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    if-eqz v4, :cond_4

    .line 109
    if-nez p1, :cond_3

    .line 110
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-direct {p0, v4, v6, v7}, Lorg/chromium/net/urlconnection/MessageLoop;->take(ZJ)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :goto_1
    iput-boolean v9, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 116
    iput-boolean v8, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopFailed:Z

    .line 117
    throw v0

    .line 112
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    add-long/2addr v6, v0

    invoke-direct {p0, v4, v6, v7}, Lorg/chromium/net/urlconnection/MessageLoop;->take(ZJ)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    goto :goto_1

    .line 120
    :cond_4
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lorg/chromium/net/urlconnection/MessageLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/net/urlconnection/MessageLoop;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/MessageLoop;->mLoopRunning:Z

    .line 130
    return-void
.end method
