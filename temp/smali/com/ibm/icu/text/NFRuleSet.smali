.class final Lcom/ibm/icu/text/NFRuleSet;
.super Ljava/lang/Object;
.source "NFRuleSet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fractionRules:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ibm/icu/text/NFRule;",
            ">;"
        }
    .end annotation
.end field

.field private isFractionRuleSet:Z

.field private final isParseable:Z

.field private final name:Ljava/lang/String;

.field final nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

.field final owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

.field private rules:[Lcom/ibm/icu/text/NFRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/ibm/icu/text/NFRuleSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/NFRuleSet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/ibm/icu/text/NFRule;

    iput-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    .line 79
    iput-boolean v1, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    .line 105
    iput-object p1, p0, Lcom/ibm/icu/text/NFRuleSet;->owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    .line 106
    aget-object v4, p2, p3

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty rule set description"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_5

    .line 117
    const/16 v2, 0x3a

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 118
    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Rule set name doesn\'t end in colon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string/jumbo v5, "@noparse"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isParseable:Z

    .line 124
    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isParseable:Z

    if-nez v0, :cond_7

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    iput-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    move v0, v3

    .line 130
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    aput-object v0, p2, p3

    .line 143
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty rule set description"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    .line 123
    goto :goto_0

    .line 139
    :cond_5
    const-string/jumbo v1, "%default"

    iput-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    .line 140
    iput-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isParseable:Z

    move-object v0, v4

    goto :goto_2

    .line 149
    :cond_6
    return-void

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method private findFractionRuleSetRule(D)Lcom/ibm/icu/text/NFRule;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    .line 630
    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 631
    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ibm/icu/text/NFRuleSet;->lcm(JJ)J

    move-result-wide v2

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_0
    long-to-double v4, v2

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    .line 637
    const-wide v4, 0x7fffffffffffffffL

    move v0, v1

    .line 639
    :goto_1
    iget-object v6, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 646
    iget-object v6, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    mul-long/2addr v6, v8

    rem-long/2addr v6, v2

    .line 651
    sub-long v10, v2, v6

    cmp-long v10, v10, v6

    if-gez v10, :cond_1

    .line 652
    sub-long v6, v2, v6

    .line 659
    :cond_1
    cmp-long v10, v6, v4

    if-gez v10, :cond_5

    .line 662
    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-nez v1, :cond_4

    .line 674
    :goto_2
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 675
    invoke-virtual {v1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 676
    iget-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v1, v1, v0

    .line 677
    invoke-virtual {v1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 678
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 683
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v1, v0

    return-object v0

    :cond_4
    move v1, v0

    move-wide v4, v6

    .line 639
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private findNormalRule(J)Lcom/ibm/icu/text/NFRule;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v0, :cond_1

    .line 540
    long-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    .line 601
    :cond_0
    :goto_0
    return-object v0

    .line 545
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v2

    goto :goto_0

    .line 549
    :cond_2
    neg-long p1, p1

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v1, v0

    .line 567
    if-lez v1, :cond_9

    .line 568
    :goto_1
    if-ge v2, v1, :cond_6

    .line 569
    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    .line 570
    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    .line 571
    cmp-long v3, v4, p1

    if-nez v3, :cond_4

    .line 572
    iget-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v1, v0

    goto :goto_0

    .line 574
    :cond_4
    cmp-long v3, v4, p1

    if-lez v3, :cond_5

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 580
    goto :goto_1

    .line 578
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2

    .line 581
    :cond_6
    if-nez v1, :cond_7

    .line 582
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The rule set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot format the value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    add-int/lit8 v2, v1, -0x1

    aget-object v0, v0, v2

    .line 591
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/NFRule;->shouldRollBack(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 593
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The rule set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cannot roll back from the rule \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 601
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto/16 :goto_0
.end method

.method private static lcm(JJ)J
    .locals 14

    .prologue
    .line 692
    .line 695
    const/4 v0, 0x0

    move v6, v0

    move-wide/from16 v4, p2

    move-wide v0, p0

    .line 696
    :goto_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v2, v4

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    .line 697
    add-int/lit8 v2, v6, 0x1

    .line 698
    const/4 v3, 0x1

    shr-long/2addr v0, v3

    .line 699
    const/4 v3, 0x1

    shr-long/2addr v4, v3

    move v6, v2

    goto :goto_0

    .line 703
    :cond_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v8, 0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    .line 704
    neg-long v2, v4

    move-wide v12, v4

    move-wide v4, v0

    move-wide v0, v12

    .line 709
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_4

    .line 710
    :goto_2
    const-wide/16 v8, 0x1

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 711
    const/4 v7, 0x1

    shr-long/2addr v2, v7

    goto :goto_2

    :cond_1
    move-wide v2, v0

    move-wide v12, v4

    move-wide v4, v0

    move-wide v0, v12

    .line 706
    goto :goto_1

    .line 713
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_3

    .line 718
    :goto_3
    sub-long v4, v2, v0

    move-wide v12, v4

    move-wide v4, v2

    move-wide v2, v12

    goto :goto_1

    .line 716
    :cond_3
    neg-long v0, v2

    move-wide v2, v4

    goto :goto_3

    .line 720
    :cond_4
    shl-long v0, v4, v6

    .line 723
    div-long v0, p0, v0

    mul-long v0, v0, p2

    return-wide v0
.end method

.method private setBestFractionRule(ILcom/ibm/icu/text/NFRule;Z)V
    .locals 2

    .prologue
    .line 265
    if-eqz p3, :cond_1

    .line 266
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, p1

    .line 272
    if-nez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aput-object p2, v0, p1

    .line 283
    :cond_2
    :goto_0
    return-void

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-virtual {p2}, Lcom/ibm/icu/text/NFRule;->getDecimalPoint()C

    move-result v1

    if-ne v0, v1, :cond_2

    .line 279
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aput-object p2, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 308
    instance-of v0, p1, Lcom/ibm/icu/text/NFRuleSet;

    if-nez v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 312
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/NFRuleSet;

    .line 314
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v0, v0

    iget-object v2, p1, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    iget-boolean v2, p1, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 322
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 329
    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 330
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NFRule;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 336
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method findRule(D)Lcom/ibm/icu/text/NFRule;
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v0, :cond_1

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    .line 515
    :cond_0
    :goto_0
    return-object v0

    .line 468
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 470
    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4

    .line 480
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v2

    goto :goto_0

    .line 483
    :cond_3
    neg-double p1, p1

    .line 487
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 488
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 489
    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_7

    .line 497
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v4

    if-eqz v0, :cond_6

    .line 500
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v4

    goto :goto_0

    .line 502
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v3

    if-eqz v0, :cond_7

    .line 504
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v3

    goto :goto_0

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v5

    if-eqz v0, :cond_8

    .line 510
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v5

    goto :goto_0

    .line 515
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/NFRuleSet;->findNormalRule(J)Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    goto :goto_0
.end method

.method public format(DLjava/lang/StringBuilder;II)V
    .locals 7

    .prologue
    .line 450
    const/16 v0, 0x40

    if-lt p5, v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NFRuleSet;->findRule(D)Lcom/ibm/icu/text/NFRule;

    move-result-object v1

    .line 454
    add-int/lit8 v6, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    .line 455
    return-void
.end method

.method public format(JLjava/lang/StringBuilder;II)V
    .locals 7

    .prologue
    .line 434
    const/16 v0, 0x40

    if-lt p5, v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRuleSet;->findNormalRule(J)Lcom/ibm/icu/text/NFRule;

    move-result-object v1

    .line 438
    add-int/lit8 v6, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRule;->doFormat(JLjava/lang/StringBuilder;II)V

    .line 439
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 341
    sget-boolean v0, Lcom/ibm/icu/text/NFRuleSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 342
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public isFractionSet()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return v0
.end method

.method public isParseable()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isParseable:Z

    return v0
.end method

.method public isPublic()Z
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string/jumbo v1, "%%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeIntoFractionRuleSet()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    .line 295
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 756
    new-instance v10, Ljava/text/ParsePosition;

    invoke-direct {v10, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 757
    sget-object v1, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 816
    :goto_0
    return-object v1

    .line 766
    :cond_0
    iget-object v8, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    array-length v9, v8

    move v7, v3

    move-object v6, v1

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 767
    if-eqz v0, :cond_6

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 768
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v0

    .line 769
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 771
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 777
    :goto_2
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 766
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v6, v0

    goto :goto_1

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v1, v6

    :goto_4
    if-ltz v2, :cond_3

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 791
    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v0, v4, p3

    if-ltz v0, :cond_2

    .line 790
    :goto_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v0, v2

    iget-boolean v7, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    move-object v5, p1

    move-object v6, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/ibm/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v0

    .line 796
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 798
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 804
    :goto_6
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v1, v0

    goto :goto_5

    .line 810
    :cond_3
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_6

    :cond_5
    move-object v0, v6

    goto :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_3
.end method

.method public parseRules(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 167
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 176
    :cond_0
    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 177
    if-gez v2, :cond_1

    move v2, v3

    .line 184
    :cond_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/ibm/icu/text/NFRuleSet;->owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-static {v0, p0, v1, v6, v8}, Lcom/ibm/icu/text/NFRule;->makeRules(Ljava/lang/String;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V

    .line 186
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NFRule;

    move-object v1, v0

    .line 190
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 192
    if-lt v0, v3, :cond_0

    .line 200
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v2, v4

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NFRule;

    .line 201
    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    .line 202
    cmp-long v1, v6, v4

    if-nez v1, :cond_3

    .line 208
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 220
    :goto_1
    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v0, :cond_6

    .line 221
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    :goto_2
    move-wide v2, v0

    .line 223
    goto :goto_0

    .line 214
    :cond_3
    cmp-long v0, v6, v2

    if-gez v0, :cond_4

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rules are not in order, base: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-wide v2, v6

    .line 218
    goto :goto_1

    .line 227
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ibm/icu/text/NFRule;

    iput-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 229
    return-void

    :cond_6
    move-wide v0, v2

    goto :goto_2
.end method

.method setNonNumericalRule(Lcom/ibm/icu/text/NFRule;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    .line 237
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 238
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 241
    invoke-direct {p0, v4, p1, v4}, Lcom/ibm/icu/text/NFRuleSet;->setBestFractionRule(ILcom/ibm/icu/text/NFRule;Z)V

    goto :goto_0

    .line 243
    :cond_2
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 244
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, v4}, Lcom/ibm/icu/text/NFRuleSet;->setBestFractionRule(ILcom/ibm/icu/text/NFRule;Z)V

    goto :goto_0

    .line 246
    :cond_3
    const-wide/16 v2, -0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 247
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v4}, Lcom/ibm/icu/text/NFRuleSet;->setBestFractionRule(ILcom/ibm/icu/text/NFRule;Z)V

    goto :goto_0

    .line 249
    :cond_4
    const-wide/16 v2, -0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 250
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    goto :goto_0

    .line 252
    :cond_5
    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 360
    invoke-virtual {v5}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->nonNumericalRules:[Lcom/ibm/icu/text/NFRule;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 365
    if-eqz v5, :cond_4

    .line 366
    invoke-virtual {v5}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v5}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x3

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v5}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x4

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NFRule;

    .line 371
    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 372
    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 377
    :cond_3
    invoke-virtual {v5}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 382
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
