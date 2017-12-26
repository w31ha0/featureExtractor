.class public La/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/j",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, La/g;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, La/k;->a:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {}, La/g;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, La/k;->c:Ljava/util/concurrent/Executor;

    .line 43
    invoke-static {}, La/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, La/k;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/k;->d:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/k;->i:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/Exception;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "La/k",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, La/k;->a()La/s;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, La/s;->b(Ljava/lang/Exception;)V

    .line 139
    invoke-virtual {v0}, La/s;->a()La/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "La/k",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, La/k;->a()La/s;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, La/s;->b(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, La/s;->a()La/k;

    move-result-object v0

    return-object v0
.end method

.method public static a()La/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "La/k",
            "<TTResult;>.a/s;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    .line 64
    new-instance v1, La/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, La/s;-><init>(La/k;La/l;)V

    return-object v1
.end method

.method static synthetic a(La/k;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, La/k;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(La/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, La/k;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(La/k;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, La/k;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, La/k;->c(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(La/k;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, La/k;->e:Z

    return p1
.end method

.method static synthetic b(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, La/k;->d(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(La/k;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, La/k;->e:Z

    return v0
.end method

.method static synthetic b(La/k;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, La/k;->f:Z

    return p1
.end method

.method static synthetic c(La/k;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, La/k;->h()V

    return-void
.end method

.method private static c(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/k",
            "<TTContinuationResult;>.a/s;",
            "La/j",
            "<TTResult;TTContinuationResult;>;",
            "La/k",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, La/r;

    invoke-direct {v0, p1, p2, p0}, La/r;-><init>(La/j;La/k;La/s;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method private static d(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/k",
            "<TTContinuationResult;>.a/s;",
            "La/j",
            "<TTResult;",
            "La/k",
            "<TTContinuationResult;>;>;",
            "La/k",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, La/m;

    invoke-direct {v0, p1, p2, p0}, La/m;-><init>(La/j;La/k;La/s;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method public static g()La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "La/k",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, La/k;->a()La/s;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, La/s;->c()V

    .line 148
    invoke-virtual {v0}, La/s;->a()La/k;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 503
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, La/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :try_start_1
    invoke-interface {v0, p0}, La/j;->then(La/k;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    :try_start_2
    throw v0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 509
    :catch_1
    move-exception v0

    .line 510
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 513
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/k;->i:Ljava/util/List;

    .line 514
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    return-void
.end method


# virtual methods
.method public a(La/j;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;TTContinuationResult;>;)",
            "La/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 325
    sget-object v0, La/k;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, La/k;->a(La/j;Ljava/util/concurrent/Executor;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public a(La/j;Ljava/util/concurrent/Executor;)La/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {}, La/k;->a()La/s;

    move-result-object v0

    .line 301
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    invoke-virtual {p0}, La/k;->b()Z

    move-result v2

    .line 303
    if-nez v2, :cond_0

    .line 304
    iget-object v3, p0, La/k;->i:Ljava/util/List;

    new-instance v4, La/o;

    invoke-direct {v4, p0, v0, p1, p2}, La/o;-><init>(La/k;La/s;La/j;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    if-eqz v2, :cond_1

    .line 314
    invoke-static {v0, p1, p0, p2}, La/k;->c(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V

    .line 316
    :cond_1
    invoke-virtual {v0}, La/s;->a()La/k;

    move-result-object v0

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(La/j;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;TTContinuationResult;>;)",
            "La/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, La/k;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, La/k;->c(La/j;Ljava/util/concurrent/Executor;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public b(La/j;Ljava/util/concurrent/Executor;)La/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;",
            "La/k",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, La/k;->a()La/s;

    move-result-object v0

    .line 336
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    invoke-virtual {p0}, La/k;->b()Z

    move-result v2

    .line 338
    if-nez v2, :cond_0

    .line 339
    iget-object v3, p0, La/k;->i:Ljava/util/List;

    new-instance v4, La/p;

    invoke-direct {v4, p0, v0, p1, p2}, La/p;-><init>(La/k;La/s;La/j;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    if-eqz v2, :cond_1

    .line 349
    invoke-static {v0, p1, p0, p2}, La/k;->d(La/s;La/j;La/k;Ljava/util/concurrent/Executor;)V

    .line 351
    :cond_1
    invoke-virtual {v0}, La/s;->a()La/k;

    move-result-object v0

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v0, p0, La/k;->e:Z

    monitor-exit v1

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(La/j;Ljava/util/concurrent/Executor;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, La/q;

    invoke-direct {v0, p0, p1}, La/q;-><init>(La/k;La/j;)V

    invoke-virtual {p0, v0, p2}, La/k;->b(La/j;Ljava/util/concurrent/Executor;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, La/k;->f:Z

    monitor-exit v1

    return v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, La/k;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, La/k;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, La/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, La/k;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
