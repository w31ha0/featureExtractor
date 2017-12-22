.class Lcom/ibm/icu/text/NumeratorSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final denominator:D

.field private final withZeros:Z


# direct methods
.method constructor <init>(IDLcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1515
    invoke-static {p5}, Lcom/ibm/icu/text/NumeratorSubstitution;->fixdesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1520
    iput-wide p2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    .line 1522
    const-string/jumbo v0, "<<"

    invoke-virtual {p5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    .line 1523
    return-void
.end method

.method static fixdesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1526
    const-string/jumbo v0, "<<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1527
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1526
    :cond_0
    return-object p0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    .prologue
    .line 1708
    iget-wide v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    .prologue
    .line 1698
    div-double v0, p1, p3

    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 9

    .prologue
    .line 1636
    const/4 v0, 0x0

    .line 1637
    iget-boolean v1, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v1, :cond_7

    .line 1639
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    move v1, v0

    move-object v0, p1

    .line 1642
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1643
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1644
    iget-object v3, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1645
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_2

    .line 1660
    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1661
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    move v0, v1

    .line 1665
    :goto_0
    iget-boolean v1, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v1, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_1
    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide v6, p5

    invoke-super/range {v1 .. v8}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v1

    .line 1667
    iget-boolean v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v2, :cond_6

    .line 1672
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1673
    const-wide/16 v2, 0x1

    .line 1674
    :goto_2
    cmp-long v1, v2, v6

    if-gtz v1, :cond_5

    .line 1675
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    goto :goto_2

    .line 1651
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1652
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1653
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1654
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 1655
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1656
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_3

    :cond_3
    move-wide v4, p3

    .line 1665
    goto :goto_1

    .line 1678
    :goto_4
    if-lez v4, :cond_4

    .line 1679
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v2

    .line 1680
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_4

    .line 1683
    :cond_4
    new-instance v0, Ljava/lang/Double;

    long-to-double v4, v6

    long-to-double v2, v2

    div-double v2, v4, v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 1686
    :goto_5
    return-object v0

    :cond_5
    move v4, v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_5

    :cond_7
    move-object v2, p1

    goto :goto_0
.end method

.method public doSubstitution(DLjava/lang/StringBuilder;II)V
    .locals 15

    .prologue
    .line 1569
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/text/NumeratorSubstitution;->transformNumber(D)D

    move-result-wide v12

    .line 1571
    iget-boolean v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v2, :cond_1

    .line 1573
    double-to-long v2, v12

    .line 1574
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 1575
    :goto_0
    const-wide/16 v4, 0xa

    mul-long v10, v2, v4

    long-to-double v2, v10

    iget-wide v4, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 1576
    iget v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v2, v2, p4

    const/16 v3, 0x20

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1577
    iget-object v3, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    const-wide/16 v4, 0x0

    iget v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v7, p4, v2

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    move-wide v2, v10

    goto :goto_0

    .line 1579
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v9

    add-int p4, p4, v2

    .line 1584
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v12, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v2, :cond_2

    .line 1585
    iget-object v3, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    double-to-long v4, v12

    iget v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v7, p4, v2

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    .line 1597
    :goto_1
    return-void

    .line 1591
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v2, :cond_3

    .line 1592
    iget-object v3, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    iget v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v7, p4, v2

    move-wide v4, v12

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    goto :goto_1

    .line 1594
    :cond_3
    iget v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v2, v2, p4

    iget-object v3, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v3, v12, v13}, Lcom/ibm/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1542
    invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    check-cast p1, Lcom/ibm/icu/text/NumeratorSubstitution;

    .line 1544
    iget-wide v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    iget-wide v4, p1, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    iget-boolean v2, p1, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1546
    :cond_0
    return v0
.end method

.method tokenChar()C
    .locals 1

    .prologue
    .line 1721
    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    .prologue
    .line 1616
    iget-wide v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 5

    .prologue
    .line 1606
    long-to-double v0, p1

    iget-wide v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method
