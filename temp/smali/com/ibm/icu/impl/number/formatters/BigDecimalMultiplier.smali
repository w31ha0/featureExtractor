.class public Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source "BigDecimalMultiplier.java"


# instance fields
.field private final multiplier:Ljava/math/BigDecimal;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 45
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->multiplier:Ljava/math/BigDecimal;

    .line 46
    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;
    .locals 2

    .prologue
    .line 37
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The multiplier must be present for MultiplierFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;-><init>(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)V

    return-object v0
.end method

.method public static useMultiplier(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)Z
    .locals 2

    .prologue
    .line 31
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->DEFAULT_MULTIPLIER:Ljava/math/BigDecimal;

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
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->multiplier:Ljava/math/BigDecimal;

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/FormatQuantity;->multiplyBy(Ljava/math/BigDecimal;)V

    .line 51
    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->multiplier:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMultiplier(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 56
    return-void
.end method
