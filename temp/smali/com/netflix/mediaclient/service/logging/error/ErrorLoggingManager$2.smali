.class final Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$critDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic val$globalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$globalContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$critDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/util/log/ExceptionLogClUtils;->reportUnhandledExceptionToCL(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$globalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "AimLow7480_%d "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$globalContext:Landroid/content/Context;

    .line 149
    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellIdForTest(Ljava/lang/Class;Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$globalContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/ExportDebugData;->markCrashed(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;->val$critDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 164
    return-void

    .line 158
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    .line 159
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPY-9027 - got throwable while wrapping stack trace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const-string/jumbo v2, "nf_log_crit"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
