.class final La/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:La/a/af;

.field private b:La/a/af;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/r;->a:La/a/af;

    iput-object v0, p0, La/a/r;->b:La/a/af;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/a/r;->c:Ljava/lang/Thread;

    iget-object v0, p0, La/a/r;->c:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, La/a/r;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private declared-synchronized a()La/a/af;
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, La/a/r;->b:La/a/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/r;->b:La/a/af;

    iget-object v1, v0, La/a/af;->b:La/a/af;

    iput-object v1, p0, La/a/r;->b:La/a/af;

    iget-object v1, p0, La/a/r;->b:La/a/af;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, La/a/r;->a:La/a/af;

    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, La/a/af;->a:La/a/af;

    iput-object v1, v0, La/a/af;->b:La/a/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v1, p0, La/a/r;->b:La/a/af;

    const/4 v2, 0x0

    iput-object v2, v1, La/a/af;->a:La/a/af;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(La/a/c/a;Ljava/util/Vector;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, La/a/af;

    invoke-direct {v0, p1, p2}, La/a/af;-><init>(La/a/c/a;Ljava/util/Vector;)V

    iget-object v1, p0, La/a/r;->a:La/a/af;

    if-nez v1, :cond_0

    iput-object v0, p0, La/a/r;->a:La/a/af;

    iput-object v0, p0, La/a/r;->b:La/a/af;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, La/a/r;->a:La/a/af;

    iput-object v1, v0, La/a/af;->a:La/a/af;

    iget-object v1, p0, La/a/r;->a:La/a/af;

    iput-object v0, v1, La/a/af;->b:La/a/af;

    iput-object v0, p0, La/a/r;->a:La/a/af;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    :cond_0
    :try_start_0
    invoke-direct {p0}, La/a/r;->a()La/a/af;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, v0, La/a/af;->c:La/a/c/a;

    iget-object v0, v0, La/a/af;->d:Ljava/util/Vector;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ge v2, v3, :cond_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    invoke-virtual {v1}, La/a/c/a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    instance-of v3, v3, Ljava/lang/InterruptedException;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v3, :cond_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method
