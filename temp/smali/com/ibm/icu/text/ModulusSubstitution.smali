.class Lcom/ibm/icu/text/ModulusSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:J

.field private final ruleToUse:Lcom/ibm/icu/text/NFRule;


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 848
    invoke-direct {p0, p1, p4, p5}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Lcom/ibm/icu/text/NFRule;->getDivisor()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    .line 855
    iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Substitution with bad divisor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 857
    invoke-virtual {p5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_0
    const-string/jumbo v0, ">>>"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    iput-object p3, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    goto :goto_0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    .prologue
    .line 1049
    iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    .prologue
    .line 1039
    iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    rem-double v0, p3, v0

    sub-double v0, p3, v0

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 7

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    if-nez v0, :cond_1

    .line 1002
    invoke-super/range {p0 .. p7}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v0

    .line 1020
    :cond_0
    :goto_0
    return-object v0

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v0

    .line 1010
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1013
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/ibm/icu/text/ModulusSubstitution;->composeRuleValue(DD)D

    move-result-wide v2

    .line 1014
    double-to-long v0, v2

    long-to-double v0, v0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_2

    .line 1015
    double-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1017
    :cond_2
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0
.end method

.method public doSubstitution(DLjava/lang/StringBuilder;II)V
    .locals 7

    .prologue
    .line 949
    iget-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 950
    invoke-super/range {p0 .. p5}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 959
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/ModulusSubstitution;->transformNumber(D)D

    move-result-wide v2

    .line 957
    iget-object v1, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    iget v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->pos:I

    add-int v5, p4, v0

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    goto :goto_0
.end method

.method public doSubstitution(JLjava/lang/StringBuilder;II)V
    .locals 7

    .prologue
    .line 925
    iget-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 926
    invoke-super/range {p0 .. p5}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    .line 934
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/ModulusSubstitution;->transformNumber(J)J

    move-result-wide v2

    .line 932
    iget-object v1, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;

    iget v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->pos:I

    add-int v5, p4, v0

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRule;->doFormat(JLjava/lang/StringBuilder;II)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 899
    invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    check-cast p1, Lcom/ibm/icu/text/ModulusSubstitution;

    .line 902
    iget-wide v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    iget-wide v4, p1, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 904
    :cond_0
    return v0
.end method

.method public isModulusSubstitution()Z
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x1

    return v0
.end method

.method public setDivisor(IS)V
    .locals 4

    .prologue
    .line 880
    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    .line 882
    iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Substitution with bad divisor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_0
    return-void
.end method

.method tokenChar()C
    .locals 1

    .prologue
    .line 1071
    const/16 v0, 0x3e

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    .prologue
    .line 980
    iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    rem-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 3

    .prologue
    .line 969
    iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:J

    rem-long v0, p1, v0

    return-wide v0
.end method
