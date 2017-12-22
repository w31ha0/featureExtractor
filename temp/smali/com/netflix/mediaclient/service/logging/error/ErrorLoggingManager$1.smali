.class final Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/ExportDebugData;->markCrashed(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method
