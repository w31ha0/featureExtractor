.class public Lorg/chromium/base/metrics/CachedMetrics;
.super Ljava/lang/Object;
.source "CachedMetrics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static commitCachedMetrics()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;

    invoke-virtual {v0}, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;->commitAndClear()V

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method
