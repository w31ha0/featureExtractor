.class Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;
.super Ljava/lang/Thread;
.source "ErrorLoggingManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$threadDump:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->val$ex:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->val$threadDump:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 224
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getCurrentActivityForDebug()Landroid/content/Context;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "Netflix app has crashed! :/"

    .line 227
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->message:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget v5, v5, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->counter:I

    .line 228
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    new-instance v3, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$3;-><init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;Landroid/content/Context;)V

    .line 229
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "No"

    new-instance v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$2;-><init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;)V

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$1;-><init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200f8

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->alertDialog:Landroid/app/AlertDialog;

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;->this$0:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3;->handler:Landroid/os/Handler;

    .line 257
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 258
    return-void
.end method
