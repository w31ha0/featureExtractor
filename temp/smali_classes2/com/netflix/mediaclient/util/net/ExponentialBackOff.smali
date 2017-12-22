.class public Lcom/netflix/mediaclient/util/net/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/net/BackOff;


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MS:I = 0x3e8

.field public static final DEFAULT_MAX_ELAPSED_TIME_MS:I = 0x1d4c0

.field public static final DEFAULT_MAX_INTERVAL_MS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 1.5

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5

.field protected static final TAG:Ljava/lang/String; = "nf_backoff"


# instance fields
.field private mCurrentIntervalInMs:I

.field private mInitialIntervalInMs:I

.field private mMaxElapsedTimeInMs:I

.field private mMaxIntervalInMs:I

.field private mMultiplier:D

.field private mRandomizationFactor:D

.field private mStartTimeInNanos:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    .line 61
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    .line 66
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    .line 72
    const v0, 0xea60

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    .line 79
    const v0, 0x1d4c0

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->reset()V

    .line 100
    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    .line 61
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    .line 66
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    .line 72
    const v0, 0xea60

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    .line 79
    const v0, 0x1d4c0

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    .line 112
    iput p1, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    .line 113
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_0

    cmpg-double v0, p2, v2

    if-gtz v0, :cond_1

    .line 114
    :cond_0
    iput-wide v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    .line 118
    :goto_0
    iput-wide p4, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    .line 119
    iput p6, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    .line 120
    iput p7, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->reset()V

    .line 122
    return-void

    .line 116
    :cond_1
    iput-wide p2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    goto :goto_0
.end method

.method private static getRandomValueFromInterval(DDI)I
    .locals 6

    .prologue
    .line 259
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 271
    :goto_0
    return p4

    .line 263
    :cond_0
    int-to-double v0, p4

    mul-double/2addr v0, p0

    .line 264
    int-to-double v2, p4

    sub-double/2addr v2, v0

    .line 265
    int-to-double v4, p4

    add-double/2addr v0, v4

    .line 270
    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    mul-double/2addr v0, p2

    add-double/2addr v0, v2

    double-to-int p4, v0

    .line 271
    goto :goto_0
.end method

.method private incrementCurrentInterval()V
    .locals 6

    .prologue
    .line 156
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    int-to-double v0, v0

    iget v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 157
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    goto :goto_0
.end method


# virtual methods
.method public canRetry()Z
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->getElapsedTimeInMs()J

    move-result-wide v0

    iget v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIntervalInMs()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    return v0
.end method

.method public final getElapsedTimeInMs()J
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mStartTimeInNanos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitialIntervalInMs()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    return v0
.end method

.method public getMaxElapsedTimeInMs()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxElapsedTimeInMs:I

    return v0
.end method

.method public getMaxIntervalInMs()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMaxIntervalInMs:I

    return v0
.end method

.method public getMultiplier()D
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mMultiplier:D

    return-wide v0
.end method

.method public getRandomizationFactor()D
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    return-wide v0
.end method

.method public getStartTimeInNs()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mStartTimeInNanos:J

    return-wide v0
.end method

.method public nextBackOffInMs()J
    .locals 5

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->canRetry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-wide/16 v0, -0x1

    .line 147
    :goto_0
    return-wide v0

    .line 140
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mRandomizationFactor:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->getRandomValueFromInterval(DDI)I

    move-result v0

    .line 141
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->incrementCurrentInterval()V

    .line 147
    int-to-long v0, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mInitialIntervalInMs:I

    iput v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mCurrentIntervalInMs:I

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;->mStartTimeInNanos:J

    .line 180
    return-void
.end method
