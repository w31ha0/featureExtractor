.class public Lcom/netflix/cstats/ExponentialHistogram;
.super Ljava/lang/Object;
.source "ExponentialHistogram.java"

# interfaces
.implements Lcom/netflix/cstats/Histogram;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Sample:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netflix/cstats/Histogram",
        "<TSample;>;"
    }
.end annotation


# instance fields
.field private buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field private maximum:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSample;"
        }
    .end annotation
.end field

.field private minimum:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSample;"
        }
    .end annotation
.end field

.field private numBuckets:Ljava/lang/Integer;

.field private final sampleLiteralType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TSample;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TSample;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/cstats/ExponentialHistogram;->sampleLiteralType:Ljava/lang/Class;

    .line 22
    return-void
.end method


# virtual methods
.method public addCount(Ljava/lang/Number;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSample;)V"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/cstats/ExponentialHistogram;->addCount(Ljava/lang/Number;I)V

    .line 53
    return-void
.end method

.method public addCount(Ljava/lang/Number;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSample;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/cstats/ExponentialHistogram;->assertStrongly(Z)V

    .line 32
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/netflix/cstats/ExponentialHistogram;->assertStrongly(Z)V

    .line 33
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/netflix/cstats/ExponentialHistogram;->assertStrongly(Z)V

    .line 38
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 39
    :goto_3
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 42
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I

    .line 48
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 31
    goto :goto_0

    :cond_2
    move v0, v2

    .line 32
    goto :goto_1

    :cond_3
    move v1, v2

    .line 33
    goto :goto_2

    .line 39
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public bridge synthetic addCount(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/cstats/ExponentialHistogram;->addCount(Ljava/lang/Number;I)V

    return-void
.end method

.method assertStrongly(Z)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    return-void
.end method

.method public getBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    return-object v0
.end method

.method public getCounts()Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    return-object v0
.end method

.method public getHistogramMapForJson()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/cstats/ExponentialHistogram;->assertStrongly(Z)V

    .line 76
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    :goto_1
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 74
    goto :goto_0

    .line 81
    :cond_1
    return-object v2
.end method

.method public getLayoutForJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    const-string/jumbo v0, "%d/%d/%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/cstats/ExponentialHistogram;->minimum:Ljava/lang/Number;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/cstats/ExponentialHistogram;->maximum:Ljava/lang/Number;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/netflix/cstats/ExponentialHistogram;->numBuckets:Ljava/lang/Integer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeBucketRanges(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Integer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSample;TSample;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_0

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_1

    .line 110
    :cond_0
    iput-object v4, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    .line 111
    iput-object v4, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->numBuckets:Ljava/lang/Integer;

    .line 113
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->sampleLiteralType:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->minimum:Ljava/lang/Number;

    .line 114
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->sampleLiteralType:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->maximum:Ljava/lang/Number;

    .line 161
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    .line 120
    iput-object v4, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 121
    iput-object p1, p0, Lcom/netflix/cstats/ExponentialHistogram;->minimum:Ljava/lang/Number;

    .line 122
    iput-object p2, p0, Lcom/netflix/cstats/ExponentialHistogram;->maximum:Ljava/lang/Number;

    .line 123
    iput-object p3, p0, Lcom/netflix/cstats/ExponentialHistogram;->numBuckets:Ljava/lang/Integer;

    .line 126
    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 132
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 135
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_5

    .line 137
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 139
    sub-double v6, v4, v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v2

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 141
    add-double/2addr v0, v6

    .line 143
    iget-object v6, p0, Lcom/netflix/cstats/ExponentialHistogram;->sampleLiteralType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 144
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_4

    move-object p1, v0

    .line 150
    :goto_2
    iget-object v1, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 151
    goto :goto_1

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/netflix/cstats/ExponentialHistogram;->sampleLiteralType:Ljava/lang/Class;

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object p1, v0

    goto :goto_2

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    iget-object v1, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 156
    iget-object v1, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    monitor-enter v1

    move v0, v3

    .line 157
    :goto_3
    :try_start_0
    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 158
    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 160
    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/cstats/ExponentialHistogram;->assertStrongly(Z)V

    move v0, v1

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 91
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 58
    :cond_0
    const-string/jumbo v0, "[]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 62
    if-eqz v0, :cond_2

    .line 63
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/netflix/cstats/ExponentialHistogram;->buckets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/cstats/ExponentialHistogram;->counts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_3
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
