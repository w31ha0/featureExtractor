.class public Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# static fields
.field private static sPreviousBytes:J


# instance fields
.field private final mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

.field private mHandler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;

.field private mLastTimeReading:J

.field private mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->sPreviousBytes:J

    return-void
.end method

.method private constructor <init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ParseThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;

    iget-object v1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;-><init>(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mHandler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;-><init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;)V

    return-void
.end method

.method public static getInstance()Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$DeviceBandwidthSamplerHolder;->instance:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    return-object v0
.end method


# virtual methods
.method protected addFinalSample()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->addSample()V

    .line 119
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->sPreviousBytes:J

    .line 120
    return-void
.end method

.method protected addSample()V
    .locals 9

    .prologue
    .line 95
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 96
    sget-wide v2, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->sPreviousBytes:J

    sub-long v2, v0, v2

    .line 97
    sget-wide v4, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->sPreviousBytes:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 100
    iget-wide v6, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mLastTimeReading:J

    sub-long v6, v4, v6

    .line 101
    iget-object v8, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    invoke-virtual {v8, v2, v3, v6, v7}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->addBandwidth(JJ)V

    .line 103
    iput-wide v4, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mLastTimeReading:J

    .line 105
    const-string/jumbo v4, "DeviceBandwidthSampler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const-string/jumbo v4, "DeviceBandwidthSampler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addSample(), bytes: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", time delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    sput-wide v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->sPreviousBytes:J

    .line 111
    return-void

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startSampling()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mHandler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->startSamplingThread()V

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mLastTimeReading:J

    .line 77
    :cond_0
    return-void
.end method

.method public stopSampling()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mHandler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->stopSamplingThread()V

    .line 86
    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->addFinalSample()V

    .line 88
    :cond_0
    return-void
.end method
