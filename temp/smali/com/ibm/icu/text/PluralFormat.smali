.class public Lcom/ibm/icu/text/PluralFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "PluralFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private transient msgPattern:Lcom/ibm/icu/text/MessagePattern;

.field private numberFormat:Lcom/ibm/icu/text/NumberFormat;

.field private transient offset:D

.field private parsedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private transient pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

.field private ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/ibm/icu/text/PluralFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/PluralFormat;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 142
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 148
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 154
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 175
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v0, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 190
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 191
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 142
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 148
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 154
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 175
    iput-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v0, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 371
    invoke-direct {p0, v2, p2, p1, p4}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 372
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/PluralFormat;)Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-object v0
.end method

.method static findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILcom/ibm/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I
    .locals 12

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v7

    .line 453
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v0

    .line 456
    add-int/lit8 p1, p1, 0x1

    .line 464
    :goto_0
    const/4 v5, 0x0

    .line 468
    const/4 v4, 0x0

    .line 479
    const/4 v2, 0x0

    .line 483
    :goto_1
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v6

    .line 484
    invoke-virtual {v6}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v8

    .line 485
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v8, v9, :cond_3

    :cond_0
    move v6, v2

    .line 530
    :cond_1
    return v6

    .line 458
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 488
    :cond_3
    sget-boolean v9, Lcom/ibm/icu/text/PluralFormat;->$assertionsDisabled:Z

    if-nez v9, :cond_4

    sget-object v9, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v8, v9, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 490
    :cond_4
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 492
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 493
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v8

    cmpl-double v3, p4, v8

    if-eqz v3, :cond_1

    move v3, v4

    move-object v4, v5

    move v5, v6

    .line 528
    :goto_2
    invoke-virtual {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v5

    .line 529
    add-int/lit8 p1, v5, 0x1

    if-ge p1, v7, :cond_0

    move-object v5, v4

    move v4, v3

    goto :goto_1

    .line 497
    :cond_5
    if-nez v4, :cond_9

    .line 500
    const-string/jumbo v8, "other"

    invoke-virtual {p0, v6, v8}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 501
    if-nez v2, :cond_9

    .line 503
    if-eqz v5, :cond_8

    const-string/jumbo v2, "other"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 507
    const/4 v2, 0x1

    move-object v4, v5

    move v5, v3

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_2

    .line 511
    :cond_6
    if-nez v5, :cond_7

    .line 512
    sub-double v8, p4, v0

    invoke-interface {p2, p3, v8, v9}, Lcom/ibm/icu/text/PluralFormat$PluralSelector;->select(Ljava/lang/Object;D)Ljava/lang/String;

    move-result-object v5

    .line 513
    if-eqz v2, :cond_7

    const-string/jumbo v8, "other"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 516
    const/4 v4, 0x1

    .line 520
    :cond_7
    if-nez v4, :cond_9

    invoke-virtual {p0, v6, v5}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 524
    const/4 v2, 0x1

    move-object v4, v5

    move v5, v3

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_2

    :cond_8
    move v2, v3

    move v10, v4

    move-object v4, v5

    move v5, v3

    move v3, v10

    goto :goto_2

    :cond_9
    move v10, v4

    move-object v4, v5

    move v5, v3

    move v3, v10

    goto :goto_2
.end method

.method private format(Ljava/lang/Number;D)Ljava/lang/String;
    .locals 10

    .prologue
    .line 610
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    .line 616
    :cond_1
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    sub-double v4, p2, v0

    .line 618
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 624
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0, v4, v5}, Lcom/ibm/icu/text/DecimalFormat;->getFixedDecimal(D)Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object v3

    .line 629
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/PluralFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILcom/ibm/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v2

    .line 632
    const/4 v0, 0x0

    .line 633
    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 635
    :goto_3
    iget-object v3, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 636
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 637
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 638
    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_5

    .line 639
    if-nez v0, :cond_4

    .line 640
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0, v4, v5}, Lcom/ibm/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 627
    :cond_3
    new-instance v3, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v3, v4, v5}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    goto :goto_2

    .line 642
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_5
    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v7, :cond_6

    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_9

    iget-object v7, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 646
    invoke-virtual {v7}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 647
    :cond_6
    if-nez v0, :cond_7

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    :cond_7
    iget-object v7, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 651
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v1, :cond_8

    .line 652
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_8
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_4
    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 666
    goto :goto_3

    .line 655
    :cond_9
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v3, :cond_b

    .line 656
    if-nez v0, :cond_a

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    :cond_a
    iget-object v3, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 661
    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v2

    .line 662
    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 663
    iget-object v3, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-static {v3, v5, v1, v0}, Lcom/ibm/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 664
    goto :goto_4

    :cond_b
    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_4
.end method

.method private init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V
    .locals 1

    .prologue
    .line 389
    iput-object p3, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 390
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0, p2}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 392
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralFormat;->resetPattern()V

    .line 393
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 394
    return-void
.end method

.method private resetPattern()V
    .locals 2

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->clear()V

    .line 401
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 402
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 415
    iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0}, Lcom/ibm/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 420
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->parsePluralStyle(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;

    .line 421
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralFormat;->resetPattern()V

    .line 424
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 818
    if-ne p0, p1, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v0

    .line 821
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 822
    goto :goto_0

    .line 824
    :cond_3
    check-cast p1, Lcom/ibm/icu/text/PluralFormat;

    .line 825
    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 826
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 827
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 828
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 829
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/ibm/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 600
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is not a Number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 604
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    return-object p2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 696
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method parseType(Ljava/lang/String;Lcom/ibm/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 709
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-nez v0, :cond_1

    .line 710
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 711
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 712
    const/4 v5, 0x0

    .line 774
    :goto_0
    return-object v5

    .line 714
    :cond_1
    const/4 v2, 0x0

    .line 716
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v7

    .line 717
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    .line 718
    if-gez v0, :cond_2

    .line 719
    const/4 v0, 0x0

    .line 726
    :cond_2
    const/4 v5, 0x0

    .line 727
    const/4 v3, 0x0

    .line 728
    const/4 v1, -0x1

    .line 731
    :cond_3
    :goto_1
    if-ge v2, v7, :cond_8

    .line 732
    iget-object v6, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v6, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 733
    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v2, v6, :cond_4

    move v2, v4

    .line 735
    goto :goto_1

    .line 738
    :cond_4
    iget-object v6, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v8

    .line 739
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_3

    .line 744
    iget-object v4, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v9

    .line 745
    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v2, v4, :cond_5

    move v2, v6

    .line 747
    goto :goto_1

    .line 750
    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v4

    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v10

    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 751
    if-eqz p2, :cond_7

    .line 753
    invoke-interface {p2, p1, v4, v0}, Lcom/ibm/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v2

    .line 754
    const/4 v10, 0x0

    aget v2, v2, v10

    .line 759
    :goto_2
    if-ltz v2, :cond_a

    if-lt v2, v1, :cond_a

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_a

    .line 762
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v3

    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    move-object v2, v4

    :goto_3
    move-object v5, v3

    move-object v3, v2

    move v2, v6

    .line 764
    goto :goto_1

    .line 757
    :cond_7
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 765
    :cond_8
    if-eqz v5, :cond_9

    .line 766
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 767
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_0

    .line 772
    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 773
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 774
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    move-object v2, v3

    move-object v3, v5

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", rules=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", pattern=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", format=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
