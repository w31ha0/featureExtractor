.class public Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;
.super Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;
.source "CachedMetrics.java"


# instance fields
.field private final mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->mSamples:Ljava/util/List;

    .line 138
    iput-object p2, p0, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 139
    return-void
.end method

.method private recordWithNative(J)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->mHistogramName:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected commitAndClear()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->recordWithNative(J)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    return-void
.end method

.method public record(J)V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p1, p2}, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->recordWithNative(J)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$TimesHistogramSample;->mSamples:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
