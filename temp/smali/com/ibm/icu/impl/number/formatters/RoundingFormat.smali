.class public Lcom/ibm/icu/impl/number/formatters/RoundingFormat;
.super Ljava/lang/Object;
.source "RoundingFormat.java"


# direct methods
.method public static getDefaultOrNoRounder(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/RoundingFormat;->getDefaultOrNull(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/NoRounder;->getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/NoRounder;

    move-result-object v0

    .line 27
    :cond_0
    return-object v0
.end method

.method public static getDefaultOrNull(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->useSignificantDigits(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->useRoundingIncrement(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/IncrementRounder;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->useFractionFormat(Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
