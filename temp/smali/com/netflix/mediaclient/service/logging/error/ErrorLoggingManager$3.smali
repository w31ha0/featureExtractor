.class final Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field counter:I

.field handler:Landroid/os/Handler;

.field message:Ljava/lang/String;

.field final synthetic val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 203
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->handler:Landroid/os/Handler;

    .line 205
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->alertDialog:Landroid/app/AlertDialog;

    .line 206
    const/16 v0, 0xf

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->counter:I

    .line 207
    const-string/jumbo v0, "Do you want to report it? You have %s seconds to do so."

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 213
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/ThreadUtils;->dumpThreads(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "AndroidRuntime"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    new-instance v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;-><init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->start()V

    .line 262
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;-><init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 279
    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->counter:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 286
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string/jumbo v1, "AndroidRuntime"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
