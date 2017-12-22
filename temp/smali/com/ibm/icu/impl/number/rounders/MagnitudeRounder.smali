.class public Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;
.super Lcom/ibm/icu/impl/number/Rounder;
.source "MagnitudeRounder.java"


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    .line 23
    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    return-object v0
.end method

.method public static useFractionFormat(Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;)Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 13
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;->getMinimumFractionDigits()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 14
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;->getMaximumFractionDigits()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 13
    :goto_0
    return v0

    .line 14
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->maxFrac:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->applyDefaults(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 29
    return-void
.end method
