.class public final Lcom/ibm/icu/impl/number/FormatQuantity3;
.super Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.source "FormatQuantity3.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LONG_MIN_VALUE:[B


# instance fields
.field private bcd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/ibm/icu/impl/number/FormatQuantity3;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->$assertionsDisabled:Z

    .line 111
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->LONG_MIN_VALUE:[B

    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    nop

    :array_0
    .array-data 1
        0x8t
        0x0t
        0x8t
        0x5t
        0x7t
        0x7t
        0x4t
        0x5t
        0x8t
        0x6t
        0x3t
        0x0t
        0x2t
        0x7t
        0x3t
        0x3t
        0x2t
        0x2t
        0x9t
    .end array-data
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/FormatQuantity3;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 17
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    .line 45
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity3;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 46
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    array-length v0, v0

    if-lt v0, p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    .line 199
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    goto :goto_0
.end method

.method private toDumbString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-nez v0, :cond_1

    .line 156
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 159
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 160
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->getDigitPos(I)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 162
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    if-eqz v0, :cond_3

    .line 163
    const/16 v0, 0x45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->toDumbString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected compact()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    const/4 v2, 0x1

    move v0, v1

    .line 173
    :goto_0
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-ge v0, v3, :cond_4

    .line 174
    iget-object v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_0

    move v0, v1

    .line 179
    :goto_1
    if-eqz v0, :cond_1

    .line 180
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 181
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 194
    :goto_2
    return-void

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 188
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity3;->shiftRight(I)V

    .line 191
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/lit8 v0, v0, -0x1

    .line 192
    :goto_4
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 193
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantity3;

    .line 206
    iget-object v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    return-void
.end method

.method protected getDigitPos(I)B
    .locals 1

    .prologue
    .line 50
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 134
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 136
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 138
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/number/FormatQuantity3;->ensureCapacity(I)V

    .line 139
    iget-object v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->byteValue()B

    move-result v4

    aput-byte v4, v3, v0

    .line 140
    aget-object p1, v2, v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 143
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 144
    return-void
.end method

.method protected readIntToBcd(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 104
    :goto_0
    int-to-long v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    rem-int/lit8 v3, p1, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 104
    int-to-long v2, p1

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    long-to-int p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 108
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 109
    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 116
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->LONG_MIN_VALUE:[B

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    sget-object v3, Lcom/ibm/icu/impl/number/FormatQuantity3;->LONG_MIN_VALUE:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 121
    sget-object v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->LONG_MIN_VALUE:[B

    array-length v0, v0

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 130
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 125
    :goto_1
    cmp-long v2, p1, v6

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    rem-long v4, p1, v8

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 125
    div-long/2addr p1, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_2
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 129
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    goto :goto_0
.end method

.method protected setBcdToZero()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-ge v0, v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aput-byte v1, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 94
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 95
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->isApproximate:Z

    .line 96
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->origDouble:D

    .line 97
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->origDelta:I

    .line 98
    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->ensureCapacity(I)V

    .line 58
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aput-byte p2, v0, p1

    .line 59
    return-void
.end method

.method protected shiftLeft(I)V
    .locals 4

    .prologue
    .line 63
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity3;->ensureCapacity(I)V

    .line 64
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 65
    :goto_0
    if-lt v0, p1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    sub-int v3, v0, p1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 68
    :cond_0
    :goto_1
    if-ltz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 71
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 72
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 73
    return-void
.end method

.method protected shiftRight(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    move v0, v1

    .line 78
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    sub-int/2addr v2, p1

    if-ge v0, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    iget-object v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    add-int v4, v0, p1

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    if-ge v0, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aput-byte v1, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 85
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->precision:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const/16 v0, 0x1e

    :goto_0
    if-ltz v0, :cond_0

    .line 213
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->bcd:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    :cond_0
    const-string/jumbo v2, "<FormatQuantity3 %s:%d:%d:%s %s%s%d>"

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->lOptPos:I

    const/16 v5, 0x3e8

    if-le v0, v5, :cond_1

    const-string/jumbo v0, "max"

    .line 217
    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->lReqPos:I

    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->rReqPos:I

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->rOptPos:I

    const/16 v5, -0x3e8

    if-ge v0, v5, :cond_2

    const-string/jumbo v0, "min"

    .line 220
    :goto_2
    aput-object v0, v3, v4

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "E"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->scale:I

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 215
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->lOptPos:I

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 219
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;->rOptPos:I

    .line 220
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
