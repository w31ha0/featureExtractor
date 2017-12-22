.class public Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source "CompactDecimalFormat.java"


# static fields
.field private static final DEFAULT_SIG_MODE:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

.field protected static final threadLocalDataCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;",
            "Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;",
            ">;>;"
        }
    .end annotation
.end field

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


# instance fields
.field private final data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

.field private final defaultMod:Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

.field private final rounder:Lcom/ibm/icu/impl/number/Rounder;

.field private final style:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;->OVERRIDE_MAXIMUM_FRACTION:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->DEFAULT_SIG_MODE:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    .line 76
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    .line 115
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$2;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->threadLocalDataCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 180
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;-><init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)V

    .line 181
    invoke-static {p2}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->getRounder(Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    .line 182
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->getData(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;)Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    .line 183
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->getDefaultMod(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;)Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->defaultMod:Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

    .line 184
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getCompactStyle()Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->style:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 185
    return-void
.end method

.method private static apply(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/Rounder;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;)V
    .locals 3

    .prologue
    .line 220
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/FormatQuantity;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p3, p0}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 228
    :goto_0
    invoke-interface {p0, p2}, Lcom/ibm/icu/impl/number/FormatQuantity;->getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v1

    .line 229
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/FormatQuantity;->isNegative()Z

    move-result v2

    .line 230
    invoke-virtual {p4, v0, v1, v2}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->getModifier(ILcom/ibm/icu/impl/StandardPlural;Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 233
    invoke-interface {p5, v2}, Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;->getModifier(Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object v0

    .line 235
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    .line 236
    return-void

    .line 224
    :cond_1
    invoke-virtual {p3, p0, p4}, Lcom/ibm/icu/impl/number/Rounder;->chooseMultiplierAndApply(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;)I

    move-result v0

    .line 225
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private static getData(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;)Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;
    .locals 6

    .prologue
    .line 126
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->threadLocalDataCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    .line 127
    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-object v0

    .line 130
    :cond_0
    new-instance v1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 132
    new-instance v2, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;

    invoke-direct {v2, v1, p0, p1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;-><init>(Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;)V

    .line 133
    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 134
    const-string/jumbo v4, "com/ibm/icu/impl/data/icudt59b"

    .line 135
    invoke-static {v4, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 136
    invoke-static {v3, v0, v2, v1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->internalPopulateData(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;)V

    .line 137
    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    sget-object v5, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne v4, v5, :cond_1

    .line 139
    sget-object v4, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iput-object v4, v2, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 140
    invoke-static {v3, v0, v2, v1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->internalPopulateData(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;)V

    .line 142
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->threadLocalDataCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 143
    goto :goto_0
.end method

.method private static getDefaultMod(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;)Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 165
    iget-object v1, p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->compactType:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    sget-object v2, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;->CURRENCY:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactType;

    if-ne v1, v2, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getPatternForStyle(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    invoke-static {v0}, Lcom/ibm/icu/impl/number/PatternString;->parseToProperties(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getThreadLocalInstance()Lcom/ibm/icu/impl/number/PNAffixGenerator;

    move-result-object v1

    .line 174
    iget-object v2, p1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;->currencySymbol:Ljava/lang/String;

    .line 175
    invoke-virtual {v1, p0, v2, v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    iget-object v2, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;-><init>(Lcom/ibm/icu/impl/number/Modifier$AffixModifier;Lcom/ibm/icu/impl/number/Modifier$AffixModifier;)V

    return-object v1

    .line 168
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getPatternForStyle(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;-><init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)V

    return-object v0
.end method

.method private static getRounder(Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;
    .locals 5

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->useSignificantDigits(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/RoundingFormat;->getDefaultOrNull(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;

    move-result-object v0

    .line 93
    :cond_0
    if-nez v0, :cond_1

    .line 94
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getMinimumSignificantDigits()I

    move-result v1

    .line 95
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getMaximumSignificantDigits()I

    move-result v2

    .line 96
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getSignificantDigitsMode()Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    move-result-object v3

    .line 97
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v4

    .line 99
    if-lez v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 100
    if-lez v2, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 101
    if-eqz v3, :cond_4

    move-object v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setSignificantDigitsMode(Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 104
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 105
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getMinimumFractionDigits()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 106
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getMaximumFractionDigits()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 107
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getMinimumIntegerDigits()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 108
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getMaximumIntegerDigits()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 109
    invoke-static {v4}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;

    move-result-object v0

    .line 111
    :cond_1
    return-object v0

    .line 99
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 101
    :cond_4
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->DEFAULT_SIG_MODE:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    goto :goto_2
.end method

.method private static internalPopulateData(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;)V
    .locals 2

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NumberElements/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "latn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v0, "NumberElements/latn"

    invoke-virtual {p1, v0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 156
    :cond_0
    iget-object v0, p2, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->exception:Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p2, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalDataSink;->exception:Ljava/lang/IllegalArgumentException;

    throw v0

    .line 159
    :cond_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static useCompactDecimalFormat(Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Z
    .locals 2

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->getCompactStyle()Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;->DEFAULT_COMPACT_STYLE:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;)V
    .locals 6

    .prologue
    .line 189
    iget-object v3, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    iget-object v4, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->data:Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;

    iget-object v5, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->defaultMod:Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/Rounder;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;)V

    .line 190
    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->style:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setCompactStyle(Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)Lcom/ibm/icu/impl/number/Properties;

    .line 241
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Rounder;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 242
    return-void
.end method
