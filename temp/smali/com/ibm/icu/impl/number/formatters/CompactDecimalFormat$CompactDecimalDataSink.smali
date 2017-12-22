.class final Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "CompactDecimalFormat.java"


# instance fields
.field compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

.field compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

.field currencySymbol:Ljava/lang/String;

.field data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

.field exception:Ljava/lang/IllegalArgumentException;

.field pnag:Lcom/ibm/icu/impl/number/PNAffixGenerator;

.field symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;)V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    .line 406
    iput-object p2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 407
    iget-object v0, p3, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    .line 408
    iget-object v0, p3, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->currencySymbol:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->currencySymbol:Ljava/lang/String;

    .line 409
    iget-object v0, p3, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 410
    invoke-static {}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getThreadLocalInstance()Lcom/ibm/icu/impl/number/PNAffixGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->pnag:Lcom/ibm/icu/impl/number/PNAffixGenerator;

    .line 411
    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    move v0, v1

    .line 416
    :goto_0
    invoke-interface {v3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 417
    const-string/jumbo v2, "patternsShort"

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    sget-object v4, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne v2, v4, :cond_3

    .line 424
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v4

    move v2, v1

    .line 425
    :goto_1
    invoke-interface {v4, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 426
    const-string/jumbo v5, "decimalFormat"

    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    sget-object v6, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;->DECIMAL:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    if-ne v5, v6, :cond_5

    .line 433
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    move v0, v1

    .line 434
    :goto_2
    invoke-interface {v3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 439
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->length()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v4, v2

    .line 442
    const/16 v2, 0xf

    if-lt v4, v2, :cond_7

    .line 434
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 418
    :cond_3
    const-string/jumbo v2, "patternsLong"

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    sget-object v4, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-eq v2, v4, :cond_0

    .line 416
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_5
    const-string/jumbo v5, "currencyFormat"

    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    sget-object v6, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;->CURRENCY:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    if-eq v5, v6, :cond_1

    .line 425
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    :cond_7
    :try_start_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v5

    move v2, v1

    .line 446
    :goto_4
    invoke-interface {v5, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 449
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v6

    .line 450
    iget-object v7, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    invoke-virtual {v7, v4, v6}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->has(ILcom/ibm/icu/impl/StandardPlural;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 446
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 456
    :cond_8
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v7

    .line 457
    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 458
    iget-object v7, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    invoke-virtual {v7, v4, v6}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->setNoFallback(ILcom/ibm/icu/impl/StandardPlural;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 480
    :catch_0
    move-exception v2

    .line 481
    iput-object v2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->exception:Ljava/lang/IllegalArgumentException;

    goto :goto_3

    .line 464
    :cond_9
    :try_start_2
    invoke-static {v7}, Lcom/ibm/icu/impl/number/PatternString;->parseToProperties(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    move-result-object v7

    .line 465
    invoke-virtual {v7}, Lcom/ibm/icu/impl/number/Properties;->getMinimumIntegerDigits()I

    move-result v8

    sub-int v8, v4, v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    int-to-byte v8, v8

    .line 466
    iget-object v9, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    invoke-virtual {v9, v4, v8}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->setOrGetMultiplier(IB)I

    move-result v9

    if-eq v8, v9, :cond_a

    .line 467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Different number of zeros for same power of ten in compact decimal format data for locale \'%s\', style \'%s\', type \'%s\'"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 470
    invoke-virtual {v7}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 471
    invoke-virtual {v7}, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    .line 472
    invoke-virtual {v7}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 468
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_a
    iget-object v8, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->pnag:Lcom/ibm/icu/impl/number/PNAffixGenerator;

    iget-object v9, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v10, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->currencySymbol:Ljava/lang/String;

    .line 476
    invoke-virtual {v8, v9, v10, v7}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v7

    .line 477
    iget-object v8, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    iget-object v9, v7, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    iget-object v7, v7, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    invoke-virtual {v8, v9, v7, v4, v6}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->setModifiers(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;ILcom/ibm/icu/impl/StandardPlural;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 491
    :cond_b
    return-void
.end method
