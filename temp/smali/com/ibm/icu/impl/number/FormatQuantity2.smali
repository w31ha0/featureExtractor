.class public final Lcom/ibm/icu/impl/number/FormatQuantity2;
.super Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.source "FormatQuantity2.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bcd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/ibm/icu/impl/number/FormatQuantity2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/FormatQuantity2;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity2;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    .line 131
    const-wide/16 v2, 0x0

    .line 132
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 133
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity2;->getDigitPos(I)B

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 132
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 136
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity2;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 138
    :cond_1
    return-object v0
.end method

.method protected compact()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 145
    iput v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 146
    iput v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 152
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 v1, v0, 0x4

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 153
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 156
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    goto :goto_0
.end method

.method protected copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 2

    .prologue
    .line 161
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantity2;

    .line 162
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 163
    return-void
.end method

.method protected getDigitPos(I)B
    .locals 4

    .prologue
    .line 50
    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 116
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_0
    const-wide/16 v2, 0x0

    .line 118
    const/16 v0, 0x10

    .line 119
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 121
    const/4 v5, 0x4

    ushr-long/2addr v2, v5

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const/16 v5, 0x3c

    shl-long/2addr v6, v5

    add-long/2addr v2, v6

    .line 122
    aget-object p1, v1, v4

    .line 119
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 124
    :cond_1
    if-lez v0, :cond_3

    move v1, v0

    .line 125
    :goto_1
    mul-int/lit8 v1, v1, 0x4

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 126
    if-gez v0, :cond_2

    neg-int v4, v0

    :cond_2
    iput v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 127
    return-void

    :cond_3
    move v1, v4

    .line 124
    goto :goto_1
.end method

.method protected readIntToBcd(I)V
    .locals 8

    .prologue
    .line 88
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    const-wide/16 v2, 0x0

    .line 90
    const/16 v0, 0x10

    .line 91
    :goto_0
    if-eqz p1, :cond_1

    .line 92
    const/4 v1, 0x4

    ushr-long/2addr v2, v1

    int-to-long v4, p1

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    const/16 v1, 0x3c

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    .line 91
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 95
    :cond_1
    mul-int/lit8 v1, v0, 0x4

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 97
    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    .line 98
    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 13

    .prologue
    const-wide/16 v10, 0xa

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 102
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_0
    const/16 v1, 0x10

    move-wide v4, v6

    .line 105
    :goto_0
    cmp-long v0, p1, v6

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x4

    ushr-long/2addr v4, v0

    rem-long v8, p1, v10

    const/16 v0, 0x3c

    shl-long/2addr v8, v0

    add-long/2addr v4, v8

    .line 105
    div-long/2addr p1, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 108
    :cond_1
    if-lez v1, :cond_3

    move v0, v1

    .line 109
    :goto_1
    mul-int/lit8 v0, v0, 0x4

    ushr-long/2addr v4, v0

    iput-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 110
    if-gez v1, :cond_2

    neg-int v2, v1

    :cond_2
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 111
    rsub-int/lit8 v0, v1, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    .line 112
    return-void

    :cond_3
    move v0, v2

    .line 108
    goto :goto_1
.end method

.method protected setBcdToZero()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 79
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 80
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    .line 81
    iput-boolean v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->isApproximate:Z

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->origDouble:D

    .line 83
    iput v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->origDelta:I

    .line 84
    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 8

    .prologue
    .line 56
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity2;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_1
    mul-int/lit8 v0, p1, 0x4

    .line 58
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    const-wide/16 v4, 0xf

    shl-long/2addr v4, v0

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    int-to-long v4, p2

    shl-long v0, v4, v0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 59
    return-void
.end method

.method protected shiftLeft(I)V
    .locals 3

    .prologue
    .line 63
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 v2, p1, 0x4

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 65
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 66
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    .line 67
    return-void
.end method

.method protected shiftRight(I)V
    .locals 3

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 72
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 73
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->precision:I

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 167
    const-string/jumbo v1, "<FormatQuantity2 %s:%d:%d:%s %016XE%d>"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->lOptPos:I

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_0

    const-string/jumbo v0, "max"

    .line 169
    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->lReqPos:I

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->rReqPos:I

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->rOptPos:I

    const/16 v4, -0x3e8

    if-ge v0, v4, :cond_1

    const-string/jumbo v0, "min"

    .line 172
    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->bcd:J

    .line 173
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->scale:I

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 167
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->lOptPos:I

    .line 169
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;->rOptPos:I

    .line 172
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
