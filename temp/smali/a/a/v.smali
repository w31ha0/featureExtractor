.class public abstract La/a/v;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/lang/String;

.field private c:La/a/j;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La/a/v;->a:Ljava/util/Vector;

    const-string v0, "multipart/mixed"

    iput-object v0, p0, La/a/v;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(La/a/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/v;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La/a/v;->a:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, La/a/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, La/a/b;->a(La/a/v;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(La/a/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, La/a/v;->c:La/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/v;->b:Ljava/lang/String;

    return-object v0
.end method
