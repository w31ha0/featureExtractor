.class public Lb/a/a/a/a/c/w;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lb/a/a/a/a/c/w;->a:I

    .line 20
    sget v0, Lb/a/a/a/a/c/w;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lb/a/a/a/a/c/w;->b:I

    .line 21
    sget v0, Lb/a/a/a/a/c/w;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lb/a/a/a/a/c/w;->c:I

    return-void
.end method

.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lb/a/a/a/a/c/m;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Lb/a/a/a/a/c/l;",
            ":",
            "Lb/a/a/a/a/c/y;",
            ":",
            "Lb/a/a/a/a/c/u;",
            ">(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lb/a/a/a/a/c/m",
            "<TT;>;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    invoke-virtual {p0}, Lb/a/a/a/a/c/w;->prestartAllCoreThreads()I

    .line 34
    return-void
.end method

.method public static a()Lb/a/a/a/a/c/w;
    .locals 2

    .prologue
    .line 64
    sget v0, Lb/a/a/a/a/c/w;->b:I

    sget v1, Lb/a/a/a/a/c/w;->c:I

    invoke-static {v0, v1}, Lb/a/a/a/a/c/w;->a(II)Lb/a/a/a/a/c/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lb/a/a/a/a/c/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Lb/a/a/a/a/c/l;",
            ":",
            "Lb/a/a/a/a/c/y;",
            ":",
            "Lb/a/a/a/a/c/u;",
            ">(II)",
            "Lb/a/a/a/a/c/w;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lb/a/a/a/a/c/w;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lb/a/a/a/a/c/m;

    invoke-direct {v6}, Lb/a/a/a/a/c/m;-><init>()V

    new-instance v7, Lb/a/a/a/a/c/x;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Lb/a/a/a/a/c/x;-><init>(I)V

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lb/a/a/a/a/c/w;-><init>(IIJLjava/util/concurrent/TimeUnit;Lb/a/a/a/a/c/m;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lb/a/a/a/a/c/y;

    .line 90
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lb/a/a/a/a/c/y;->b(Z)V

    .line 91
    invoke-interface {v0, p2}, Lb/a/a/a/a/c/y;->a(Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p0}, Lb/a/a/a/a/c/w;->b()Lb/a/a/a/a/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/c/m;->d()V

    .line 95
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public b()Lb/a/a/a/a/c/m;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/m;

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lb/a/a/a/a/c/v;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/a/c/w;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lb/a/a/a/a/c/w;->b()Lb/a/a/a/a/c/m;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lb/a/a/a/a/c/t;

    invoke-direct {v0, p1, p2}, Lb/a/a/a/a/c/t;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lb/a/a/a/a/c/t;

    invoke-direct {v0, p1}, Lb/a/a/a/a/c/t;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
