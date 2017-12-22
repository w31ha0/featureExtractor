.class Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->alertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->message:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2$1;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;

    iget-object v4, v4, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$2;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget v5, v4, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->counter:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->counter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    return-void
.end method
