.class Lcom/android/main/MainService$1;
.super Landroid/os/Handler;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/main/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/main/MainService;


# direct methods
.method constructor <init>(Lcom/android/main/MainService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/main/MainService$1;->this$0:Lcom/android/main/MainService;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/main/MainService$1;->this$0:Lcom/android/main/MainService;

    invoke-static {v1}, Lcom/android/main/MainService;->access$0(Lcom/android/main/MainService;)V

    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "info"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
