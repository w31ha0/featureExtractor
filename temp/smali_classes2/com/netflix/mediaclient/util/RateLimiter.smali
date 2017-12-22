.class public Lcom/netflix/mediaclient/util/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_RateLimiter"


# instance fields
.field private final MAX_EVENTS_IN_TIME_WINDOW:I

.field private final TIME_WINDOW_IN_MS:J

.field private mEventCounter:I

.field private mTimeWindowStart:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/netflix/mediaclient/util/RateLimiter;->MAX_EVENTS_IN_TIME_WINDOW:I

    .line 35
    iput-wide p2, p0, Lcom/netflix/mediaclient/util/RateLimiter;->TIME_WINDOW_IN_MS:J

    .line 36
    return-void
.end method


# virtual methods
.method public onNewEvent()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    iget v2, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mEventCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mEventCounter:I

    .line 43
    iget v2, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mEventCounter:I

    if-ne v2, v0, :cond_0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mTimeWindowStart:J

    .line 47
    :cond_0
    iget v2, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mEventCounter:I

    iget v3, p0, Lcom/netflix/mediaclient/util/RateLimiter;->MAX_EVENTS_IN_TIME_WINDOW:I

    if-le v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mTimeWindowStart:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/RateLimiter;->TIME_WINDOW_IN_MS:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 48
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mTimeWindowStart:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 49
    const-string/jumbo v4, "nf_RateLimiter"

    const-string/jumbo v5, "onNewEvent too fast mEventCounter=%d timeDuration=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mEventCounter:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mTimeWindowStart:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/RateLimiter;->TIME_WINDOW_IN_MS:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 53
    const-string/jumbo v0, "nf_RateLimiter"

    const-string/jumbo v2, "onNewEvent time window over, resetting mEventCounter"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput v1, p0, Lcom/netflix/mediaclient/util/RateLimiter;->mEventCounter:I

    :cond_2
    move v0, v1

    .line 57
    goto :goto_0
.end method
