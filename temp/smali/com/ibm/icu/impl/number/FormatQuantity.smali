.class public interface abstract Lcom/ibm/icu/impl/number/FormatQuantity;
.super Ljava/lang/Object;
.source "FormatQuantity.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$IFixedDecimal;


# virtual methods
.method public abstract adjustMagnitude(I)V
.end method

.method public abstract copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V
.end method

.method public abstract createCopy()Lcom/ibm/icu/impl/number/FormatQuantity;
.end method

.method public abstract getDigit(I)B
.end method

.method public abstract getLowerDisplayMagnitude()I
.end method

.method public abstract getMagnitude()I
.end method

.method public abstract getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;
.end method

.method public abstract getUpperDisplayMagnitude()I
.end method

.method public abstract isInfinite()Z
.end method

.method public abstract isNaN()Z
.end method

.method public abstract isNegative()Z
.end method

.method public abstract isZero()Z
.end method

.method public abstract multiplyBy(Ljava/math/BigDecimal;)V
.end method

.method public abstract roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
.end method

.method public abstract roundToInfinity()V
.end method

.method public abstract roundToMagnitude(ILjava/math/MathContext;)V
.end method

.method public abstract setIntegerFractionLength(IIII)V
.end method
