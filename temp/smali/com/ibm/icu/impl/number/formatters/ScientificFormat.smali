.class public Lcom/ibm/icu/impl/number/formatters/ScientificFormat;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source "ScientificFormat.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;


# static fields
.field static final synthetic $assertionsDisabled:Z

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

.field private static final threadLocalStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digitStrings:[Ljava/lang/String;

.field private final exponentDigits:I

.field private final exponentShowPlusSign:Z

.field private final interval:I

.field private final maxInt:I

.field private final minInt:I

.field private final rounder:Lcom/ibm/icu/impl/number/Rounder;

.field private final separatorMod:Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

.field private final signMod:Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->$assertionsDisabled:Z

    .line 58
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    .line 174
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$2;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;Lcom/ibm/icu/impl/number/Rounder;)V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    .line 142
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 143
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getExponentSignAlwaysShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->exponentShowPlusSign:Z

    .line 144
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMinimumExponentDigits()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->exponentDigits:I

    .line 150
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMaximumIntegerDigits()I

    move-result v3

    .line 151
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMinimumIntegerDigits()I

    move-result v2

    .line 152
    if-gez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->minInt:I

    .line 153
    if-ge v3, v2, :cond_4

    :cond_0
    :goto_1
    iput v2, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->maxInt:I

    .line 154
    sget-boolean v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->minInt:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->minInt:I

    iget v2, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->maxInt:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->maxInt:I

    if-lt v0, v4, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_2
    if-lt v2, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 153
    :cond_4
    if-ge v3, v4, :cond_0

    move v2, v3

    goto :goto_1

    .line 156
    :cond_5
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->maxInt:I

    if-ge v0, v1, :cond_6

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->interval:I

    .line 157
    iput-object p3, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    .line 158
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->digitStrings:[Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    const-string/jumbo v2, ""

    .line 162
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->separatorMod:Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    .line 163
    new-instance v2, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    new-instance v3, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    const-string/jumbo v4, ""

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->exponentShowPlusSign:Z

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V

    new-instance v0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    const-string/jumbo v4, ""

    .line 171
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V

    invoke-direct {v2, v3, v0}, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;-><init>(Lcom/ibm/icu/impl/number/Modifier$AffixModifier;Lcom/ibm/icu/impl/number/Modifier$AffixModifier;)V

    iput-object v2, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->signMod:Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    .line 172
    return-void

    .line 156
    :cond_6
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->maxInt:I

    goto :goto_2

    .line 167
    :cond_7
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;)Lcom/ibm/icu/impl/number/formatters/ScientificFormat;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-static {p1}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->useRoundingIncrement(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/IncrementRounder;

    move-result-object v0

    .line 121
    :goto_0
    new-instance v1, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;

    invoke-direct {v1, p0, p1, v0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;-><init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;Lcom/ibm/icu/impl/number/Rounder;)V

    return-object v1

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->useSignificantDigits(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p1}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v6

    .line 77
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMinimumIntegerDigits()I

    move-result v5

    .line 78
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMaximumIntegerDigits()I

    move-result v2

    .line 79
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMinimumFractionDigits()I

    move-result v1

    .line 80
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMaximumFractionDigits()I

    move-result v0

    .line 83
    invoke-static {p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->useCurrency(Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    invoke-static {v6, p0, p1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->populateCurrencyRounderProperties(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)V

    .line 86
    invoke-virtual {v6}, Lcom/ibm/icu/impl/number/Properties;->getMinimumFractionDigits()I

    move-result v1

    .line 87
    invoke-virtual {v6}, Lcom/ibm/icu/impl/number/Properties;->getMaximumFractionDigits()I

    move-result v0

    .line 88
    invoke-virtual {v6}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    .line 95
    :cond_2
    if-gez v5, :cond_3

    move v5, v3

    .line 96
    :cond_3
    if-ge v2, v5, :cond_9

    move v4, v5

    .line 97
    :goto_1
    if-gez v1, :cond_4

    move v1, v3

    .line 98
    :cond_4
    if-ge v0, v1, :cond_5

    move v0, v1

    .line 100
    :cond_5
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/number/Properties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 102
    if-nez v5, :cond_6

    if-nez v0, :cond_6

    .line 104
    invoke-virtual {v6, v7}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 105
    const v2, 0x7fffffff

    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 114
    :goto_2
    if-nez v4, :cond_8

    move v2, v3

    :goto_3
    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 115
    invoke-virtual {v6, v4}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 116
    add-int/2addr v1, v5

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 117
    invoke-virtual {v6, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 118
    invoke-static {v6}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_6
    if-nez v5, :cond_7

    if-nez v1, :cond_7

    .line 108
    invoke-virtual {v6, v7}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 109
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_2

    .line 111
    :cond_7
    add-int v2, v5, v1

    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 112
    add-int v2, v5, v0

    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_2

    .line 114
    :cond_8
    add-int v2, v5, v1

    sub-int/2addr v2, v0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_9
    move v4, v2

    goto :goto_1
.end method

.method public static useScientificNotation(Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;)Z
    .locals 2

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;->getMinimumExponentDigits()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    move v1, v2

    .line 197
    :goto_0
    invoke-static {v1}, Lcom/ibm/icu/impl/number/FormatQuantitySelector;->from(I)Lcom/ibm/icu/impl/number/FormatQuantityBCD;

    move-result-object v5

    .line 198
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 200
    iget v4, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->exponentDigits:I

    const v6, 0x7fffffff

    invoke-interface {v5, v4, v6, v2, v2}, Lcom/ibm/icu/impl/number/FormatQuantity;->setIntegerFractionLength(IIII)V

    .line 201
    invoke-interface {v5}, Lcom/ibm/icu/impl/number/FormatQuantity;->getUpperDisplayMagnitude()I

    move-result v4

    :goto_1
    if-ltz v4, :cond_1

    .line 202
    iget-object v6, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->digitStrings:[Ljava/lang/String;

    invoke-interface {v5, v4}, Lcom/ibm/icu/impl/number/FormatQuantity;->getDigit(I)B

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    invoke-virtual {v0, p1, p0}, Lcom/ibm/icu/impl/number/Rounder;->chooseMultiplierAndApply(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;)I

    move-result v0

    neg-int v0, v0

    move v1, v0

    goto :goto_0

    .line 206
    :cond_1
    new-instance v4, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    const-string/jumbo v5, ""

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {v4, v5, v0, v6, v3}, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V

    .line 206
    invoke-virtual {p2, v4}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->signMod:Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    if-gez v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->getModifier(Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->separatorMod:Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    .line 210
    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->exponentDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 227
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->exponentShowPlusSign:Z

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 231
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Rounder;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 232
    return-void
.end method

.method public getMultiplier(I)I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->interval:I

    rem-int v0, p1, v0

    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->interval:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->interval:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 215
    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->minInt:I

    if-ge v0, v1, :cond_1

    .line 216
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->minInt:I

    .line 220
    :cond_0
    :goto_0
    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 221
    return v0

    .line 217
    :cond_1
    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->maxInt:I

    if-le v0, v1, :cond_0

    .line 218
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->maxInt:I

    goto :goto_0
.end method
