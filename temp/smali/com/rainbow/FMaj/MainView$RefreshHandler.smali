.class Lcom/rainbow/FMaj/MainView$RefreshHandler;
.super Landroid/os/Handler;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rainbow/FMaj/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rainbow/FMaj/MainView;


# direct methods
.method constructor <init>(Lcom/rainbow/FMaj/MainView;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/rainbow/FMaj/MainView$RefreshHandler;->this$0:Lcom/rainbow/FMaj/MainView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView$RefreshHandler;->this$0:Lcom/rainbow/FMaj/MainView;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/rainbow/FMaj/MainView;->UpData(I)V

    .line 28
    return-void
.end method

.method public sleep(II)V
    .locals 3
    .param p1, "delayMillis"    # I
    .param p2, "nWhat"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rainbow/FMaj/MainView$RefreshHandler;->removeMessages(I)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/rainbow/FMaj/MainView$RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/rainbow/FMaj/MainView$RefreshHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    return-void
.end method
