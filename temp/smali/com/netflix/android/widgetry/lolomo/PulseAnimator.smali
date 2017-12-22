.class public Lcom/netflix/android/widgetry/lolomo/PulseAnimator;
.super Ljava/lang/Object;
.source "PulseAnimator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PulseAnimator"


# instance fields
.field private final mAlternateRows:Z

.field private final mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

.field private mCounter:I

.field private final mHandler:Landroid/os/Handler;

.field private final mPostInterval:I

.field private mPulsesCount:I

.field private mRowDelay:I

.field private final mRunAnimations:Ljava/lang/Runnable;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mHandler:Landroid/os/Handler;

    .line 41
    iput v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    .line 44
    iput v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mCounter:I

    .line 46
    iput v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mRowDelay:I

    .line 48
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mStarted:Z

    .line 69
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;-><init>(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mRunAnimations:Ljava/lang/Runnable;

    .line 59
    iput-object p2, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    .line 60
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRowPosition()I

    move-result v0

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mRowDelay:I

    .line 61
    iput-boolean p3, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mAlternateRows:Z

    .line 65
    const v0, 0x3eaaaaab

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$integer;->pulse_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPostInterval:I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mCounter:I

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mCounter:I

    return p1
.end method

.method static synthetic access$108(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mStarted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mRunAnimations:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPostInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mStarted:Z

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 150
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    if-lez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->start()V

    .line 153
    :cond_0
    const-string/jumbo v0, "PulseAnimator"

    const-string/jumbo v1, "Row#%s onAttachedToRecyclerView with %s attached"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-virtual {v4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRowPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 154
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->stop()V

    .line 164
    :cond_0
    const-string/jumbo v0, "PulseAnimator"

    const-string/jumbo v1, "Row#%s onDetachedFromRecyclerView with %s attached"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-virtual {v4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRowPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    return-void
.end method

.method public onPulseAttached()V
    .locals 5

    .prologue
    .line 122
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    .line 123
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->start()V

    .line 126
    :cond_0
    const-string/jumbo v0, "PulseAnimator"

    const-string/jumbo v1, "Row#%s onPulseAttached with %s attached"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-virtual {v4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRowPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    return-void
.end method

.method public onPulseDetached()V
    .locals 5

    .prologue
    .line 135
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    .line 136
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    if-gez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mPulsesCount should not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->stop()V

    .line 142
    :cond_1
    const-string/jumbo v0, "PulseAnimator"

    const-string/jumbo v1, "Row#%s onPulseDetached with %s attached"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mBaseRowAdapter:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-virtual {v4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRowPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mPulsesCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mStarted:Z

    .line 101
    iget-boolean v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mAlternateRows:Z

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mRunAnimations:Ljava/lang/Runnable;

    iget v3, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mRowDelay:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    mul-int/lit16 v0, v0, 0xfa

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mRunAnimations:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->mStarted:Z

    .line 110
    return-void
.end method
