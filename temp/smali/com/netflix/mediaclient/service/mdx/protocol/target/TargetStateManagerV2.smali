.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;
.super Ljava/lang/Object;
.source "TargetStateManagerV2.java"


# static fields
.field private static final STATE_CHECK_PERIOD:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "MdxTargetStateV2"


# instance fields
.field private mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field private mLastStateupdateMs:J

.field private mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

.field private mUserInitatedShouldRegpair:Z

.field private mWorkerHandler:Landroid/os/Handler;

.field private mregPairTimeOut:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mregPairTimeOut:J

    .line 25
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mLastStateupdateMs:J

    .line 28
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateInit:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->handleTimeout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mayDoPeriodicStateCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->schedulePeriodicStateCheck()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;I)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->handleSessionFailure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mUserInitatedShouldRegpair:Z

    return v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mUserInitatedShouldRegpair:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->notChangeStateMayRetry()Z

    move-result v0

    return v0
.end method

.method private handleSessionFailure(I)Z
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 287
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getRetryInterval()I

    move-result v2

    int-to-long v2, v2

    .line 289
    const-string/jumbo v4, "MdxTargetStateV2"

    const-string/jumbo v5, "SendMessageFail @%s, retry after %d"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageFailRetry:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageFailRetry:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    move v0, v1

    .line 318
    :goto_1
    return v0

    .line 293
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageFailRetry:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 294
    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->notChangeStateMayRetry()Z

    move-result v2

    if-nez v2, :cond_4

    .line 296
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->isForceSelect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    const-string/jumbo v2, "MdxTargetStateV2"

    const-string/jumbo v3, "session timeout  @%s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/16 v2, 0x64

    const-string/jumbo v3, "session timeout"

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->reportError(ILjava/lang/String;)V

    .line 305
    :cond_2
    :goto_2
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto :goto_0

    .line 301
    :cond_3
    const-string/jumbo v2, "MdxTargetStateV2"

    const-string/jumbo v3, "session retry failure @%s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/16 v2, 0x69

    const-string/jumbo v3, "session error"

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->reportError(ILjava/lang/String;)V

    goto :goto_2

    .line 308
    :cond_4
    const-string/jumbo v2, "MdxTargetStateV2"

    const-string/jumbo v3, "handle event %d, remaining @%s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 310
    :cond_5
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedBadPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 311
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateAcquirePair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 312
    :cond_6
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 313
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateStartSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 315
    :cond_7
    const-string/jumbo v2, "MdxTargetStateV2"

    const-string/jumbo v3, "event %d not handled @%s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1
.end method

.method private handleTimeout()Z
    .locals 4

    .prologue
    .line 245
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$2;->$SwitchMap$com$netflix$mediaclient$service$mdx$protocol$target$TargetStateDef$StateId:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->isRetryExhausted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->isForceSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/16 v1, 0x67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->reportError(ILjava/lang/String;)V

    .line 257
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    .line 265
    :goto_1
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private mayDoPeriodicStateCheck()Z
    .locals 6

    .prologue
    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mLastStateupdateMs:J

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mLastStateupdateMs:J

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getState()V

    .line 325
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notChangeStateMayRetry()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 271
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$2;->$SwitchMap$com$netflix$mediaclient$service$mdx$protocol$target$TargetStateDef$StateId:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->isRetryExhausted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 284
    :goto_0
    :pswitch_0
    return v0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private schedulePeriodicStateCheck()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PeriodicStateCheck:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v1

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    return-void
.end method

.method private transitionTo(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V
    .locals 5

    .prologue
    .line 199
    const-string/jumbo v0, "MdxTargetStateV2"

    const-string/jumbo v1, "(%d) state %s => %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->isSame(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$2;->$SwitchMap$com$netflix$mediaclient$service$mdx$protocol$target$TargetStateDef$StateId:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 242
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getTimeOut()I

    move-result v2

    int-to-long v2, v2

    .line 241
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    :goto_1
    :pswitch_0
    return-void

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->doPair()V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->doRegpair()V

    .line 216
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mregPairTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mregPairTimeOut:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 223
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->startSession()V

    goto :goto_0

    .line 226
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->doHandShake()V

    goto :goto_0

    .line 229
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getCapability()V

    goto :goto_0

    .line 232
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getState()V

    goto :goto_0

    .line 235
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendPendingMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    goto :goto_1

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method epxectingPairingResult()Z
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateAcquirePair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 195
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method receiveMessageEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageReceived:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v1

    iget v2, p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->value:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateInit:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 166
    return-void
.end method

.method setRegPairTimeOut(J)V
    .locals 3

    .prologue
    .line 184
    const-wide/32 v0, 0x1d4c0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 185
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mregPairTimeOut:J

    .line 187
    :cond_0
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->isForceSelect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mUserInitatedShouldRegpair:Z

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->start:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method
