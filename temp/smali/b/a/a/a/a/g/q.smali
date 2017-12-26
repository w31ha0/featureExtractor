.class public Lb/a/a/a/a/g/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lb/a/a/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lb/a/a/a/a/g/v;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lb/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/a/g/q;->d:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lb/a/a/a/a/g/r;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lb/a/a/a/a/g/q;-><init>()V

    return-void
.end method

.method public static a()Lb/a/a/a/a/g/q;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lb/a/a/a/a/g/s;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    return-object v0
.end method

.method private a(Lb/a/a/a/a/g/w;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lb/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lb/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 164
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lb/a/a/a/p;Lb/a/a/a/a/b/z;Lb/a/a/a/a/e/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a/a/g/q;
    .locals 14

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lb/a/a/a/a/g/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 93
    :goto_0
    monitor-exit p0

    return-object v2

    .line 65
    :cond_0
    :try_start_1
    iget-object v2, p0, Lb/a/a/a/a/g/q;->c:Lb/a/a/a/a/g/v;

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p1}, Lb/a/a/a/p;->C()Landroid/content/Context;

    move-result-object v2

    .line 67
    invoke-virtual/range {p2 .. p2}, Lb/a/a/a/a/b/z;->c()Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v3, Lb/a/a/a/a/b/k;

    invoke-direct {v3}, Lb/a/a/a/a/b/k;-><init>()V

    invoke-virtual {v3, v2}, Lb/a/a/a/a/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual/range {p2 .. p2}, Lb/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v6

    .line 70
    new-instance v10, Lb/a/a/a/a/b/aj;

    invoke-direct {v10}, Lb/a/a/a/a/b/aj;-><init>()V

    .line 71
    new-instance v11, Lb/a/a/a/a/g/k;

    invoke-direct {v11}, Lb/a/a/a/a/g/k;-><init>()V

    .line 72
    new-instance v12, Lb/a/a/a/a/g/i;

    invoke-direct {v12, p1}, Lb/a/a/a/a/g/i;-><init>(Lb/a/a/a/p;)V

    .line 73
    invoke-static {v2}, Lb/a/a/a/a/b/m;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 74
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v8, v13

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 76
    new-instance v13, Lb/a/a/a/a/g/l;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {v13, p1, v0, v5, v1}, Lb/a/a/a/a/g/l;-><init>(Lb/a/a/a/p;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;)V

    .line 79
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lb/a/a/a/a/b/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2}, Lb/a/a/a/a/b/m;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v5}, Lb/a/a/a/a/b/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v6}, Lb/a/a/a/a/b/t;->a(Ljava/lang/String;)Lb/a/a/a/a/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a/a/b/t;->a()I

    move-result v8

    .line 85
    new-instance v2, Lb/a/a/a/a/g/z;

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Lb/a/a/a/a/g/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    new-instance v3, Lb/a/a/a/a/g/j;

    move-object v4, p1

    move-object v5, v2

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lb/a/a/a/a/g/j;-><init>(Lb/a/a/a/p;Lb/a/a/a/a/g/z;Lb/a/a/a/a/b/s;Lb/a/a/a/a/g/y;Lb/a/a/a/a/g/g;Lb/a/a/a/a/g/aa;)V

    iput-object v3, p0, Lb/a/a/a/a/g/q;->c:Lb/a/a/a/a/g/v;

    .line 92
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lb/a/a/a/a/g/q;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, p0

    .line 93
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public a(Lb/a/a/a/a/g/t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/a/a/a/g/t",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lb/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/g/w;

    .line 114
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p1, v0}, Lb/a/a/a/a/g/t;->b(Lb/a/a/a/a/g/w;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public b()Lb/a/a/a/a/g/w;
    .locals 3

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lb/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 126
    iget-object v0, p0, Lb/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/g/w;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/a/g/q;->c:Lb/a/a/a/a/g/v;

    invoke-interface {v0}, Lb/a/a/a/a/g/v;->a()Lb/a/a/a/a/g/w;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lb/a/a/a/a/g/q;->a(Lb/a/a/a/a/g/w;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 5

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/a/g/q;->c:Lb/a/a/a/a/g/v;

    sget-object v1, Lb/a/a/a/a/g/u;->b:Lb/a/a/a/a/g/u;

    invoke-interface {v0, v1}, Lb/a/a/a/a/g/v;->a(Lb/a/a/a/a/g/u;)Lb/a/a/a/a/g/w;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lb/a/a/a/a/g/q;->a(Lb/a/a/a/a/g/w;)V

    .line 153
    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
