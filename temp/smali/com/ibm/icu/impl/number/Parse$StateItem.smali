.class Lcom/ibm/icu/impl/number/Parse$StateItem;
.super Ljava/lang/Object;
.source "Parse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

.field currentAffixPattern:Ljava/lang/CharSequence;

.field currentCurrencyTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">.ParseState;"
        }
    .end annotation
.end field

.field currentDigitTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/Byte;",
            ">.ParseState;"
        }
    .end annotation
.end field

.field currentDigitType:Lcom/ibm/icu/impl/number/Parse$DigitType;

.field currentOffset:I

.field currentStepwiseParserTag:J

.field currentString:Ljava/lang/CharSequence;

.field currentTrailing:Z

.field exponent:I

.field fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

.field groupingCp:I

.field groupingWidths:J

.field final id:C

.field isoCode:Ljava/lang/String;

.field name:Lcom/ibm/icu/impl/number/Parse$StateName;

.field numDigits:I

.field path:Ljava/lang/String;

.field returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

.field returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

.field sawCurrency:Z

.field sawDecimalPoint:Z

.field sawExponentDigit:Z

.field sawInfinity:Z

.field sawNaN:Z

.field sawNegative:Z

.field sawNegativeExponent:Z

.field sawPrefix:Z

.field sawSuffix:Z

.field score:I

.field trailingCount:I

.field trailingZeros:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 331
    const-class v0, Lcom/ibm/icu/impl/number/Parse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/Parse$StateItem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(C)V
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    .line 383
    iput-char p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->id:C

    .line 384
    return-void
.end method


# virtual methods
.method appendDigit(BLcom/ibm/icu/impl/number/Parse$DigitType;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 506
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->EXPONENT:Lcom/ibm/icu/impl/number/Parse$DigitType;

    if-ne p2, v0, :cond_1

    .line 507
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    .line 508
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    .line 509
    iget v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    if-ge v0, v1, :cond_0

    .line 511
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    .line 526
    :goto_0
    return-void

    .line 513
    :cond_0
    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    goto :goto_0

    .line 516
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->numDigits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->numDigits:I

    .line 517
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->FRACTION:Lcom/ibm/icu/impl/number/Parse$DigitType;

    if-ne p2, v0, :cond_2

    if-nez p1, :cond_2

    .line 518
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingZeros:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingZeros:I

    goto :goto_0

    .line 519
    :cond_2
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->FRACTION:Lcom/ibm/icu/impl/number/Parse$DigitType;

    if-ne p2, v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    iget v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingZeros:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->appendDigit(BIZ)V

    .line 521
    iput v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingZeros:I

    goto :goto_0

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v0, p1, v2, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->appendDigit(BIZ)V

    goto :goto_0
.end method

.method clear()Lcom/ibm/icu/impl/number/Parse$StateItem;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 393
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 394
    iput v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 395
    iput v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    .line 398
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->clear()Lcom/ibm/icu/impl/number/FormatQuantityBCD;

    .line 399
    iput v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->numDigits:I

    .line 400
    iput v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingZeros:I

    .line 401
    iput v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    .line 405
    iput-wide v4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    .line 406
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    .line 407
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    .line 408
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    .line 409
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 410
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNaN:Z

    .line 411
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    .line 412
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    .line 413
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    .line 414
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    .line 415
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    .line 416
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    .line 419
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 420
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 421
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    .line 422
    iput v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentOffset:I

    .line 423
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    .line 424
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 425
    iput-wide v4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    .line 426
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    .line 427
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    .line 428
    iput-object v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitType:Lcom/ibm/icu/impl/number/Parse$DigitType;

    .line 432
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    .line 434
    return-object p0
.end method

.method copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;
    .locals 2

    .prologue
    .line 452
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 453
    iget v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    .line 456
    if-gez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 459
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    iget-object v1, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 460
    iget v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->numDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->numDigits:I

    .line 461
    iget v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingZeros:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingZeros:I

    .line 462
    iget v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    .line 465
    iget v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    .line 466
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    .line 467
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    .line 468
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    .line 469
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    .line 470
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 471
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNaN:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNaN:Z

    .line 472
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    .line 473
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    .line 474
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    .line 475
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    .line 476
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    .line 477
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    .line 480
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 481
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 482
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    .line 483
    iget v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentOffset:I

    iput v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentOffset:I

    .line 484
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    .line 485
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 486
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    .line 487
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    .line 488
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    .line 489
    iget-object v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitType:Lcom/ibm/icu/impl/number/Parse$DigitType;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitType:Lcom/ibm/icu/impl/number/Parse$DigitType;

    .line 492
    sget-boolean v0, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->id:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    .line 496
    :cond_0
    return-object p0

    .line 456
    :cond_1
    iget v0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    invoke-static {p3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->numDigits:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNaN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toNumber(Lcom/ibm/icu/impl/number/Parse$IProperties;)Ljava/lang/Number;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v4, -0x8000000000000000L

    .line 541
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNaN:Z

    if-eqz v0, :cond_0

    .line 542
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    .line 544
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    if-eqz v0, :cond_2

    .line 545
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz v0, :cond_1

    .line 546
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz v0, :cond_3

    .line 552
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_3
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getParseToBigDecimal()Z

    move-result v0

    .line 557
    iget v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_7

    .line 558
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz v0, :cond_4

    .line 559
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_4
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    if-eqz v0, :cond_5

    .line 561
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_5
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz v0, :cond_6

    .line 563
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_7
    iget v2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_8

    move v0, v1

    .line 573
    :cond_8
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v2

    .line 574
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getMagnitudeMultiplier()I

    move-result v3

    if-eqz v3, :cond_a

    .line 575
    if-nez v2, :cond_9

    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 576
    :cond_9
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getMagnitudeMultiplier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 578
    :cond_a
    iget-boolean v3, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    if-eqz v3, :cond_b

    const/4 v1, -0x1

    :cond_b
    iget v3, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->exponent:I

    mul-int/2addr v3, v1

    .line 582
    invoke-static {p1}, Lcom/ibm/icu/impl/number/RoundingUtils;->getMathContextOr16Digits(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Ljava/math/MathContext;

    move-result-object v4

    .line 586
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    .line 587
    iget-boolean v5, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    .line 588
    :cond_c
    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 589
    if-eqz v2, :cond_d

    .line 590
    invoke-virtual {v1, v2, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 592
    :cond_d
    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    .line 593
    if-nez v0, :cond_e

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-lez v0, :cond_f

    :cond_e
    move-object v0, v1

    .line 594
    goto/16 :goto_0

    .line 595
    :cond_f
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x12

    if-gt v0, v2, :cond_10

    .line 596
    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 598
    :cond_10
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    const-string/jumbo v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string/jumbo v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Parse$StateName;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    sget-object v4, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_STRING:Lcom/ibm/icu/impl/number/Parse$StateName;

    if-ne v0, v4, :cond_0

    .line 623
    const-string/jumbo v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 625
    const-string/jumbo v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentOffset:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    sget-object v4, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    if-ne v0, v4, :cond_1

    .line 630
    const-string/jumbo v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 632
    const-string/jumbo v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-wide v4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    invoke-static {v4, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getOffset(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_1
    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->fq:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 638
    const-string/jumbo v0, " grouping:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    new-array v0, v1, [C

    const/16 v4, 0x3f

    aput-char v4, v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 640
    const-string/jumbo v0, " widths:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-wide v4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string/jumbo v0, " seen:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNaN:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    if-eqz v0, :cond_9

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    const-string/jumbo v0, " trailing:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    const-string/jumbo v0, " score:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    const-string/jumbo v0, " affix:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 656
    const-string/jumbo v0, " currency:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 639
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 643
    goto :goto_1

    :cond_4
    move v0, v2

    .line 644
    goto :goto_2

    :cond_5
    move v0, v2

    .line 645
    goto :goto_3

    :cond_6
    move v0, v2

    .line 646
    goto :goto_4

    :cond_7
    move v0, v2

    .line 647
    goto :goto_5

    :cond_8
    move v0, v2

    .line 648
    goto :goto_6

    :cond_9
    move v1, v2

    .line 649
    goto :goto_7
.end method
