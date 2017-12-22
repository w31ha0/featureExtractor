.class public Lcom/facebook/network/connectionclass/ConnectionClassManager;
.super Ljava/lang/Object;
.source "ConnectionClassManager.java"


# instance fields
.field private mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/network/connectionclass/ConnectionQuality;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

.field private volatile mInitiateStateChange:Z

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/network/connectionclass/ConnectionQuality;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleCounter:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v2, v3}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/network/connectionclass/ConnectionQuality;->UNKNOWN:Lcom/facebook/network/connectionclass/ConnectionQuality;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/network/connectionclass/ConnectionClassManager$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassManagerHolder;->instance:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    return-object v0
.end method

.method private mapBandwidthQuality(D)Lcom/facebook/network/connectionclass/ConnectionQuality;
    .locals 3

    .prologue
    .line 182
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 183
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionQuality;->UNKNOWN:Lcom/facebook/network/connectionclass/ConnectionQuality;

    .line 194
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 186
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionQuality;->POOR:Lcom/facebook/network/connectionclass/ConnectionQuality;

    goto :goto_0

    .line 188
    :cond_1
    const-wide v0, 0x4081300000000000L    # 550.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 189
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionQuality;->MODERATE:Lcom/facebook/network/connectionclass/ConnectionQuality;

    goto :goto_0

    .line 191
    :cond_2
    const-wide v0, 0x409f400000000000L    # 2000.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3

    .line 192
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionQuality;->GOOD:Lcom/facebook/network/connectionclass/ConnectionQuality;

    goto :goto_0

    .line 194
    :cond_3
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionQuality;->EXCELLENT:Lcom/facebook/network/connectionclass/ConnectionQuality;

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 244
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 245
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;

    iget-object v1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/network/connectionclass/ConnectionQuality;

    invoke-interface {v0, v1}, Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;->onBandwidthStateChange(Lcom/facebook/network/connectionclass/ConnectionQuality;)V

    .line 244
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method private significantlyOutsideCurrentBand()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x409f400000000000L    # 2000.0

    const-wide v4, 0x4081300000000000L    # 550.0

    const-wide v2, 0x4062c00000000000L    # 150.0

    const/4 v9, 0x1

    .line 122
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    if-nez v0, :cond_0

    move v0, v8

    .line 157
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/network/connectionclass/ConnectionQuality;

    .line 129
    sget-object v1, Lcom/facebook/network/connectionclass/ConnectionClassManager$1;->$SwitchMap$com$facebook$network$connectionclass$ConnectionQuality:[I

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ConnectionQuality;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v0, v9

    .line 147
    goto :goto_0

    .line 131
    :pswitch_0
    const-wide/16 v4, 0x0

    move-wide v0, v2

    move-wide v2, v4

    .line 149
    :goto_1
    iget-object v4, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    invoke-virtual {v4}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->getAverage()D

    move-result-wide v4

    .line 150
    cmpl-double v6, v4, v0

    if-lez v6, :cond_1

    .line 151
    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    cmpl-double v0, v4, v0

    if-lez v0, :cond_2

    move v0, v9

    .line 152
    goto :goto_0

    :pswitch_1
    move-wide v0, v4

    .line 137
    goto :goto_1

    :pswitch_2
    move-wide v0, v6

    move-wide v2, v4

    .line 141
    goto :goto_1

    .line 144
    :pswitch_3
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    move-wide v2, v6

    .line 145
    goto :goto_1

    .line 154
    :cond_1
    const-wide v0, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    cmpg-double v0, v4, v0

    if-gez v0, :cond_2

    move v0, v9

    .line 155
    goto :goto_0

    :cond_2
    move v0, v8

    .line 157
    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized addBandwidth(JJ)V
    .locals 9

    .prologue
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 92
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v4

    long-to-double v2, p3

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    long-to-double v0, p1

    mul-double/2addr v0, v4

    long-to-double v2, p3

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->addMeasurement(D)V

    .line 99
    iget-boolean v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    if-eqz v0, :cond_3

    .line 100
    iget v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    .line 101
    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    .line 105
    :cond_2
    iget v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->significantlyOutsideCurrentBand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    .line 108
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionQuality;->UNKNOWN:Lcom/facebook/network/connectionclass/ConnectionQuality;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->getAverage()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mapBandwidthQuality(D)Lcom/facebook/network/connectionclass/ConnectionQuality;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadKBitsPerSecond()D
    .locals 2

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    .line 205
    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->getAverage()D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;)V
    .locals 1

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    return-void
.end method
