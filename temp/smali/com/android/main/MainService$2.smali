.class Lcom/android/main/MainService$2;
.super Ljava/util/TimerTask;
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
    iput-object p1, p0, Lcom/android/main/MainService$2;->this$0:Lcom/android/main/MainService;

    .line 83
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 86
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    iget-object v1, p0, Lcom/android/main/MainService$2;->this$0:Lcom/android/main/MainService;

    iget-object v1, v1, Lcom/android/main/MainService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method
