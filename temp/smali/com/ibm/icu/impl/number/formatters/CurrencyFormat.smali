.class public Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;
.super Ljava/lang/Object;
.source "CurrencyFormat.java"


# static fields
.field private static final DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

.field private static final threadLocalProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/ibm/icu/impl/number/Properties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    const-string/jumbo v0, "XXX"

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

    .line 290
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static getCurrencyIsoCode(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrencyLongName(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 189
    :cond_0
    if-nez v0, :cond_1

    .line 190
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencySymbol(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 194
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrencyModifier(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;
    .locals 11

    .prologue
    .line 201
    invoke-static {}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getThreadLocalInstance()Lcom/ibm/icu/impl/number/PNAffixGenerator;

    move-result-object v0

    .line 202
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencySymbol(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencyIsoCode(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v7

    .line 210
    new-instance v8, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;

    invoke-direct {v8}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;-><init>()V

    .line 211
    new-instance v9, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v9}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    .line 212
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/ibm/icu/impl/StandardPlural;

    .line 213
    invoke-static {p0, p1, v6}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencyLongName(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v4

    .line 216
    if-nez v7, :cond_0

    move-object v1, p0

    move-object v5, p1

    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v1

    .line 225
    :goto_1
    iget-object v4, v1, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    iget-object v1, v1, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    invoke-virtual {v8, v6, v4, v1}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->put(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v6}, Lcom/ibm/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v5, 0x1

    invoke-static {v1, v9, v5}, Lcom/ibm/icu/impl/number/PatternString;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    move-object v1, p0

    move-object v5, v9

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v1

    goto :goto_1

    .line 227
    :cond_1
    return-object v8
.end method

.method public static getCurrencyRounder(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;
    .locals 2

    .prologue
    .line 299
    invoke-static {p1}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->useSignificantDigits(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {p1}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 302
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    .line 303
    invoke-static {v0, p0, p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->populateCurrencyRounderProperties(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)V

    .line 304
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    invoke-static {v0}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/IncrementRounder;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrencySymbol(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->getCurrencyStyle()Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;->ISO_CODE:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencyIsoCode(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 136
    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static populateCurrencyRounderProperties(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)V
    .locals 8

    .prologue
    .line 235
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 236
    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 240
    :cond_0
    if-nez v0, :cond_1

    .line 243
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

    .line 246
    :cond_1
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;

    move-result-object v2

    .line 247
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getMinimumFractionDigits()I

    move-result v4

    .line 248
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getMaximumFractionDigits()I

    move-result v3

    .line 250
    if-eqz v2, :cond_4

    move-object v1, v2

    .line 252
    :goto_0
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency;->getRoundingIncrement(Lcom/ibm/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v6

    .line 253
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I

    move-result v0

    .line 255
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 256
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 257
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 259
    if-nez v2, :cond_9

    if-gez v4, :cond_2

    if-ltz v3, :cond_9

    .line 261
    :cond_2
    if-gez v4, :cond_6

    .line 262
    if-ge v0, v3, :cond_5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 263
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 277
    :goto_2
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-lez v0, :cond_3

    .line 279
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_a

    .line 285
    :goto_3
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 288
    :cond_3
    return-void

    .line 250
    :cond_4
    sget-object v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    goto :goto_0

    :cond_5
    move v0, v3

    .line 262
    goto :goto_1

    .line 264
    :cond_6
    if-gez v3, :cond_8

    .line 265
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 266
    if-le v0, v4, :cond_7

    :goto_4
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_4

    .line 268
    :cond_8
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 269
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_2

    .line 273
    :cond_9
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 274
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_2

    .line 283
    :cond_a
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3
.end method

.method public static useCurrency(Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Z
    .locals 1

    .prologue
    .line 108
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
