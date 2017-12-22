.class Lcom/ibm/icu/text/MultiplierSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:J


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 686
    invoke-direct {p0, p1, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p2}, Lcom/ibm/icu/text/NFRule;->getDivisor()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    .line 693
    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Substitution with divisor 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 695
    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    .prologue
    .line 774
    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 724
    invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    check-cast p1, Lcom/ibm/icu/text/MultiplierSubstitution;

    iget-wide v2, p1, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivisor(IS)V
    .locals 4

    .prologue
    .line 706
    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    .line 708
    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Substitution with divisor 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_0
    return-void
.end method

.method tokenChar()C
    .locals 1

    .prologue
    .line 797
    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-nez v0, :cond_0

    .line 753
    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    div-double v0, p1, v0

    .line 755
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public transformNumber(J)J
    .locals 3

    .prologue
    .line 738
    iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:J

    div-long v0, p1, v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
