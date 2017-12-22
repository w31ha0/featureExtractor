.class public Lcom/ibm/icu/impl/number/formatters/MeasureFormat;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# direct methods
.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    .line 52
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->getMeasureUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v3

    .line 53
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->getMeasureFormatWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    .line 55
    if-nez v3, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A measure unit is required for MeasureFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-nez v0, :cond_2

    .line 59
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-object v1, v0

    .line 64
    :goto_0
    invoke-static {v2, v1}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v2

    .line 65
    new-instance v4, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;

    invoke-direct {v4}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;-><init>()V

    .line 66
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/StandardPlural;

    .line 68
    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v6

    invoke-virtual {v2, v3, v1, v6}, Lcom/ibm/icu/text/MeasureFormat;->getPluralFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    .line 69
    new-instance v6, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v8, v7}, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V

    invoke-virtual {v4, v0, v6}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->put(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V

    goto :goto_1

    .line 71
    :cond_1
    return-object v4

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static useMeasureFormat(Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;)Z
    .locals 2

    .prologue
    .line 47
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->getMeasureUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->DEFAULT_MEASURE_UNIT:Lcom/ibm/icu/util/MeasureUnit;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
