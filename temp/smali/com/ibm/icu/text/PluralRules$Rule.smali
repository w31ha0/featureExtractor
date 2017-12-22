.class Lcom/ibm/icu/text/PluralRules$Rule;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

.field private final decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

.field private final integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

.field private final keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V
    .locals 0

    .prologue
    .line 1751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    .line 1753
    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1754
    iput-object p3, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    .line 1755
    iput-object p4, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    .line 1756
    return-void
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    return-object v0
.end method


# virtual methods
.method public appliesTo(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 1783
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 1784
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1782
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    .line 1783
    invoke-virtual {v2}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    .line 1784
    invoke-virtual {v2}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
