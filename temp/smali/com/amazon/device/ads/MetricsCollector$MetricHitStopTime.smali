.class Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;
.super Lcom/amazon/device/ads/MetricsCollector$MetricHit;
.source "SourceFile"


# instance fields
.field public final stopTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MetricsCollector$MetricHit;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 235
    iput-wide p2, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;->stopTime:J

    .line 236
    return-void
.end method
