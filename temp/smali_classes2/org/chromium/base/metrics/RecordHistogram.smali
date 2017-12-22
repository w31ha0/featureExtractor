.class public Lorg/chromium/base/metrics/RecordHistogram;
.super Ljava/lang/Object;
.source "RecordHistogram.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field private static sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisabledBy:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clampToInt(J)I
    .locals 2

    .prologue
    .line 242
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    .line 246
    :goto_0
    return v0

    .line 245
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_0

    .line 246
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method private static getCachedHistogramKey(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 53
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 269
    invoke-static {p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Lorg/chromium/base/metrics/RecordHistogram;->nativeInitialize()V

    goto :goto_0
.end method

.method private static native nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I
.end method

.method private static native nativeInitialize()V
.end method

.method private static native nativeRecordBooleanHistogram(Ljava/lang/String;JZ)J
.end method

.method private static native nativeRecordCustomCountHistogram(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J
.end method

.method private static native nativeRecordLinearCountHistogram(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordSparseHistogram(Ljava/lang/String;JI)J
.end method

.method public static recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 64
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 66
    invoke-static {p0, v0, v1, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordBooleanHistogram(Ljava/lang/String;JZ)J

    move-result-wide v2

    .line 67
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordCount1000Histogram(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 114
    return-void
.end method

.method public static recordCount100Histogram(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    const/16 v1, 0x64

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 104
    return-void
.end method

.method public static recordCountHistogram(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x1

    const v1, 0xf4240

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 94
    return-void
.end method

.method public static recordCustomCountHistogram(Ljava/lang/String;IIII)V
    .locals 8

    .prologue
    .line 127
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 129
    invoke-static/range {v1 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordCustomCountHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v0

    .line 130
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V
    .locals 13

    .prologue
    .line 224
    move-object/from16 v0, p7

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    move-object/from16 v0, p7

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    move-object/from16 v0, p7

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    move-object v5, p0

    move/from16 v12, p8

    invoke-static/range {v5 .. v12}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 226
    return-void
.end method

.method private static recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V
    .locals 9

    .prologue
    .line 251
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v2

    .line 257
    invoke-static {p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v4

    invoke-static {p3, p4}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v5

    invoke-static {p5, p6}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v6

    move-object v1, p0

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;JIIII)J

    move-result-wide v0

    .line 259
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordEnumeratedHistogram(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 80
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 82
    invoke-static {p0, v0, v1, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J

    move-result-wide v2

    .line 83
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLinearCountHistogram(Ljava/lang/String;IIII)V
    .locals 8

    .prologue
    .line 144
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 146
    invoke-static/range {v1 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordLinearCountHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v0

    .line 147
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLongTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x1

    .line 208
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 210
    return-void
.end method

.method public static recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    .line 196
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 198
    return-void
.end method

.method public static recordMemoryKBHistogram(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 238
    const/16 v0, 0x3e8

    const v1, 0x7a120

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 239
    return-void
.end method

.method public static recordPercentageHistogram(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 157
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 159
    const/16 v2, 0x65

    invoke-static {p0, v0, v1, p1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J

    move-result-wide v2

    .line 160
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordSparseSlowlyHistogram(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 170
    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 172
    invoke-static {p0, v0, v1, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordSparseHistogram(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 173
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    .line 184
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 186
    return-void
.end method

.method public static setDisabledForTests(Z)V
    .locals 3
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 41
    if-eqz p0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Histograms are already disabled."

    sget-object v2, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :goto_0
    sput-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sDisabledBy:Ljava/lang/Throwable;

    .line 45
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
