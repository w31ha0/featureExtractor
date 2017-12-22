.class Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;
.super Ljava/lang/Object;
.source "PatternString.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field negative:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

.field positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    const-class v0, Lcom/ibm/icu/impl/number/PatternString;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;-><init>(Lcom/ibm/icu/impl/number/PatternString$1;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    .line 396
    iput-object v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->negative:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/number/PatternString$1;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;-><init>()V

    return-void
.end method


# virtual methods
.method saveToProperties(Lcom/ibm/icu/impl/number/Properties;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 404
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->groupingSizes:[I

    aget v0, v0, v3

    if-eq v0, v5, :cond_0

    .line 405
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->groupingSizes:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->groupingSizes:[I

    aget v0, v0, v6

    if-eq v0, v5, :cond_1

    .line 410
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->groupingSizes:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->totalIntegerDigits:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->maximumFractionDigits:I

    if-lez v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumFractionDigits:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v1

    .line 432
    :goto_2
    iget-object v4, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v4, v4, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumSignificantDigits:I

    if-lez v4, :cond_4

    .line 433
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 434
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 435
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 436
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumSignificantDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 437
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->maximumSignificantDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 465
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->hasDecimal:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->maximumFractionDigits:I

    if-nez v0, :cond_8

    .line 466
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/number/Properties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 472
    :goto_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->exponentDigits:I

    if-lez v0, :cond_a

    .line 473
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->exponentShowPlusSign:Z

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 474
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->exponentDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 475
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumSignificantDigits:I

    if-nez v0, :cond_9

    .line 477
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumIntegerDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 478
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->totalIntegerDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 492
    :goto_5
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 494
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->paddingWidth:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v2, v2, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->prefix:Ljava/lang/StringBuilder;

    .line 496
    invoke-static {v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescapedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v2, v2, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->suffix:Ljava/lang/StringBuilder;

    .line 497
    invoke-static {v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescapedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v0, v2

    .line 498
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setFormatWidth(I)Lcom/ibm/icu/impl/number/Properties;

    .line 499
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 500
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 511
    :goto_6
    sget-boolean v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 407
    :cond_0
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_0

    .line 412
    :cond_1
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_1

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumIntegerDigits:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumFractionDigits:I

    if-nez v0, :cond_3

    move v0, v1

    move v2, v3

    .line 424
    goto/16 :goto_2

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v2, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumIntegerDigits:I

    .line 427
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->minimumFractionDigits:I

    goto/16 :goto_2

    .line 438
    :cond_4
    iget-object v4, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v4, v4, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->rounding:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/number/FormatQuantity4;->isZero()Z

    move-result v4

    if-nez v4, :cond_6

    .line 439
    if-nez p2, :cond_5

    .line 440
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 441
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->maximumFractionDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 442
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->rounding:Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 448
    :goto_7
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 449
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_3

    .line 444
    :cond_5
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 445
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 446
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_7

    .line 451
    :cond_6
    if-nez p2, :cond_7

    .line 452
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 453
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->maximumFractionDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 454
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 460
    :goto_8
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 461
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_3

    .line 456
    :cond_7
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 457
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 458
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_8

    .line 468
    :cond_8
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/number/Properties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_4

    .line 481
    :cond_9
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 482
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_5

    .line 485
    :cond_a
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/number/Properties;->setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 486
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 487
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 488
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_5

    .line 501
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v6, :cond_d

    .line 502
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_c

    .line 503
    const-string/jumbo v0, "\'"

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_6

    .line 505
    :cond_c
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_6

    .line 508
    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v2, v2, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->padding:Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto/16 :goto_6

    .line 512
    :cond_e
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadPosition(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;)Lcom/ibm/icu/impl/number/Properties;

    .line 522
    :goto_9
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->prefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPositivePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 523
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->suffix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPositiveSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 524
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->negative:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    if-eqz v0, :cond_10

    .line 525
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->negative:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->prefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 526
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->negative:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->suffix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 533
    :goto_a
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->hasPercentSign:Z

    if-eqz v0, :cond_11

    .line 534
    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/number/Properties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/Properties;

    .line 540
    :goto_b
    return-void

    .line 514
    :cond_f
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/number/Properties;->setFormatWidth(I)Lcom/ibm/icu/impl/number/Properties;

    .line 515
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_PAD_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 516
    sget-object v0, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_PAD_POSITION:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadPosition(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_9

    .line 528
    :cond_10
    invoke-virtual {p1, v7}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 529
    invoke-virtual {p1, v7}, Lcom/ibm/icu/impl/number/Properties;->setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_a

    .line 535
    :cond_11
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$PatternParseResult;->positive:Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$SubpatternParseResult;->hasPerMilleSign:Z

    if-eqz v0, :cond_12

    .line 536
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_b

    .line 538
    :cond_12
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/number/Properties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_b
.end method
