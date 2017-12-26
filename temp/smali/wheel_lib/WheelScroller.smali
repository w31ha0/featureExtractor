.class public Lwheel_lib/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwheel_lib/WheelScroller$ScrollingListener;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x190


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollY:I

.field private lastTouchedY:F

.field private listener:Lwheel_lib/WheelScroller$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwheel_lib/WheelScroller$ScrollingListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwheel_lib/WheelScroller$ScrollingListener;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lwheel_lib/WheelScroller$1;

    invoke-direct {v0, p0}, Lwheel_lib/WheelScroller$1;-><init>(Lwheel_lib/WheelScroller;)V

    iput-object v0, p0, Lwheel_lib/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 158
    iput v2, p0, Lwheel_lib/WheelScroller;->MESSAGE_SCROLL:I

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lwheel_lib/WheelScroller;->MESSAGE_JUSTIFY:I

    .line 180
    new-instance v0, Lwheel_lib/WheelScroller$2;

    invoke-direct {v0, p0}, Lwheel_lib/WheelScroller$2;-><init>(Lwheel_lib/WheelScroller;)V

    iput-object v0, p0, Lwheel_lib/WheelScroller;->animationHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lwheel_lib/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lwheel_lib/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 68
    iget-object v0, p0, Lwheel_lib/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 70
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 72
    iput-object p2, p0, Lwheel_lib/WheelScroller;->listener:Lwheel_lib/WheelScroller$ScrollingListener;

    .line 73
    iput-object p1, p0, Lwheel_lib/WheelScroller;->context:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lwheel_lib/WheelScroller;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lwheel_lib/WheelScroller;->lastScrollY:I

    return-void
.end method

.method static synthetic access$1(Lwheel_lib/WheelScroller;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2(Lwheel_lib/WheelScroller;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lwheel_lib/WheelScroller;->lastScrollY:I

    return v0
.end method

.method static synthetic access$3(Lwheel_lib/WheelScroller;I)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lwheel_lib/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$4(Lwheel_lib/WheelScroller;)Lwheel_lib/WheelScroller$ScrollingListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lwheel_lib/WheelScroller;->listener:Lwheel_lib/WheelScroller$ScrollingListener;

    return-object v0
.end method

.method static synthetic access$5(Lwheel_lib/WheelScroller;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lwheel_lib/WheelScroller;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lwheel_lib/WheelScroller;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lwheel_lib/WheelScroller;->justify()V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lwheel_lib/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lwheel_lib/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    return-void
.end method

.method private justify()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lwheel_lib/WheelScroller;->listener:Lwheel_lib/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lwheel_lib/WheelScroller$ScrollingListener;->onJustify()V

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lwheel_lib/WheelScroller;->setNextMessage(I)V

    .line 212
    return-void
.end method

.method private setNextMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 167
    invoke-direct {p0}, Lwheel_lib/WheelScroller;->clearMessages()V

    .line 168
    iget-object v0, p0, Lwheel_lib/WheelScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lwheel_lib/WheelScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwheel_lib/WheelScroller;->isScrollingPerformed:Z

    .line 220
    iget-object v0, p0, Lwheel_lib/WheelScroller;->listener:Lwheel_lib/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lwheel_lib/WheelScroller$ScrollingListener;->onStarted()V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lwheel_lib/WheelScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lwheel_lib/WheelScroller;->listener:Lwheel_lib/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lwheel_lib/WheelScroller$ScrollingListener;->onFinished()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwheel_lib/WheelScroller;->isScrollingPerformed:Z

    .line 232
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lwheel_lib/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 133
    invoke-direct {p0}, Lwheel_lib/WheelScroller;->justify()V

    .line 136
    :cond_1
    return v3

    .line 116
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lwheel_lib/WheelScroller;->lastTouchedY:F

    .line 117
    iget-object v1, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 118
    invoke-direct {p0}, Lwheel_lib/WheelScroller;->clearMessages()V

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lwheel_lib/WheelScroller;->lastTouchedY:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 124
    .local v0, "distanceY":I
    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lwheel_lib/WheelScroller;->startScrolling()V

    .line 126
    iget-object v1, p0, Lwheel_lib/WheelScroller;->listener:Lwheel_lib/WheelScroller$ScrollingListener;

    invoke-interface {v1, v0}, Lwheel_lib/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lwheel_lib/WheelScroller;->lastTouchedY:F

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public scroll(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 93
    iput v1, p0, Lwheel_lib/WheelScroller;->lastScrollY:I

    .line 95
    iget-object v0, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v5, p2

    :goto_0
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 96
    invoke-direct {p0, v1}, Lwheel_lib/WheelScroller;->setNextMessage(I)V

    .line 98
    invoke-direct {p0}, Lwheel_lib/WheelScroller;->startScrolling()V

    .line 99
    return-void

    .line 95
    :cond_0
    const/16 v5, 0x190

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 81
    iget-object v0, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 82
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lwheel_lib/WheelScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 83
    return-void
.end method

.method public stopScrolling()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lwheel_lib/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 106
    return-void
.end method
