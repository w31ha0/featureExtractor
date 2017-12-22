.class public Lcom/ibm/icu/impl/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"


# static fields
.field public static EMPTY:J

.field private static final primes:[I


# instance fields
.field private arraySize:I

.field private keys:[J

.field private pIndex:I

.field private size:I

.field private threshold:I

.field private values:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/CalendarCache;->primes:[I

    .line 127
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    return-void

    .line 111
    :array_0
    .array-data 4
        0x3d
        0x7f
        0x1fd
        0x3fd
        0x7f7
        0xffd
        0x1fff
        0x3ffd
        0x7fed
        0xfff1
        0x1ffff
        0x3fffb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I

    .line 117
    iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I

    .line 118
    sget-object v0, Lcom/ibm/icu/impl/CalendarCache;->primes:[I

    iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    .line 119
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->threshold:I

    .line 121
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J

    .line 122
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J

    .line 20
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/CalendarCache;->makeArrays(I)V

    .line 21
    return-void
.end method

.method private final findIndex(J)I
    .locals 7

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->hash(J)I

    move-result v1

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J

    aget-wide v2, v2, v1

    sget-wide v4, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->hash2(J)I

    move-result v0

    .line 66
    :cond_0
    add-int/2addr v1, v0

    iget v2, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    rem-int/2addr v1, v2

    goto :goto_0

    .line 68
    :cond_1
    return v1
.end method

.method private final hash(J)I
    .locals 5

    .prologue
    .line 100
    const-wide/16 v0, 0x3dcd

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 101
    if-gez v0, :cond_0

    .line 102
    iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    add-int/2addr v0, v1

    .line 104
    :cond_0
    return v0
.end method

.method private final hash2(J)I
    .locals 5

    .prologue
    .line 108
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    add-int/lit8 v1, v1, -0x2

    int-to-long v2, v1

    rem-long v2, p1, v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private makeArrays(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 24
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J

    .line 25
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J

    move v0, v1

    .line 27
    :goto_0
    if-ge v0, p1, :cond_0

    .line 28
    iget-object v2, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J

    sget-wide v4, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    aput-wide v4, v2, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iput p1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    .line 31
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->threshold:I

    .line 32
    iput v1, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I

    .line 33
    return-void
.end method

.method private rehash()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 73
    iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    .line 74
    iget-object v2, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J

    .line 75
    iget-object v3, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J

    .line 77
    iget v4, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I

    sget-object v5, Lcom/ibm/icu/impl/CalendarCache;->primes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 78
    sget-object v4, Lcom/ibm/icu/impl/CalendarCache;->primes:[I

    iget v5, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I

    aget v4, v4, v5

    iput v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    .line 82
    :goto_0
    iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I

    .line 84
    iget v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/CalendarCache;->makeArrays(I)V

    .line 85
    :goto_1
    if-ge v0, v1, :cond_2

    .line 86
    aget-wide v4, v3, v0

    sget-wide v6, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 87
    aget-wide v4, v2, v0

    aget-wide v6, v3, v0

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    iget v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I

    goto :goto_0

    .line 90
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized get(J)J
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->findIndex(J)I

    move-result v1

    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(JJ)V
    .locals 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I

    iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->threshold:I

    if-lt v0, v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarCache;->rehash()V

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->findIndex(J)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J

    aput-wide p1, v1, v0

    .line 53
    iget-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J

    aput-wide p3, v1, v0

    .line 54
    iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
