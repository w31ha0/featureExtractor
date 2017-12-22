.class Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;

.field final synthetic val$currentActivityForDebug:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;->val$currentActivityForDebug:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;->val$currentActivityForDebug:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->val$ex:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->val$threadDump:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/ExportDebugData;->createBugReportFromCrash(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 235
    return-void
.end method
