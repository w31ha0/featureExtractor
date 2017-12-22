.class public Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;
.super Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;
.source "CachedMetrics.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private recordWithNative()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->mHistogramName:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected commitAndClear()V
    .locals 1

    .prologue
    .line 64
    :goto_0
    iget v0, p0, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->mCount:I

    if-lez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->recordWithNative()V

    .line 66
    iget v0, p0, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->mCount:I

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public record()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->recordWithNative()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/metrics/CachedMetrics$ActionEvent;->mCount:I

    goto :goto_0
.end method
