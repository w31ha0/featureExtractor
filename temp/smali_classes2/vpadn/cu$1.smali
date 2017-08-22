.class Lvpadn/cu$1;
.super Ljava/lang/Object;
.source "VideoTrackingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lvpadn/ct;

.field final synthetic d:Lvpadn/cu;


# direct methods
.method constructor <init>(Lvpadn/cu;Ljava/lang/String;Ljava/lang/String;Lvpadn/ct;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lvpadn/cu$1;->d:Lvpadn/cu;

    iput-object p2, p0, Lvpadn/cu$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lvpadn/cu$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lvpadn/cu$1;->c:Lvpadn/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    :try_start_0
    new-instance v1, Lvpadn/cu$1$1;

    invoke-direct {v1, p0}, Lvpadn/cu$1$1;-><init>(Lvpadn/cu$1;)V

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 442
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    const-string v1, "VideoTrackingManager"

    const-string v2, "sendHttpGet throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
