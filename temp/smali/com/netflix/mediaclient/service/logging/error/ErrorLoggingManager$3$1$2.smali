.class Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$2;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1$2;->this$1:Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 240
    return-void
.end method
