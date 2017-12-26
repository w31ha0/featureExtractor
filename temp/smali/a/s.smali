.class public La/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:La/k;


# direct methods
.method private constructor <init>(La/k;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, La/s;->a:La/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    return-void
.end method

.method synthetic constructor <init>(La/k;La/l;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0, p1}, La/s;-><init>(La/k;)V

    return-void
.end method


# virtual methods
.method public a()La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/k",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, La/s;->a:La/k;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 570
    iget-object v1, p0, La/s;->a:La/k;

    invoke-static {v1}, La/k;->a(La/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 571
    :try_start_0
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->b(La/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    const/4 v0, 0x0

    monitor-exit v1

    .line 578
    :goto_0
    return v0

    .line 574
    :cond_0
    iget-object v2, p0, La/s;->a:La/k;

    const/4 v3, 0x1

    invoke-static {v2, v3}, La/k;->a(La/k;Z)Z

    .line 575
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2, p1}, La/k;->a(La/k;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 576
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->a(La/k;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 577
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->c(La/k;)V

    .line 578
    monitor-exit v1

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 554
    iget-object v1, p0, La/s;->a:La/k;

    invoke-static {v1}, La/k;->a(La/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->b(La/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    const/4 v0, 0x0

    monitor-exit v1

    .line 562
    :goto_0
    return v0

    .line 558
    :cond_0
    iget-object v2, p0, La/s;->a:La/k;

    const/4 v3, 0x1

    invoke-static {v2, v3}, La/k;->a(La/k;Z)Z

    .line 559
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2, p1}, La/k;->a(La/k;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->a(La/k;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 561
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->c(La/k;)V

    .line 562
    monitor-exit v1

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 604
    invoke-virtual {p0, p1}, La/s;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0, p1}, La/s;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 538
    iget-object v1, p0, La/s;->a:La/k;

    invoke-static {v1}, La/k;->a(La/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 539
    :try_start_0
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->b(La/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const/4 v0, 0x0

    monitor-exit v1

    .line 546
    :goto_0
    return v0

    .line 542
    :cond_0
    iget-object v2, p0, La/s;->a:La/k;

    const/4 v3, 0x1

    invoke-static {v2, v3}, La/k;->a(La/k;Z)Z

    .line 543
    iget-object v2, p0, La/s;->a:La/k;

    const/4 v3, 0x1

    invoke-static {v2, v3}, La/k;->b(La/k;Z)Z

    .line 544
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->a(La/k;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 545
    iget-object v2, p0, La/s;->a:La/k;

    invoke-static {v2}, La/k;->c(La/k;)V

    .line 546
    monitor-exit v1

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, La/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    return-void
.end method
