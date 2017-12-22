.class public Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;
.super Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;
.source "CachedMetrics.java"


# instance fields
.field private final mMaxValue:I

.field private final mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->mSamples:Ljava/util/List;

    .line 107
    iput p2, p0, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->mMaxValue:I

    .line 108
    return-void
.end method

.method private recordWithNative(I)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->mHistogramName:Ljava/lang/String;

    iget v1, p0, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->mMaxValue:I

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 120
    return-void
.end method


# virtual methods
.method protected commitAndClear()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->recordWithNative(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    return-void
.end method

.method public record(I)V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->recordWithNative(I)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$EnumeratedHistogramSample;->mSamples:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
