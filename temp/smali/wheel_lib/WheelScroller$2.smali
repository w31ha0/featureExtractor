.class Lwheel_lib/WheelScroller$2;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwheel_lib/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwheel_lib/WheelScroller;


# direct methods
.method constructor <init>(Lwheel_lib/WheelScroller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 182
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$1(Lwheel_lib/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 183
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$1(Lwheel_lib/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 184
    .local v0, "currY":I
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$2(Lwheel_lib/WheelScroller;)I

    move-result v2

    sub-int v1, v2, v0

    .line 185
    .local v1, "delta":I
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2, v0}, Lwheel_lib/WheelScroller;->access$0(Lwheel_lib/WheelScroller;I)V

    .line 186
    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$4(Lwheel_lib/WheelScroller;)Lwheel_lib/WheelScroller$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lwheel_lib/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 192
    :cond_0
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$1(Lwheel_lib/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 193
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$1(Lwheel_lib/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 194
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$1(Lwheel_lib/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 196
    :cond_1
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$1(Lwheel_lib/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$5(Lwheel_lib/WheelScroller;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_3

    .line 199
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-static {v2}, Lwheel_lib/WheelScroller;->access$6(Lwheel_lib/WheelScroller;)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v2, p0, Lwheel_lib/WheelScroller$2;->this$0:Lwheel_lib/WheelScroller;

    invoke-virtual {v2}, Lwheel_lib/WheelScroller;->finishScrolling()V

    goto :goto_0
.end method
