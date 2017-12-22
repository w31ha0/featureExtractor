.class Lorg/chromium/base/SystemMessageHandler;
.super Landroid/os/Handler;
.source "SystemMessageHandler.java"


# annotations
.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field private static final DELAYED_SCHEDULED_WORK:I = 0x2

.field private static final SCHEDULED_WORK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "cr.SysMessageHandler"


# instance fields
.field private mDelayedScheduledTimeTicks:J

.field private mMessagePumpDelegateNative:J

.field private mMessagePumpNative:J


# direct methods
.method protected constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    .line 33
    iput-wide p3, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpNative:J

    .line 34
    return-void
.end method

.method private static create(JJ)Lorg/chromium/base/SystemMessageHandler;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lorg/chromium/base/SystemMessageHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/base/SystemMessageHandler;-><init>(JJ)V

    return-object v0
.end method

.method private native nativeDoRunLoopOnce(JJJ)V
.end method

.method private obtainAsyncMessage(I)Landroid/os/Message;
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 73
    iput p1, v0, Landroid/os/Message;->what:I

    .line 74
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/base/SystemMessageHandler$MessageCompat;->setAsynchronous(Landroid/os/Message;Z)V

    .line 75
    return-object v0
.end method

.method private removeAllPendingMessages()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    .line 66
    return-void
.end method

.method private scheduleDelayedWork(JJ)V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 54
    iget-wide v0, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v4}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    .line 57
    :cond_0
    iput-wide p1, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    .line 58
    invoke-direct {p0, v4}, Lorg/chromium/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/chromium/base/SystemMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 59
    return-void
.end method

.method private scheduleWork()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    .line 41
    :cond_0
    iget-wide v2, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    iget-wide v4, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpNative:J

    iget-wide v6, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/base/SystemMessageHandler;->nativeDoRunLoopOnce(JJJ)V

    .line 43
    return-void
.end method
