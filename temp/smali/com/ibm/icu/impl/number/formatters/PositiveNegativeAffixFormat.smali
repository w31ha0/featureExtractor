.class public Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat;
.super Ljava/lang/Object;
.source "PositiveNegativeAffixFormat.java"


# direct methods
.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getThreadLocalInstance()Lcom/ibm/icu/impl/number/PNAffixGenerator;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    iget-object v2, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;-><init>(Lcom/ibm/icu/impl/number/Modifier$AffixModifier;Lcom/ibm/icu/impl/number/Modifier$AffixModifier;)V

    return-object v1
.end method
