.class Lcom/rainbow/FMaj/GameView$RefreshHandler;
.super Landroid/os/Handler;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rainbow/FMaj/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rainbow/FMaj/GameView;


# direct methods
.method constructor <init>(Lcom/rainbow/FMaj/GameView;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/rainbow/FMaj/GameView$RefreshHandler;->this$0:Lcom/rainbow/FMaj/GameView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView$RefreshHandler;->this$0:Lcom/rainbow/FMaj/GameView;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/rainbow/FMaj/GameView;->UpData(I)V

    .line 160
    return-void
.end method

.method public sleep(II)V
    .locals 3
    .param p1, "delayMillis"    # I
    .param p2, "nWhat"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->removeMessages(I)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 166
    return-void
.end method
