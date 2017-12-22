.class public final Lcom/ibm/icu/impl/number/FormatQuantity4;
.super Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.source "FormatQuantity4.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bcdBytes:[B

.field private bcdLong:J

.field private usingBytes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 29
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setBcdToZero()V

    .line 30
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToDouble(D)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 37
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToInt(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToLong(J)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/FormatQuantity4;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 53
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 57
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToLong(J)V

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToInt(I)V

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToDouble(D)V

    goto :goto_0

    .line 63
    :cond_2
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    .line 64
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigInteger(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 65
    :cond_3
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    .line 66
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigDecimal(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 67
    :cond_4
    instance-of v0, p1, Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_5

    .line 68
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigDecimal(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 70
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number is of an unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 49
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setToBigInteger(Ljava/math/BigInteger;)V

    .line 46
    return-void
.end method

.method private ensureCapacity()V
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 284
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    if-nez v0, :cond_2

    .line 289
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 291
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    .line 292
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iput-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    goto :goto_0
.end method

.method private switchStorage()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 299
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v1, :cond_1

    .line 301
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 302
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 303
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    shl-long/2addr v2, v6

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 304
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    iget-object v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v4, v4, v1

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 305
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte v0, v2, v1

    .line 302
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 307
    :cond_0
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 317
    :goto_1
    return-void

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity()V

    .line 311
    :goto_2
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v0, v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 313
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    ushr-long/2addr v2, v6

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 315
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    goto :goto_1
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_5

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity4;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 221
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getDigitPos(I)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    if-eqz v0, :cond_3

    .line 224
    const/16 v0, 0x45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 236
    :cond_4
    :goto_1
    return-object v0

    .line 229
    :cond_5
    const-wide/16 v2, 0x0

    .line 230
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    .line 231
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getDigitPos(I)B

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 230
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 233
    :cond_6
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 234
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1
.end method

.method protected compact()V
    .locals 4

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_4

    .line 243
    const/4 v0, 0x0

    .line 244
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ne v0, v1, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setBcdToZero()V

    .line 279
    :cond_1
    :goto_1
    return-void

    .line 251
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->shiftRight(I)V

    .line 255
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v0, v0, -0x1

    .line 256
    :goto_2
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 257
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 260
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->switchStorage()V

    goto :goto_1

    .line 265
    :cond_4
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 267
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->setBcdToZero()V

    goto :goto_1

    .line 272
    :cond_5
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 273
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 v1, v0, 0x4

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 274
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 277
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    goto :goto_1
.end method

.method protected copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantity4;

    .line 322
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 324
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 325
    iget-object v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget v2, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    iput-boolean v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 328
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    goto :goto_0
.end method

.method protected getDigitPos(I)B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v1, :cond_2

    .line 78
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-le p1, v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v0, v0, p1

    goto :goto_0

    .line 81
    :cond_2
    if-ltz p1, :cond_0

    const/16 v1, 0x10

    if-ge p1, v1, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 199
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity()V

    move v0, v1

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 204
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 205
    iget-object v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->byteValue()B

    move-result v4

    aput-byte v4, v3, v0

    .line 206
    aget-object p1, v2, v1

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iput-boolean v5, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 209
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 210
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 211
    return-void
.end method

.method protected readIntToBcd(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 158
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_0
    const-wide/16 v2, 0x0

    .line 161
    const/16 v0, 0x10

    .line 162
    :goto_0
    if-eqz p1, :cond_1

    .line 163
    const/4 v1, 0x4

    ushr-long/2addr v2, v1

    int-to-long v4, p1

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    const/16 v1, 0x3c

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    .line 162
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    :cond_1
    iput-boolean v8, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 166
    mul-int/lit8 v1, v0, 0x4

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 167
    iput v8, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 168
    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 169
    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 13

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 173
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_0
    const-wide v2, 0x2386f26fc10000L

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity()V

    move v0, v1

    .line 177
    :goto_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    rem-long v6, p1, v10

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 177
    div-long/2addr p1, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 181
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 182
    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 195
    :goto_1
    return-void

    .line 185
    :cond_2
    const/16 v0, 0x10

    move-wide v2, v4

    .line 186
    :goto_2
    cmp-long v6, p1, v4

    if-eqz v6, :cond_3

    .line 187
    const/4 v6, 0x4

    ushr-long/2addr v2, v6

    rem-long v6, p1, v10

    const/16 v8, 0x3c

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 186
    div-long/2addr p1, v10

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 189
    :cond_3
    sget-boolean v4, Lcom/ibm/icu/impl/number/FormatQuantity4;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :cond_4
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 191
    mul-int/lit8 v4, v0, 0x4

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 192
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 193
    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    goto :goto_1
.end method

.method protected setBcdToZero()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 143
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte v1, v2, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    .line 148
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 149
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 150
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 151
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->isApproximate:Z

    .line 152
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->origDouble:D

    .line 153
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->origDelta:I

    .line 154
    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 8

    .prologue
    .line 88
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantity4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_1

    .line 90
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 91
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte p2, v0, p1

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_1
    const/16 v0, 0x10

    if-lt p1, v0, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->switchStorage()V

    .line 94
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 95
    iget-object v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte p2, v0, p1

    goto :goto_0

    .line 97
    :cond_2
    mul-int/lit8 v0, p1, 0x4

    .line 98
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    const-wide/16 v4, 0xf

    shl-long/2addr v4, v0

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    int-to-long v4, p2

    shl-long v0, v4, v0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    goto :goto_0
.end method

.method protected shiftLeft(I)V
    .locals 4

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->switchStorage()V

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_2

    .line 108
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->ensureCapacity(I)V

    .line 109
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 110
    :goto_0
    if-lt v0, p1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    sub-int v3, v0, p1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    if-ltz v0, :cond_3

    .line 114
    iget-object v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 117
    :cond_2
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 119
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 120
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 121
    return-void
.end method

.method protected shiftRight(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 127
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    sub-int/2addr v2, p1

    if-ge v0, v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    iget-object v3, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    add-int v4, v0, p1

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    if-ge v0, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aput-byte v1, v2, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_1
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    .line 136
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 137
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 395
    iget-object v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdBytes:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 398
    :cond_0
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->bcdLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_1
    const-string/jumbo v2, "<FormatQuantity4 %s:%d:%d:%s %s %s%s%d>"

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->lOptPos:I

    const/16 v5, 0x3e8

    if-le v0, v5, :cond_2

    const-string/jumbo v0, "max"

    .line 402
    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->lReqPos:I

    .line 403
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->rReqPos:I

    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->rOptPos:I

    const/16 v5, -0x3e8

    if-ge v0, v5, :cond_3

    const-string/jumbo v0, "min"

    .line 405
    :goto_2
    aput-object v0, v3, v4

    const/4 v4, 0x4

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->usingBytes:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "bytes"

    :goto_3
    aput-object v0, v3, v4

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "E"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->scale:I

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 400
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->lOptPos:I

    .line 402
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 404
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;->rOptPos:I

    .line 405
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "long"

    goto :goto_3
.end method
