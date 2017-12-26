.class Lcom/amazon/device/ads/MetricsCollector$MetricHitString;
.super Lcom/amazon/device/ads/MetricsCollector$MetricHit;
.source "SourceFile"


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MetricsCollector$MetricHit;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 262
    iput-object p2, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;->text:Ljava/lang/String;

    .line 263
    return-void
.end method
