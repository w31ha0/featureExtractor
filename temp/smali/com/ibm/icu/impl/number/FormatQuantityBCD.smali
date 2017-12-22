.class public abstract Lcom/ibm/icu/impl/number/FormatQuantityBCD;
.super Ljava/lang/Object;
.source "FormatQuantityBCD.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/FormatQuantity;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DOUBLE_MULTIPLIERS:[D


# instance fields
.field public explicitExactDouble:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected flags:I

.field protected isApproximate:Z

.field protected lOptPos:I

.field protected lReqPos:I

.field protected origDelta:I

.field protected origDouble:D

.field protected precision:I

.field protected rOptPos:I

.field protected rReqPos:I

.field protected scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    .line 411
    const/16 v0, 0x16

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    .line 106
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 107
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    .line 108
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    .line 506
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->explicitExactDouble:Z

    return-void
.end method

.method private _setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 528
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 530
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 531
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 532
    return-void
.end method

.method private _setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readIntToBcd(I)V

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 382
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readLongToBcd(J)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private _setToDoubleFast(D)V
    .locals 7

    .prologue
    const/16 v6, 0x34

    const-wide v4, 0x4480f0cf064dd592L    # 1.0E22

    .line 421
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 422
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    shr-long/2addr v0, v6

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3ff

    .line 425
    if-gt v0, v6, :cond_1

    double-to-long v2, p1

    long-to-double v2, v2

    cmpl-double v1, v2, p1

    if-nez v1, :cond_1

    .line 426
    double-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    .line 431
    iput-wide p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 432
    const/4 v1, 0x0

    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 435
    rsub-int/lit8 v0, v0, 0x34

    int-to-double v0, v0

    const-wide v2, 0x400a934f0979baa5L    # 3.32192809489

    div-double/2addr v0, v2

    double-to-int v2, v0

    .line 436
    if-ltz v2, :cond_3

    move v0, v2

    .line 439
    :goto_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    mul-double/2addr p1, v4

    add-int/lit8 v0, v0, -0x16

    goto :goto_1

    .line 440
    :cond_2
    sget-object v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v0, v1, v0

    mul-double/2addr v0, p1

    .line 447
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 448
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 449
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 450
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 444
    :goto_3
    const/16 v1, -0x16

    if-gt v0, v1, :cond_4

    div-double/2addr p1, v4

    add-int/lit8 v0, v0, 0x16

    goto :goto_3

    .line 445
    :cond_4
    sget-object v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v0, v0

    aget-wide v0, v1, v0

    div-double v0, p1, v0

    goto :goto_2
.end method

.method private _setToInt(I)V
    .locals 2

    .prologue
    .line 335
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 336
    int-to-long v0, p1

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readLongToBcd(J)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readIntToBcd(I)V

    goto :goto_0
.end method

.method private _setToLong(J)V
    .locals 3

    .prologue
    .line 356
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 357
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 359
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readIntToBcd(I)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->readLongToBcd(J)V

    goto :goto_0
.end method

.method private convertToAccurateDouble()V
    .locals 9

    .prologue
    const/16 v8, 0x30

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x2e

    const/4 v4, 0x0

    .line 460
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 461
    sget-boolean v2, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 462
    :cond_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 463
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 466
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 468
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 470
    sget-boolean v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 471
    :cond_1
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 473
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 493
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 494
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    .line 495
    iput-boolean v6, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->explicitExactDouble:Z

    .line 496
    return-void

    .line 474
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_4

    .line 476
    sget-boolean v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 477
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 478
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    goto :goto_0

    .line 479
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_7

    .line 483
    sget-boolean v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-eq v1, v3, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 484
    :cond_5
    sget-boolean v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v3, 0x12

    if-le v1, v3, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 485
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    goto :goto_0

    .line 489
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 491
    iget v3, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    goto/16 :goto_0
.end method

.method private fractionCount()I
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getLowerDisplayMagnitude()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private fractionCountWithoutTrailingZeros()I
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static safeSubtract(II)I
    .locals 1

    .prologue
    .line 631
    sub-int v0, p0, p1

    .line 632
    if-gez p1, :cond_1

    if-ge v0, p0, :cond_1

    const v0, 0x7fffffff

    .line 634
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    if-lez p1, :cond_0

    if-le v0, p0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0
.end method


# virtual methods
.method public adjustMagnitude(I)V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 197
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 199
    :cond_0
    return-void
.end method

.method public appendDigit(BIZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 809
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 813
    :cond_0
    if-nez p1, :cond_2

    .line 814
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-eqz v0, :cond_1

    .line 815
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 836
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    if-lez v0, :cond_3

    .line 822
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr p2, v0

    .line 823
    if-eqz p3, :cond_3

    .line 824
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 829
    :cond_3
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->shiftLeft(I)V

    .line 830
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setDigitPos(IB)V

    .line 833
    if-eqz p3, :cond_1

    .line 834
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    goto :goto_0
.end method

.method protected abstract bcdToBigDecimal()Ljava/math/BigDecimal;
.end method

.method public clear()Lcom/ibm/icu/impl/number/FormatQuantityBCD;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    .line 128
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 129
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    .line 130
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    .line 131
    iput v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 132
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 133
    return-object p0
.end method

.method protected abstract compact()V
.end method

.method protected abstract copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
.end method

.method public copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->copyBcdFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 113
    check-cast p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;

    .line 114
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    .line 115
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 116
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    .line 117
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    .line 118
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 119
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    .line 120
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 121
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 122
    iget v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 123
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    .line 124
    return-void
.end method

.method public createCopy()Lcom/ibm/icu/impl/number/FormatQuantity;
    .locals 3

    .prologue
    .line 310
    instance-of v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity2;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity2;

    check-cast p0, Lcom/ibm/icu/impl/number/FormatQuantity2;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/FormatQuantity2;-><init>(Lcom/ibm/icu/impl/number/FormatQuantity2;)V

    .line 315
    :goto_0
    return-object v0

    .line 312
    :cond_0
    instance-of v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity3;

    if-eqz v0, :cond_1

    .line 313
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity3;

    check-cast p0, Lcom/ibm/icu/impl/number/FormatQuantity3;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/FormatQuantity3;-><init>(Lcom/ibm/icu/impl/number/FormatQuantity3;)V

    goto :goto_0

    .line 314
    :cond_1
    instance-of v0, p0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    if-eqz v0, :cond_2

    .line 315
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    check-cast p0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Lcom/ibm/icu/impl/number/FormatQuantity4;)V

    goto :goto_0

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Don\'t know how to copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigit(I)B
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 277
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v0

    return v0
.end method

.method protected abstract getDigitPos(I)B
.end method

.method public getLowerDisplayMagnitude()I
    .locals 2

    .prologue
    .line 264
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 267
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    .line 268
    :cond_1
    :goto_0
    return v0

    .line 267
    :cond_2
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    if-le v1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    goto :goto_0
.end method

.method public getMagnitude()I
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Magnitude is not well-defined for zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D
    .locals 2

    .prologue
    .line 217
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 219
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD$1;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toLong()J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 223
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 225
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->fractionCount()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 229
    :pswitch_4
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->fractionCountWithoutTrailingZeros()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 205
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    .line 209
    :goto_0
    return-object v0

    .line 208
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/ibm/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpperDisplayMagnitude()I
    .locals 2

    .prologue
    .line 253
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 255
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/2addr v0, v1

    .line 256
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    if-le v1, v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 257
    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    return v0

    .line 256
    :cond_2
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegative()Z
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyBy(Ljava/math/BigDecimal;)V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 182
    return-void
.end method

.method public populateUFieldPosition(Ljava/text/FieldPosition;)V
    .locals 4

    .prologue
    .line 243
    instance-of v0, p1, Lcom/ibm/icu/text/UFieldPosition;

    if-eqz v0, :cond_0

    .line 244
    check-cast p1, Lcom/ibm/icu/text/UFieldPosition;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 245
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    double-to-int v0, v0

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->f:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/ibm/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    .line 247
    :cond_0
    return-void
.end method

.method protected abstract readBigIntegerToBcd(Ljava/math/BigInteger;)V
.end method

.method protected abstract readIntToBcd(I)V
.end method

.method protected abstract readLongToBcd(J)V
.end method

.method public roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    goto :goto_0
.end method

.method public roundToInfinity()V
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->convertToAccurateDouble()V

    .line 788
    :cond_0
    return-void
.end method

.method public roundToMagnitude(ILjava/math/MathContext;)V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/16 v10, 0x9

    const/4 v0, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 643
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    invoke-static {p1, v2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v2

    .line 646
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    .line 647
    const v6, 0x7fffffff

    if-eq p1, v6, :cond_0

    if-lez v5, :cond_1c

    iget v6, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    sub-int/2addr v6, v2

    if-le v6, v5, :cond_1c

    .line 649
    :cond_0
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    sub-int/2addr v2, v5

    move v6, v2

    .line 652
    :goto_0
    if-gtz v6, :cond_2

    iget-boolean v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-nez v2, :cond_2

    .line 781
    :cond_1
    :goto_1
    return-void

    .line 654
    :cond_2
    iget v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-eqz v2, :cond_1

    .line 660
    invoke-static {v6, v3}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v2

    .line 661
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v7

    .line 669
    iget-boolean v5, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-nez v5, :cond_5

    .line 670
    const/4 v5, 0x5

    if-ge v2, v5, :cond_4

    move v0, v3

    .line 748
    :cond_3
    :goto_2
    rem-int/lit8 v1, v7, 0x2

    if-nez v1, :cond_14

    .line 751
    :goto_3
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v1

    .line 753
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    .line 749
    invoke-static {v3, v1, v0, v2, p0}, Lcom/ibm/icu/impl/number/RoundingUtils;->getRoundingDirection(ZZIILjava/lang/Object;)Z

    move-result v0

    .line 757
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    if-lt v6, v1, :cond_15

    .line 758
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 759
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    .line 765
    :goto_4
    if-nez v0, :cond_19

    .line 766
    if-ne v7, v10, :cond_17

    move v0, v4

    .line 770
    :goto_5
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v1

    if-ne v1, v10, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 672
    :cond_4
    const/4 v5, 0x5

    if-gt v2, v5, :cond_3

    .line 675
    invoke-static {v6, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v2

    :goto_6
    if-ltz v2, :cond_13

    .line 676
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v5

    if-nez v5, :cond_3

    .line 675
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 683
    :cond_5
    invoke-static {v6, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v5

    .line 684
    iget v8, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/lit8 v8, v8, -0xe

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 685
    if-nez v2, :cond_a

    .line 686
    const/4 v2, -0x1

    .line 687
    :goto_7
    if-lt v5, v8, :cond_6

    .line 688
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v9

    if-eqz v9, :cond_9

    move v2, v3

    .line 722
    :cond_6
    :goto_8
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    invoke-static {v5}, Lcom/ibm/icu/impl/number/RoundingUtils;->roundsAtMidpoint(I)Z

    move-result v5

    .line 723
    invoke-static {v6, v3}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->safeSubtract(II)I

    move-result v8

    iget v9, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/lit8 v9, v9, -0xe

    if-lt v8, v9, :cond_8

    if-eqz v5, :cond_7

    if-eq v2, v1, :cond_8

    :cond_7
    if-nez v5, :cond_12

    if-gez v2, :cond_12

    .line 728
    :cond_8
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->convertToAccurateDouble()V

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->roundToMagnitude(ILjava/math/MathContext;)V

    goto/16 :goto_1

    .line 687
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 693
    :cond_a
    const/4 v9, 0x4

    if-ne v2, v9, :cond_c

    .line 694
    :goto_9
    if-lt v5, v8, :cond_1b

    .line 695
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v2

    if-eq v2, v10, :cond_b

    move v2, v3

    .line 697
    goto :goto_8

    .line 694
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 700
    :cond_c
    const/4 v9, 0x5

    if-ne v2, v9, :cond_e

    .line 701
    :goto_a
    if-lt v5, v8, :cond_1b

    .line 702
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    .line 704
    goto :goto_8

    .line 701
    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 707
    :cond_e
    if-ne v2, v10, :cond_10

    .line 708
    const/4 v2, -0x2

    .line 709
    :goto_b
    if-lt v5, v8, :cond_6

    .line 710
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v9

    if-eq v9, v10, :cond_f

    move v2, v0

    .line 712
    goto :goto_8

    .line 709
    :cond_f
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 715
    :cond_10
    const/4 v5, 0x5

    if-ge v2, v5, :cond_11

    move v2, v3

    .line 716
    goto :goto_8

    :cond_11
    move v2, v0

    .line 718
    goto :goto_8

    .line 734
    :cond_12
    iput-boolean v4, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    .line 735
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 736
    iput v4, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 738
    if-lez v6, :cond_1

    .line 744
    const/4 v1, -0x1

    if-ne v2, v1, :cond_1a

    move v1, v3

    .line 745
    :goto_c
    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    :cond_13
    move v0, v1

    goto/16 :goto_2

    :cond_14
    move v3, v4

    .line 748
    goto/16 :goto_3

    .line 761
    :cond_15
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->shiftRight(I)V

    goto/16 :goto_4

    .line 771
    :cond_16
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->shiftRight(I)V

    .line 773
    :cond_17
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v0

    .line 774
    sget-boolean v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v1, :cond_18

    if-ne v0, v10, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 775
    :cond_18
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setDigitPos(IB)V

    .line 776
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    .line 779
    :cond_19
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    goto/16 :goto_1

    :cond_1a
    move v1, v2

    goto :goto_c

    :cond_1b
    move v2, v1

    goto/16 :goto_8

    :cond_1c
    move v6, v2

    goto/16 :goto_0
.end method

.method protected abstract setBcdToZero()V
.end method

.method protected abstract setDigitPos(IB)V
.end method

.method public setIntegerFractionLength(IIII)V
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ge p2, p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_1
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_2
    sget-boolean v0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-ge p4, p3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_3
    iput p2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lOptPos:I

    .line 147
    iput p1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->lReqPos:I

    .line 148
    neg-int v0, p3

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    .line 149
    neg-int v0, p4

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    .line 150
    return-void
.end method

.method public setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 516
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 517
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 518
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    .line 520
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 522
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    .line 524
    :cond_1
    return-void
.end method

.method public setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 368
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 369
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 370
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 372
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 374
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    .line 376
    :cond_1
    return-void
.end method

.method public setToDouble(D)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 397
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_0

    .line 398
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 399
    neg-double p1, p1

    .line 401
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    goto :goto_0

    .line 405
    :cond_3
    cmpl-double v0, p1, v2

    if-eqz v0, :cond_1

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToDoubleFast(D)V

    .line 407
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    goto :goto_0
.end method

.method public setToInt(I)V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 324
    if-gez p1, :cond_0

    .line 325
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 326
    neg-int p1, p1

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    .line 329
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToInt(I)V

    .line 330
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    .line 332
    :cond_1
    return-void
.end method

.method public setToLong(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->setBcdToZero()V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 345
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 346
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->flags:I

    .line 347
    neg-long p1, p1

    .line 349
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->_setToLong(J)V

    .line 351
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->compact()V

    .line 353
    :cond_1
    return-void
.end method

.method protected abstract shiftLeft(I)V
.end method

.method protected abstract shiftRight(I)V
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->convertToAccurateDouble()V

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->bcdToBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public toDouble()D
    .locals 8

    .prologue
    const-wide v6, 0x4480f0cf064dd592L    # 1.0E22

    .line 573
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isApproximate:Z

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->toDoubleFromOriginal()D

    move-result-wide v0

    .line 602
    :cond_0
    :goto_0
    return-wide v0

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 583
    :cond_4
    const-wide/16 v2, 0x0

    .line 584
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    const/16 v4, 0x11

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v1, v0, v1

    .line 585
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v1, :cond_5

    .line 586
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 585
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 588
    :cond_5
    long-to-double v2, v2

    .line 589
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    add-int/2addr v0, v1

    .line 590
    if-ltz v0, :cond_7

    .line 593
    :goto_2
    const/16 v1, 0x16

    if-lt v0, v1, :cond_6

    mul-double/2addr v2, v6

    add-int/lit8 v0, v0, -0x16

    goto :goto_2

    .line 594
    :cond_6
    sget-object v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v0, v1, v0

    mul-double/2addr v0, v2

    .line 601
    :goto_3
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-double v0, v0

    goto :goto_0

    .line 598
    :cond_7
    :goto_4
    const/16 v1, -0x16

    if-gt v0, v1, :cond_8

    div-double/2addr v2, v6

    add-int/lit8 v0, v0, 0x16

    goto :goto_4

    .line 599
    :cond_8
    sget-object v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v0, v0

    aget-wide v0, v1, v0

    div-double v0, v2, v0

    goto :goto_3
.end method

.method protected toDoubleFromOriginal()D
    .locals 6

    .prologue
    const-wide v4, 0x4480f0cf064dd592L    # 1.0E22

    .line 615
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDouble:D

    .line 616
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->origDelta:I

    .line 617
    if-ltz v0, :cond_2

    .line 619
    :goto_0
    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    mul-double/2addr v2, v4

    add-int/lit8 v0, v0, -0x16

    goto :goto_0

    .line 620
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v0, v1, v0

    mul-double/2addr v0, v2

    .line 626
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    .line 627
    :cond_1
    return-wide v0

    .line 623
    :cond_2
    :goto_2
    const/16 v1, -0x16

    if-gt v0, v1, :cond_3

    div-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x16

    goto :goto_2

    .line 624
    :cond_3
    sget-object v1, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v0, v0

    aget-wide v0, v1, v0

    div-double v0, v2, v0

    goto :goto_1
.end method

.method protected toFractionLong(Z)J
    .locals 6

    .prologue
    .line 554
    const-wide/16 v2, 0x0

    .line 555
    const/4 v0, -0x1

    .line 558
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rReqPos:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->rOptPos:I

    if-lt v0, v1, :cond_1

    .line 560
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 559
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 562
    :cond_1
    return-wide v2
.end method

.method protected toLong()J
    .locals 6

    .prologue
    .line 541
    const-wide/16 v2, 0x0

    .line 542
    iget v0, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->precision:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 543
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    iget v1, p0, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->scale:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/FormatQuantityBCD;->getDigitPos(I)B

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 542
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 545
    :cond_0
    return-wide v2
.end method
