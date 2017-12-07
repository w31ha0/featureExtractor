.class public abstract La/a/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/ae;

.field private b:La/a/p;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Vector;

.field private f:La/a/r;

.field private g:Ljava/lang/Object;


# direct methods
.method private declared-synchronized a(La/a/p;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, La/a/aa;->b:La/a/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, La/a/aa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/aa;->b:La/a/p;

    if-eqz v0, :cond_8

    iget-object v0, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v0}, La/a/p;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v1}, La/a/p;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v2}, La/a/p;->a()I

    move-result v2

    iget-object v3, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v3}, La/a/p;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v4}, La/a/p;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v5}, La/a/p;->c()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, v4

    move-object v4, v9

    move v10, v2

    move-object v2, v3

    move v3, v10

    :goto_0
    if-eqz v1, :cond_7

    if-nez v5, :cond_1

    iget-object v5, p0, La/a/aa;->a:La/a/ae;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".host"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-nez v2, :cond_7

    iget-object v2, p0, La/a/aa;->a:La/a/ae;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".user"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move-object v2, v5

    move-object v5, v9

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, La/a/aa;->a:La/a/ae;

    const-string v6, "mail.host"

    invoke-virtual {v2, v6}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v5, :cond_3

    iget-object v5, p0, La/a/aa;->a:La/a/ae;

    const-string v6, "mail.user"

    invoke-virtual {v5, v6}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    :cond_3
    if-nez v5, :cond_4

    :try_start_2
    const-string v6, "user.name"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :cond_4
    :goto_2
    if-nez v0, :cond_6

    :try_start_3
    iget-object v0, p0, La/a/aa;->b:La/a/p;

    if-eqz v0, :cond_6

    new-instance v0, La/a/p;

    invoke-direct/range {v0 .. v5}, La/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/aa;->a(La/a/p;)V

    iget-object v0, p0, La/a/aa;->a:La/a/ae;

    invoke-direct {p0}, La/a/aa;->e()La/a/p;

    move-result-object v4

    invoke-virtual {v0, v4}, La/a/ae;->a(La/a/p;)La/a/ab;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez v5, :cond_5

    invoke-virtual {v0}, La/a/ab;->a()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :goto_3
    :try_start_4
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    :goto_4
    :try_start_5
    iget-object v4, p0, La/a/aa;->a:La/a/ae;

    invoke-virtual {v4, v2, v3, v1, v0}, La/a/ae;->a(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)La/a/ab;

    new-instance v0, La/a/m;

    invoke-direct {v0}, La/a/m;-><init>()V

    throw v0

    :catch_0
    move-exception v6

    iget-boolean v7, p0, La/a/aa;->c:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, La/a/aa;->a:La/a/ae;

    invoke-virtual {v7}, La/a/ae;->b()Ljava/io/PrintStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, La/a/ab;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    move-object v0, v5

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v2, v8

    goto :goto_4

    :cond_7
    move-object v9, v2

    move-object v2, v5

    move-object v5, v9

    goto :goto_1

    :cond_8
    move-object v4, v8

    move-object v1, v8

    move-object v0, p4

    move-object v2, p3

    move v3, p2

    move-object v5, p1

    goto/16 :goto_0
.end method

.method private declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/aa;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, La/a/aa;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()La/a/p;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/aa;->b:La/a/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v0}, La/a/p;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v0}, La/a/p;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, La/a/p;

    iget-object v1, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v1}, La/a/p;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v2}, La/a/p;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v3}, La/a/p;->a()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, La/a/aa;->b:La/a/p;

    invoke-virtual {v5}, La/a/p;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, La/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, La/a/aa;->b:La/a/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/aa;->e:Ljava/util/Vector;

    if-eqz v0, :cond_1

    new-instance v1, La/a/c/b;

    invoke-direct {v1, p0}, La/a/c/b;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/aa;->e:Ljava/util/Vector;

    iget-object v2, p0, La/a/aa;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, La/a/aa;->f:La/a/r;

    if-nez v3, :cond_0

    new-instance v3, La/a/r;

    invoke-direct {v3}, La/a/r;-><init>()V

    iput-object v3, p0, La/a/aa;->f:La/a/r;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iget-object v2, p0, La/a/aa;->f:La/a/r;

    invoke-virtual {v2, v1, v0}, La/a/r;->a(La/a/c/a;Ljava/util/Vector;)V

    :cond_1
    invoke-direct {p0}, La/a/aa;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, La/a/aa;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La/a/aa;->f:La/a/r;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    iget-object v2, p0, La/a/aa;->f:La/a/r;

    new-instance v3, La/a/n;

    invoke-direct {v3}, La/a/n;-><init>()V

    invoke-virtual {v2, v3, v1}, La/a/r;->a(La/a/c/a;Ljava/util/Vector;)V

    const/4 v1, 0x0

    iput-object v1, p0, La/a/aa;->f:La/a/r;

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


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, v1, v1}, La/a/aa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, La/a/aa;->d()V

    invoke-direct {p0}, La/a/aa;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, La/a/aa;->g()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, La/a/aa;->e()La/a/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/p;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
