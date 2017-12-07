.class public abstract Lc/a/a/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lc/a/a/a/b/b;

.field private b:Lc/a/a/a/b/b;

.field private c:Lc/a/a/a/b/a;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/a/a/a/b/c;->a:Lc/a/a/a/b/b;

    iput-object v0, p0, Lc/a/a/a/b/c;->b:Lc/a/a/a/b/b;

    new-instance v0, Lc/a/a/a/b/a;

    invoke-direct {v0, p0}, Lc/a/a/a/b/a;-><init>(Lc/a/a/a/b/c;)V

    iput-object v0, p0, Lc/a/a/a/b/c;->c:Lc/a/a/a/b/a;

    iget-object v0, p0, Lc/a/a/a/b/c;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0}, Lc/a/a/a/b/a;->start()V

    return-void
.end method

.method public static a()Lc/a/a/a/b/c;
    .locals 2

    invoke-static {}, Lc/a/a/a/b;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lc/a/a/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc/a/a/a/b;->a()Lc/a/a/a/b/c;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lc/a/a/a/b/c;->b()Lc/a/a/a/b/c;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/a/b;->a(Lc/a/a/a/b/c;)V

    :cond_1
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static b()Lc/a/a/a/b/c;
    .locals 2

    invoke-static {}, Lc/a/a/b/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "awt.4E"

    invoke-static {v1}, Lc/a/a/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "org.apache.harmony.awt.datatransfer.windows.WinDTK"

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :pswitch_1
    const-string v0, "org.apache.harmony.awt.datatransfer.linux.LinuxDTK"

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
