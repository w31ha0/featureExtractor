.class public abstract La/a/k;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/r;

.field private b:Ljava/lang/Object;


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, La/a/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La/a/k;->a:La/a/r;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    iget-object v2, p0, La/a/k;->a:La/a/r;

    new-instance v3, La/a/z;

    invoke-direct {v3}, La/a/z;-><init>()V

    invoke-virtual {v2, v3, v1}, La/a/r;->a(La/a/c/a;Ljava/util/Vector;)V

    const/4 v1, 0x0

    iput-object v1, p0, La/a/k;->a:La/a/r;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, La/a/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
