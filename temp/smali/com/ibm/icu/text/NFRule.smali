.class final Lcom/ibm/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final RULE_PREFIXES:[Ljava/lang/String;

.field static final ZERO:Ljava/lang/Long;


# instance fields
.field private baseValue:J

.field private decimalPoint:C

.field private exponent:S

.field private final formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

.field private radix:I

.field private rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

.field private ruleText:Ljava/lang/String;

.field private sub1:Lcom/ibm/icu/text/NFSubstitution;

.field private sub2:Lcom/ibm/icu/text/NFSubstitution;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    const-class v0, Lcom/ibm/icu/text/NFRule;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/NFRule;->$assertionsDisabled:Z

    .line 58
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 577
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "<<"

    aput-object v3, v0, v2

    const-string/jumbo v2, "<%"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "<#"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "<0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ">>"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ">%"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ">#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ">0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "=%"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "=#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "=0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0
.end method

.method public constructor <init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v1, 0xa

    iput v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    .line 79
    iput-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 84
    iput-char v2, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    .line 91
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    .line 104
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    .line 110
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    .line 253
    iput-object p1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    .line 254
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 255
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private allIgnorable(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return v0

    .line 1311
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getLenientScanner()Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object v1

    .line 1312
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/ibm/icu/text/RbnfLenientScanner;->allIgnorable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private expectedExponent()S
    .locals 6

    .prologue
    .line 562
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 563
    :cond_0
    const/4 v0, 0x0

    .line 573
    :cond_1
    :goto_0
    return v0

    .line 569
    :cond_2
    iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget v2, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    .line 570
    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v2, v1

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    invoke-static {v2, v3, v1}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 571
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0
.end method

.method private extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;)Lcom/ibm/icu/text/NFSubstitution;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 469
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/text/NFRule;->indexOfAnyRulePrefix(Ljava/lang/String;)I

    move-result v0

    .line 473
    if-ne v0, v7, :cond_0

    move-object v0, v1

    .line 512
    :goto_0
    return-object v0

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v3, ">>>"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    add-int/lit8 v2, v0, 0x2

    move v6, v2

    .line 500
    :goto_1
    if-ne v6, v7, :cond_2

    move-object v0, v1

    .line 501
    goto :goto_0

    .line 485
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 486
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 488
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_3

    if-eq v2, v7, :cond_3

    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    .line 493
    add-int/lit8 v2, v2, 0x1

    move v6, v2

    goto :goto_1

    .line 507
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v6, 0x1

    .line 508
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    .line 507
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/NFSubstitution;->makeSubstitution(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Lcom/ibm/icu/text/NFSubstitution;

    move-result-object v1

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    move-object v0, v1

    .line 512
    goto :goto_0

    :cond_3
    move v6, v2

    goto :goto_1
.end method

.method private extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V
    .locals 5

    .prologue
    .line 417
    iput-object p2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 418
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;)Lcom/ibm/icu/text/NFSubstitution;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    .line 419
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    .line 426
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 427
    const-string/jumbo v0, "$("

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 428
    if-ltz v3, :cond_1

    const-string/jumbo v0, ")$"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 429
    :goto_1
    if-ltz v1, :cond_3

    .line 430
    const/16 v0, 0x2c

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 431
    if-gez v4, :cond_2

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rule \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" does not have a defined type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;)Lcom/ibm/icu/text/NFSubstitution;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    goto :goto_0

    .line 428
    :cond_1
    const/4 v0, -0x1

    move v1, v0

    goto :goto_1

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string/jumbo v3, "cardinal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 437
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    .line 445
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    add-int/lit8 v4, v4, 0x1

    .line 446
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {v3, v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->createPluralFormat(Lcom/ibm/icu/text/PluralRules$PluralType;Ljava/lang/String;)Lcom/ibm/icu/text/PluralFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    .line 448
    :cond_3
    return-void

    .line 439
    :cond_4
    const-string/jumbo v3, "ordinal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 440
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    goto :goto_2

    .line 443
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is an unknown type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findText(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/PluralFormat;I)[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1267
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getLenientScanner()Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object v0

    .line 1268
    if-eqz p3, :cond_1

    .line 1269
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1270
    invoke-virtual {v1, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1271
    invoke-virtual {p3, p1, v0, v1}, Lcom/ibm/icu/text/PluralFormat;->parseType(Ljava/lang/String;Lcom/ibm/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;

    .line 1272
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    .line 1273
    if-ltz v2, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v3, "$("

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1275
    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v4, ")$"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 1276
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    sub-int/2addr v1, v2

    .line 1277
    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1278
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1279
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v4, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, v2, v1

    .line 1280
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v3, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    new-array v0, v7, [I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v2, v5

    aput v2, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 1295
    :goto_0
    return-object v0

    .line 1285
    :cond_0
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 1288
    :cond_1
    if-eqz v0, :cond_2

    .line 1291
    invoke-interface {v0, p1, p2, p4}, Lcom/ibm/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v0

    goto :goto_0

    .line 1295
    :cond_2
    new-array v0, v7, [I

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v0, v8

    goto :goto_0

    .line 1285
    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method private static indexOfAnyRulePrefix(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 591
    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 594
    sget-object v4, Lcom/ibm/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 595
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 596
    if-eq v1, v2, :cond_1

    if-eq v0, v2, :cond_0

    if-ge v1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 594
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 601
    :cond_3
    return v0
.end method

.method public static makeRules(Ljava/lang/String;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NFRuleSet;",
            "Lcom/ibm/icu/text/NFRule;",
            "Lcom/ibm/icu/text/RuleBasedNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/text/NFRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v2, Lcom/ibm/icu/text/NFRule;

    invoke-direct {v2, p3, p0}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    .line 141
    iget-object v3, v2, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 145
    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 146
    if-gez v4, :cond_2

    const/4 v0, -0x1

    move v1, v0

    .line 152
    :goto_0
    if-ltz v1, :cond_0

    if-gt v4, v1, :cond_0

    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x3

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x5

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x6

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    .line 158
    :cond_0
    invoke-direct {v2, p1, v3, p2}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V

    .line 240
    :cond_1
    :goto_1
    iget-wide v0, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_d

    .line 241
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_2
    return-void

    .line 146
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 163
    :cond_3
    const/4 v0, 0x0

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    iget v8, v2, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v8, v8

    iget-short v10, v2, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 170
    invoke-static {v8, v9, v10}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    :cond_4
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 180
    :cond_5
    new-instance v0, Lcom/ibm/icu/text/NFRule;

    const/4 v6, 0x0

    invoke-direct {v0, p3, v6}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    .line 181
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_a

    .line 182
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    iput-wide v6, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    .line 183
    invoke-virtual {p1}, Lcom/ibm/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v6

    if-nez v6, :cond_6

    .line 184
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    .line 203
    :cond_6
    :goto_3
    iget v6, v2, Lcom/ibm/icu/text/NFRule;->radix:I

    iput v6, v0, Lcom/ibm/icu/text/NFRule;->radix:I

    .line 204
    iget-short v6, v2, Lcom/ibm/icu/text/NFRule;->exponent:S

    iput-short v6, v0, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 208
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 210
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p1, v6, p2}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V

    .line 218
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 222
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1, p2}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V

    .line 231
    if-eqz v0, :cond_1

    .line 232
    iget-wide v4, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_c

    .line 233
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    :cond_a
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 191
    const-wide/16 v6, -0x3

    iput-wide v6, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    goto :goto_3

    .line 193
    :cond_b
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 197
    iget-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    iput-wide v6, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    .line 198
    const-wide/16 v6, -0x2

    iput-wide v6, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J

    goto/16 :goto_3

    .line 236
    :cond_c
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/NFRuleSet;->setNonNumericalRule(Lcom/ibm/icu/text/NFRule;)V

    goto/16 :goto_1

    .line 244
    :cond_d
    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/NFRuleSet;->setNonNumericalRule(Lcom/ibm/icu/text/NFRule;)V

    goto/16 :goto_2
.end method

.method private matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Lcom/ibm/icu/text/PluralFormat;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;D)Ljava/lang/Number;
    .locals 13

    .prologue
    .line 1129
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/NFRule;->allIgnorable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1130
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1137
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/ibm/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/PluralFormat;I)[I

    move-result-object v2

    .line 1138
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 1139
    const/4 v4, 0x1

    aget v2, v2, v4

    move v11, v2

    move v12, v3

    .line 1143
    :goto_0
    if-ltz v12, :cond_2

    .line 1144
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1146
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    .line 1147
    invoke-virtual {v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v10

    move-object/from16 v3, p8

    move-wide/from16 v6, p3

    move-wide/from16 v8, p9

    .line 1146
    invoke-virtual/range {v3 .. v10}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v2

    .line 1155
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-ne v3, v12, :cond_1

    .line 1156
    add-int v3, v12, v11

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1213
    :cond_0
    :goto_1
    return-object v2

    .line 1172
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1173
    add-int v2, v12, v11

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ibm/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/PluralFormat;I)[I

    move-result-object v2

    .line 1174
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 1175
    const/4 v4, 0x1

    aget v2, v2, v4

    move v11, v2

    move v12, v3

    .line 1176
    goto :goto_0

    .line 1179
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1180
    sget-object v2, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    goto :goto_1

    .line 1187
    :cond_3
    if-nez p8, :cond_4

    .line 1188
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    .line 1191
    :cond_4
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1192
    sget-object v11, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1194
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    .line 1195
    invoke-virtual {v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v10

    move-object/from16 v3, p8

    move-object v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p9

    .line 1194
    invoke-virtual/range {v3 .. v10}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v2

    .line 1196
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1201
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1202
    if-nez v2, :cond_0

    :cond_5
    move-object v2, v11

    goto :goto_1
.end method

.method private parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x3e

    const/4 v11, 0x1

    const/16 v3, 0x78

    const/16 v10, 0x30

    const/4 v4, 0x0

    .line 275
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 276
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 280
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 282
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 291
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 292
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 293
    if-lt v0, v10, :cond_c

    const/16 v2, 0x39

    if-gt v0, v2, :cond_c

    if-eq v1, v3, :cond_c

    .line 296
    const-wide/16 v0, 0x0

    move v2, v4

    move v3, v4

    .line 304
    :goto_1
    if-ge v3, v6, :cond_3

    .line 305
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 306
    if-lt v2, v10, :cond_2

    const/16 v7, 0x39

    if-gt v2, v7, :cond_2

    .line 307
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    add-int/lit8 v7, v2, -0x30

    int-to-long v8, v7

    add-long/2addr v0, v8

    .line 315
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    :cond_2
    const/16 v7, 0x2f

    if-eq v2, v7, :cond_3

    if-ne v2, v12, :cond_5

    .line 319
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 325
    const/16 v0, 0x2f

    if-ne v2, v0, :cond_a

    .line 326
    const-wide/16 v0, 0x0

    .line 327
    add-int/lit8 v3, v3, 0x1

    .line 328
    :goto_2
    if-ge v3, v6, :cond_7

    .line 329
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 330
    if-lt v2, v10, :cond_6

    const/16 v7, 0x39

    if-gt v2, v7, :cond_6

    .line 331
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    add-int/lit8 v7, v2, -0x30

    int-to-long v8, v7

    add-long/2addr v0, v8

    .line 339
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 312
    :cond_5
    invoke-static {v2}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_1

    const/16 v7, 0x2e

    if-eq v2, v7, :cond_1

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal character "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in rule descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_6
    if-ne v2, v12, :cond_8

    .line 344
    :cond_7
    long-to-int v0, v0

    iput v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    .line 345
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    if-nez v0, :cond_9

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Rule can\'t have radix of 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_8
    invoke-static {v2}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_4

    const/16 v7, 0x2e

    if-eq v2, v7, :cond_4

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal character "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in rule descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S

    move-result v0

    iput-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    :cond_a
    move v0, v3

    .line 356
    if-ne v2, v12, :cond_d

    .line 357
    :goto_3
    if-ge v0, v6, :cond_d

    .line 358
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 359
    if-ne v1, v12, :cond_b

    iget-short v1, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    if-lez v1, :cond_b

    .line 360
    iget-short v1, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 362
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal character in rule descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_c
    const-string/jumbo v2, "-x"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 369
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 397
    :cond_d
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_e

    .line 398
    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 403
    :cond_e
    return-object p1

    .line 371
    :cond_f
    const/4 v2, 0x3

    if-ne v6, v2, :cond_d

    .line 372
    if-ne v0, v10, :cond_10

    if-ne v1, v3, :cond_10

    .line 373
    const-wide/16 v0, -0x3

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 374
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_4

    .line 376
    :cond_10
    if-ne v0, v3, :cond_11

    if-ne v1, v3, :cond_11

    .line 377
    const-wide/16 v0, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 378
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_4

    .line 380
    :cond_11
    if-ne v0, v3, :cond_12

    if-ne v1, v10, :cond_12

    .line 381
    const-wide/16 v0, -0x4

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 382
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_4

    .line 384
    :cond_12
    const-string/jumbo v0, "NaN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 385
    const-wide/16 v0, -0x6

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_4

    .line 387
    :cond_13
    const-string/jumbo v0, "Inf"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 388
    const-wide/16 v0, -0x5

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_4
.end method

.method static power(JS)J
    .locals 4

    .prologue
    .line 834
    if-gez p2, :cond_0

    .line 835
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exponent can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Base can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_1
    const-wide/16 v0, 0x1

    .line 841
    :goto_0
    if-lez p2, :cond_3

    .line 842
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 843
    mul-long/2addr v0, p0

    .line 845
    :cond_2
    mul-long/2addr p0, p0

    .line 846
    shr-int/lit8 v2, p2, 0x1

    int-to-short p2, v2

    goto :goto_0

    .line 848
    :cond_3
    return-wide v0
.end method

.method private prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1234
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return v0

    .line 1238
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getLenientScanner()Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object v1

    .line 1239
    if-eqz v1, :cond_2

    .line 1240
    invoke-interface {v1, p1, p2}, Lcom/ibm/icu/text/RbnfLenientScanner;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1245
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1076
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-object p1

    .line 1083
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1084
    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1088
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public doFormat(DLjava/lang/StringBuilder;II)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 791
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 793
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    if-nez v1, :cond_2

    .line 794
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, p4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    move v0, v7

    .line 818
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v8, :cond_6

    move v2, v0

    :goto_1
    sub-int v5, p4, v2

    move-wide v2, p1

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_1

    .line 822
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v8, :cond_7

    :goto_2
    sub-int v5, p4, v0

    move-wide v2, p1

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 824
    :cond_1
    return-void

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v1, "$("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 798
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v1, ")$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 799
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 800
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 801
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_3
    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_5

    .line 807
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v0, v0

    iget-short v4, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v0, v1, v4}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 812
    :goto_3
    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    double-to-long v0, v0

    long-to-double v0, v0

    invoke-virtual {v4, v0, v1}, Lcom/ibm/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    if-lez v2, :cond_4

    .line 814
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    move v8, v2

    goto/16 :goto_0

    .line 810
    :cond_5
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v0, v0

    iget-short v4, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v0, v1, v4}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    long-to-double v0, v0

    div-double v0, p1, v0

    goto :goto_3

    :cond_6
    move v2, v7

    .line 819
    goto/16 :goto_1

    :cond_7
    move v0, v7

    .line 822
    goto/16 :goto_2
.end method

.method public doFormat(JLjava/lang/StringBuilder;II)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 749
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 751
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    if-nez v1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, p4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    move v0, v7

    .line 767
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v8, :cond_5

    move v2, v0

    :goto_1
    sub-int v5, p4, v2

    move-wide v2, p1

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v8, :cond_6

    :goto_2
    sub-int v5, p4, v0

    move-wide v2, p1

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    .line 773
    :cond_1
    return-void

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v1, "$("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 756
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v2, ")$"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 757
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 758
    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 759
    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    iget v3, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v4, v3

    iget-short v3, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v4, v5, v3}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v4

    div-long v4, p1, v4

    long-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/ibm/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    if-lez v1, :cond_4

    .line 763
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v2, v3, v2

    sub-int/2addr v0, v2

    move v8, v1

    goto/16 :goto_0

    :cond_5
    move v2, v7

    .line 768
    goto :goto_1

    :cond_6
    move v0, v7

    .line 771
    goto :goto_2
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;
    .locals 28

    .prologue
    .line 910
    new-instance v10, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    .line 917
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v3

    move/from16 v22, v3

    .line 918
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v10}, Lcom/ibm/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v26, v3, v5

    .line 921
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 924
    sget-object v2, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1054
    :goto_2
    return-object v2

    .line 916
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 917
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v22, v3

    goto :goto_1

    .line 926
    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x5

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 928
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 929
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_2

    .line 931
    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x6

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    .line 933
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 934
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_2

    .line 966
    :cond_4
    const/4 v3, 0x0

    .line 967
    const-wide/16 v8, 0x0

    .line 968
    const/4 v5, 0x0

    .line 969
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-double v6, v6

    move-wide/from16 v24, v8

    move/from16 v23, v3

    .line 976
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 978
    move/from16 v0, v22

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    move-object/from16 v3, p0

    move-wide/from16 v12, p4

    .line 977
    invoke-direct/range {v3 .. v13}, Lcom/ibm/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Lcom/ibm/icu/text/PluralFormat;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;D)Ljava/lang/Number;

    move-result-object v3

    .line 979
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    .line 985
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-nez v3, :cond_b

    .line 986
    :cond_5
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 988
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 989
    new-instance v18, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 995
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 996
    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    move-object/from16 v19, v0

    move-object/from16 v11, p0

    move-wide/from16 v20, p4

    .line 995
    invoke-direct/range {v11 .. v21}, Lcom/ibm/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Lcom/ibm/icu/text/PluralFormat;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;D)Ljava/lang/Number;

    move-result-object v3

    .line 997
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 1002
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-nez v3, :cond_b

    .line 1003
    :cond_6
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int v3, v3, v26

    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    add-int/2addr v3, v11

    move/from16 v0, v23

    if-le v3, v0, :cond_b

    .line 1004
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int v3, v3, v26

    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    add-int v23, v3, v11

    move/from16 v3, v23

    .line 1027
    :goto_4
    move/from16 v0, v22

    if-eq v2, v0, :cond_7

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    if-lez v11, :cond_7

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    .line 1028
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_7

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    if-ne v11, v5, :cond_a

    .line 1034
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1046
    if-eqz p3, :cond_8

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-nez v2, :cond_8

    .line 1047
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v8, v2, v8

    .line 1051
    :cond_8
    double-to-long v2, v8

    long-to-double v2, v2

    cmpl-double v2, v8, v2

    if-nez v2, :cond_9

    .line 1052
    double-to-long v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_2

    .line 1054
    :cond_9
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v8, v9}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_2

    :cond_a
    move-wide/from16 v24, v8

    move/from16 v23, v3

    goto/16 :goto_3

    :cond_b
    move-wide/from16 v8, v24

    move/from16 v3, v23

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 614
    instance-of v1, p1, Lcom/ibm/icu/text/NFRule;

    if-eqz v1, :cond_0

    .line 615
    check-cast p1, Lcom/ibm/icu/text/NFRule;

    .line 617
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    iget-wide v4, p1, Lcom/ibm/icu/text/NFRule;->baseValue:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    iget v2, p1, Lcom/ibm/icu/text/NFRule;->radix:I

    if-ne v1, v2, :cond_0

    iget-short v1, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    iget-short v2, p1, Lcom/ibm/icu/text/NFRule;->exponent:S

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 620
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    iget-object v2, p1, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    .line 621
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    iget-object v2, p1, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    .line 622
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 624
    :cond_0
    return v0
.end method

.method public final getBaseValue()J
    .locals 2

    .prologue
    .line 718
    iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    return-wide v0
.end method

.method public final getDecimalPoint()C
    .locals 1

    .prologue
    .line 710
    iget-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    return v0
.end method

.method public getDivisor()J
    .locals 3

    .prologue
    .line 727
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v0, v0

    iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 628
    sget-boolean v0, Lcom/ibm/icu/text/NFRule;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 629
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method final setBaseValue(J)V
    .locals 5

    .prologue
    .line 524
    iput-wide p1, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    .line 525
    const/16 v0, 0xa

    iput v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    .line 532
    iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 533
    invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S

    move-result v0

    iput-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 539
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/NFSubstitution;->setDivisor(IS)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/NFSubstitution;->setDivisor(IS)V

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 549
    :cond_2
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    goto :goto_0
.end method

.method public shouldRollBack(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 876
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v1

    if-nez v1, :cond_2

    .line 880
    :cond_1
    :goto_0
    return v0

    .line 879
    :cond_2
    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v2, v1

    iget-short v1, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v2, v3, v1}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v2

    .line 880
    rem-long v4, p1, v2

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    rem-long v2, v4, v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x78

    const/16 v0, 0x2e

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 643
    const-string/jumbo v0, "-x: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v2, :cond_3

    .line 691
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 645
    :cond_4
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 646
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    if-nez v3, :cond_5

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_1

    .line 648
    :cond_6
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, -0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 649
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    if-nez v3, :cond_7

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    iget-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_2

    .line 651
    :cond_8
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, -0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 652
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    if-nez v3, :cond_9

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "0: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    iget-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_3

    .line 654
    :cond_a
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, -0x5

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    .line 655
    const-string/jumbo v0, "Inf: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 657
    :cond_b
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, -0x6

    cmp-long v0, v2, v4

    if-nez v0, :cond_c

    .line 658
    const-string/jumbo v0, "NaN: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 667
    :cond_c
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_d

    .line 669
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    :cond_d
    invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S

    move-result v0

    iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    sub-int v2, v0, v2

    .line 672
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    .line 673
    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 674
    :cond_e
    const-string/jumbo v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
