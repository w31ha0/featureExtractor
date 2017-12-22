.class abstract Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;
.super Ljava/lang/Object;
.source "CachedMetrics.java"


# static fields
.field private static final sEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mHistogramName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;->sEvents:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;->mHistogramName:Ljava/lang/String;

    .line 33
    sget-object v0, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;->sEvents:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/chromium/base/metrics/CachedMetrics$CachedHistogram;->sEvents:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected abstract commitAndClear()V
.end method
