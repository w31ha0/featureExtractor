.class Lcom/ibm/icu/text/FractionalPartSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final byDigits:Z

.field private final useSpaces:Z


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1204
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v2, ">>"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ">>>"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-ne p2, v2, :cond_2

    .line 1206
    :cond_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    .line 1207
    const-string/jumbo v2, ">>>"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z

    .line 1213
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1207
    goto :goto_0

    .line 1209
    :cond_2
    iput-boolean v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    .line 1210
    iput-boolean v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z

    .line 1211
    iget-object v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->makeIntoFractionRuleSet()V

    goto :goto_1
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    .prologue
    .line 1371
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    .prologue
    .line 1363
    add-double v0, p1, p3

    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 9

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez v0, :cond_0

    .line 1307
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v8, p7

    invoke-super/range {v1 .. v8}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v0

    .line 1350
    :goto_0
    return-object v0

    .line 1315
    :cond_0
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1319
    new-instance v3, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v3}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>()V

    .line 1320
    const/4 v0, 0x0

    .line 1321
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1322
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1323
    iget-object v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual {v1, p1, v2, v4, v5}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1324
    if-eqz p7, :cond_2

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-nez v4, :cond_2

    .line 1325
    iget-object v4, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    iget-object v4, v4, Lcom/ibm/icu/text/NFRuleSet;->owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/ibm/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 1326
    if-eqz v4, :cond_2

    .line 1327
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1331
    :cond_2
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1332
    if-nez v1, :cond_3

    .line 1333
    add-int/lit8 v0, v0, 0x1

    .line 1339
    :goto_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1340
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1341
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    .line 1342
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1343
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 1335
    :cond_3
    int-to-byte v1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Lcom/ibm/icu/impl/number/FormatQuantity4;->appendDigit(BIZ)V

    .line 1336
    const/4 v0, 0x0

    goto :goto_1

    .line 1347
    :cond_4
    invoke-virtual {v3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->toDouble()D

    move-result-wide v0

    .line 1349
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/ibm/icu/text/FractionalPartSubstitution;->composeRuleValue(DD)D

    move-result-wide v2

    .line 1350
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0
.end method

.method public doSubstitution(DLjava/lang/StringBuilder;II)V
    .locals 9

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez v0, :cond_1

    .line 1234
    invoke-super/range {p0 .. p5}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 1258
    :cond_0
    return-void

    .line 1244
    :cond_1
    new-instance v8, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v8, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(D)V

    .line 1245
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/FormatQuantity4;->roundToInfinity()V

    .line 1247
    const/4 v1, 0x0

    .line 1248
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getLowerDisplayMagnitude()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 1249
    :goto_0
    if-gez v2, :cond_0

    .line 1250
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z

    if-eqz v1, :cond_2

    .line 1251
    iget v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I

    add-int/2addr v1, p4

    const/16 v3, 0x20

    invoke-virtual {p3, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1255
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getDigit(I)B

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I

    add-int v5, p4, v4

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    move v2, v7

    goto :goto_0

    .line 1253
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method tokenChar()C
    .locals 1

    .prologue
    .line 1384
    const/16 v0, 0x3e

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    .prologue
    .line 1278
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double v0, p1, v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 2

    .prologue
    .line 1268
    const-wide/16 v0, 0x0

    return-wide v0
.end method
