.class public final Lcom/ibm/icu/util/BytesTrie$Entry;
.super Ljava/lang/Object;
.source "BytesTrie.java"


# instance fields
.field private bytes:[B

.field private length:I

.field public value:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->bytes:[B

    .line 462
    return-void
.end method

.method synthetic constructor <init>(ILcom/ibm/icu/util/BytesTrie$1;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BytesTrie$Entry;-><init>(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    return v0
.end method

.method static synthetic access$600(Lcom/ibm/icu/util/BytesTrie$Entry;[BII)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/BytesTrie$Entry;->append([BII)V

    return-void
.end method

.method static synthetic access$700(Lcom/ibm/icu/util/BytesTrie$Entry;I)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BytesTrie$Entry;->truncateString(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/ibm/icu/util/BytesTrie$Entry;B)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BytesTrie$Entry;->append(B)V

    return-void
.end method

.method private append(B)V
    .locals 3

    .prologue
    .line 507
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    .line 508
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    aput-byte p1, v0, v1

    .line 509
    return-void
.end method

.method private append([BII)V
    .locals 2

    .prologue
    .line 511
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    .line 512
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    .line 514
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->bytes:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, p1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 502
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->bytes:[B

    iget v2, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->bytes:[B

    .line 505
    :cond_0
    return-void
.end method

.method private truncateString(I)V
    .locals 0

    .prologue
    .line 515
    iput p1, p0, Lcom/ibm/icu/util/BytesTrie$Entry;->length:I

    return-void
.end method
