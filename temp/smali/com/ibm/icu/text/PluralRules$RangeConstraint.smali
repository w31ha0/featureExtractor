.class Lcom/ibm/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# instance fields
.field private final inRange:Z

.field private final integersOnly:Z

.field private final lowerBound:D

.field private final mod:I

.field private final operand:Lcom/ibm/icu/text/PluralRules$Operand;

.field private final range_list:[J

.field private final upperBound:D


# direct methods
.method constructor <init>(IZLcom/ibm/icu/text/PluralRules$Operand;ZDD[J)V
    .locals 1

    .prologue
    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    iput p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    .line 1581
    iput-boolean p2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    .line 1582
    iput-boolean p4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    .line 1583
    iput-wide p5, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    .line 1584
    iput-wide p7, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    .line 1585
    iput-object p9, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    .line 1586
    iput-object p3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 1587
    return-void
.end method


# virtual methods
.method public isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1591
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-interface {p1, v2}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v2

    .line 1592
    iget-boolean v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v4, :cond_0

    double-to-long v4, v2

    long-to-double v4, v4

    sub-double v4, v2, v4

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v5, Lcom/ibm/icu/text/PluralRules$Operand;->j:Lcom/ibm/icu/text/PluralRules$Operand;

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 1593
    invoke-interface {p1, v4}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    .line 1594
    :cond_1
    iget-boolean v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-nez v2, :cond_3

    .line 1606
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 1594
    goto :goto_0

    .line 1596
    :cond_4
    iget v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v4, :cond_5

    .line 1597
    iget v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    int-to-double v4, v4

    rem-double/2addr v2, v4

    .line 1599
    :cond_5
    iget-wide v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_6

    iget-wide v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_6

    move v4, v0

    .line 1600
    :goto_1
    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v5, :cond_8

    move v5, v1

    move v4, v1

    .line 1602
    :goto_2
    if-nez v4, :cond_8

    iget-object v6, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 1603
    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    aget-wide v6, v4, v5

    long-to-double v6, v6

    cmpl-double v4, v2, v6

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    add-int/lit8 v6, v5, 0x1

    aget-wide v6, v4, v6

    long-to-double v6, v6

    cmpg-double v4, v2, v6

    if-gtz v4, :cond_7

    move v4, v0

    .line 1602
    :goto_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_6
    move v4, v1

    .line 1599
    goto :goto_1

    :cond_7
    move v4, v1

    .line 1603
    goto :goto_3

    :cond_8
    move v2, v4

    .line 1606
    iget-boolean v3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eq v3, v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1634
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1635
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v0, :cond_0

    .line 1636
    const-string/jumbo v0, " % "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1638
    :cond_0
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    move v0, v8

    .line 1639
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, " = "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v0, :cond_8

    move v0, v7

    .line 1645
    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 1646
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    aget-wide v2, v2, v0

    long-to-double v2, v2

    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    long-to-double v4, v4

    if-eqz v0, :cond_7

    move v6, v8

    :goto_3
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    .line 1645
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_1
    move v0, v7

    .line 1638
    goto :goto_0

    .line 1639
    :cond_2
    const-string/jumbo v0, " != "

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, " = "

    goto :goto_1

    :cond_4
    const-string/jumbo v0, " != "

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, " within "

    goto :goto_1

    :cond_6
    const-string/jumbo v0, " not within "

    goto :goto_1

    :cond_7
    move v6, v7

    .line 1646
    goto :goto_3

    .line 1649
    :cond_8
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    .line 1651
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
