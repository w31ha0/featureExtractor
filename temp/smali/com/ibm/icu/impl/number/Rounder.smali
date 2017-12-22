.class public abstract Lcom/ibm/icu/impl/number/Rounder;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source "Rounder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final mathContext:Ljava/math/MathContext;

.field protected final maxFrac:I

.field protected final maxInt:I

.field protected final minFrac:I

.field protected final minInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/ibm/icu/impl/number/Rounder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/Rounder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const v2, 0x7fffffff

    .line 158
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 159
    invoke-static {p1}, Lcom/ibm/icu/impl/number/RoundingUtils;->getMathContextOrUnlimited(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Ljava/math/MathContext;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/number/Rounder;->mathContext:Ljava/math/MathContext;

    .line 161
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMaximumIntegerDigits()I

    move-result v4

    .line 162
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMinimumIntegerDigits()I

    move-result v6

    .line 163
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMaximumFractionDigits()I

    move-result v3

    .line 164
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMinimumFractionDigits()I

    move-result v1

    .line 169
    if-nez v6, :cond_4

    if-eqz v3, :cond_4

    .line 171
    if-gtz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    .line 172
    if-gez v3, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    .line 173
    iput v5, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    .line 174
    if-gez v4, :cond_3

    :goto_2
    iput v2, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    .line 182
    :goto_3
    return-void

    :cond_0
    move v0, v1

    .line 171
    goto :goto_0

    .line 172
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    if-ge v3, v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v2, v4

    .line 174
    goto :goto_2

    .line 177
    :cond_4
    if-gez v1, :cond_5

    move v1, v5

    :cond_5
    iput v1, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    .line 178
    if-gez v3, :cond_7

    move v3, v2

    :cond_6
    :goto_4
    iput v3, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    .line 179
    if-gtz v6, :cond_8

    :goto_5
    iput v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    .line 180
    if-gez v4, :cond_9

    :goto_6
    iput v2, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    goto :goto_3

    .line 178
    :cond_7
    iget v1, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    if-ge v3, v1, :cond_6

    iget v3, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    goto :goto_4

    :cond_8
    move v0, v6

    .line 179
    goto :goto_5

    .line 180
    :cond_9
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    if-ge v4, v0, :cond_a

    iget v2, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    goto :goto_6

    :cond_a
    move v2, v4

    goto :goto_6
.end method


# virtual methods
.method public abstract apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V
.end method

.method protected applyDefaults(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 4

    .prologue
    .line 231
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    iget v1, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    iget v2, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    iget v3, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ibm/icu/impl/number/FormatQuantity;->setIntegerFractionLength(IIII)V

    .line 232
    return-void
.end method

.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 237
    return-void
.end method

.method public chooseMultiplierAndApply(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;)I
    .locals 5

    .prologue
    .line 205
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->createCopy()Lcom/ibm/icu/impl/number/FormatQuantity;

    move-result-object v1

    .line 207
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v2

    .line 208
    invoke-interface {p2, v2}, Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;->getMultiplier(I)I

    move-result v0

    .line 209
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/FormatQuantity;->adjustMagnitude(I)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 211
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v3

    add-int v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_1

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/FormatQuantity;->copyFrom(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 214
    invoke-interface {p2, v2}, Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;->getMultiplier(I)I

    move-result v0

    .line 215
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/FormatQuantity;->adjustMagnitude(I)V

    .line 216
    sget-boolean v1, Lcom/ibm/icu/impl/number/Rounder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v1

    add-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 218
    sget-boolean v1, Lcom/ibm/icu/impl/number/Rounder;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getMagnitude()I

    move-result v1

    add-int/2addr v2, v0

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_1
    return v0
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Rounder;->mathContext:Ljava/math/MathContext;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/impl/number/Properties;

    .line 242
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Rounder;->mathContext:Ljava/math/MathContext;

    invoke-virtual {v0}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 243
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minFrac:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 244
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->minInt:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 245
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->maxFrac:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 246
    iget v0, p0, Lcom/ibm/icu/impl/number/Rounder;->maxInt:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 247
    return-void
.end method
