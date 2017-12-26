.class Lwheel_lib/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lwheel_lib/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwheel_lib/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwheel_lib/WheelView;


# direct methods
.method constructor <init>(Lwheel_lib/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v0}, Lwheel_lib/WheelView;->access$5(Lwheel_lib/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-virtual {v0}, Lwheel_lib/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 148
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v0, v1}, Lwheel_lib/WheelView;->access$0(Lwheel_lib/WheelView;Z)V

    .line 151
    :cond_0
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v0, v1}, Lwheel_lib/WheelView;->access$3(Lwheel_lib/WheelView;I)V

    .line 152
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-virtual {v0}, Lwheel_lib/WheelView;->invalidate()V

    .line 153
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v0}, Lwheel_lib/WheelView;->access$2(Lwheel_lib/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v0}, Lwheel_lib/WheelView;->access$4(Lwheel_lib/WheelView;)Lwheel_lib/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v1}, Lwheel_lib/WheelView;->access$2(Lwheel_lib/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lwheel_lib/WheelScroller;->scroll(II)V

    .line 159
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v1, p1}, Lwheel_lib/WheelView;->access$1(Lwheel_lib/WheelView;I)V

    .line 135
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getHeight()I

    move-result v0

    .line 136
    .local v0, "height":I
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v1}, Lwheel_lib/WheelView;->access$2(Lwheel_lib/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 137
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v1, v0}, Lwheel_lib/WheelView;->access$3(Lwheel_lib/WheelView;I)V

    .line 138
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v1}, Lwheel_lib/WheelView;->access$4(Lwheel_lib/WheelView;)Lwheel_lib/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lwheel_lib/WheelScroller;->stopScrolling()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v1}, Lwheel_lib/WheelView;->access$2(Lwheel_lib/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    neg-int v2, v0

    invoke-static {v1, v2}, Lwheel_lib/WheelView;->access$3(Lwheel_lib/WheelView;I)V

    .line 141
    iget-object v1, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-static {v1}, Lwheel_lib/WheelView;->access$4(Lwheel_lib/WheelView;)Lwheel_lib/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lwheel_lib/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lwheel_lib/WheelView;->access$0(Lwheel_lib/WheelView;Z)V

    .line 129
    iget-object v0, p0, Lwheel_lib/WheelView$1;->this$0:Lwheel_lib/WheelView;

    invoke-virtual {v0}, Lwheel_lib/WheelView;->notifyScrollingListenersAboutStart()V

    .line 130
    return-void
.end method
