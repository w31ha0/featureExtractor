.class public Lvpadn/be;
.super Ljava/lang/Object;
.source "ConcurrentAsyncTask.java"


# direct methods
.method public static a(Landroid/os/AsyncTask;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 9
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 13
    :goto_0
    return-void

    .line 11
    :cond_0
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
