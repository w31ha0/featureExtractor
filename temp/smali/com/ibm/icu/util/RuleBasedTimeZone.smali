.class public Lcom/ibm/icu/util/RuleBasedTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "RuleBasedTimeZone.java"


# instance fields
.field private finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private historicRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/util/TimeZoneRule;",
            ">;"
        }
    .end annotation
.end field

.field private transient historicTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/util/TimeZoneTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private transient upToDate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 47
    iput-object p2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 48
    return-void
.end method

.method private complete()V
    .locals 15

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    if-eqz v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Incomplete final rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_9

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 509
    const-wide v2, -0x28ec76c40e65000L

    .line 513
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 514
    new-instance v14, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/BitSet;-><init>(I)V

    move-object v7, v0

    .line 517
    :goto_1
    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    .line 518
    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    .line 519
    const-wide v8, 0x28d47dbbf19b000L

    .line 520
    const/4 v1, 0x0

    .line 524
    const/4 v0, 0x0

    move-wide v10, v8

    move-object v8, v1

    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 525
    invoke-virtual {v14, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v8

    move-wide v8, v10

    .line 524
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-wide v10, v8

    move-object v8, v1

    goto :goto_2

    .line 528
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeZoneRule;

    .line 529
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v6

    .line 530
    if-nez v6, :cond_4

    .line 532
    invoke-virtual {v14, v0}, Ljava/util/BitSet;->set(I)V

    move-object v1, v8

    move-wide v8, v10

    goto :goto_3

    .line 534
    :cond_4
    if-eq v1, v7, :cond_13

    .line 535
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 536
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v12

    if-ne v9, v12, :cond_5

    .line 537
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    if-ne v9, v12, :cond_5

    move-object v1, v8

    move-wide v8, v10

    .line 538
    goto :goto_3

    .line 540
    :cond_5
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 541
    cmp-long v6, v12, v10

    if-gez v6, :cond_13

    move-wide v8, v12

    .line 543
    goto :goto_3

    .line 548
    :cond_6
    if-nez v8, :cond_b

    .line 550
    const/4 v1, 0x1

    .line 551
    const/4 v0, 0x0

    :goto_4
    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_12

    .line 552
    invoke-virtual {v14, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 553
    const/4 v0, 0x0

    .line 557
    :goto_5
    if-eqz v0, :cond_b

    .line 592
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_9

    .line 593
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v0, :cond_8

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 597
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v2

    .line 599
    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 600
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-direct {v2, v4, v5, v7, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-direct {v2, v4, v5, v0, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_9
    :goto_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    goto/16 :goto_0

    .line 551
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 562
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_11

    .line 564
    const/4 v0, 0x0

    move v12, v0

    move-object v0, v8

    move-wide v8, v10

    :goto_8
    const/4 v1, 0x2

    if-ge v12, v1, :cond_e

    .line 565
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v12

    if-ne v1, v7, :cond_d

    .line 564
    :cond_c
    :goto_9
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_8

    .line 568
    :cond_d
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v12

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_c

    .line 570
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 571
    cmp-long v1, v10, v8

    if-gez v1, :cond_c

    .line 573
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v12

    move-wide v8, v10

    goto :goto_9

    :cond_e
    move-object v4, v0

    move-wide v0, v8

    .line 579
    :goto_a
    if-eqz v4, :cond_7

    .line 584
    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v2, :cond_f

    .line 585
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 587
    :cond_f
    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v3, v0, v1, v7, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v0

    move-object v7, v4

    .line 590
    goto/16 :goto_1

    .line 604
    :cond_10
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-direct {v1, v4, v5, v7, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-direct {v2, v4, v5, v0, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_11
    move-object v4, v8

    move-wide v0, v10

    goto :goto_a

    :cond_12
    move v0, v1

    goto/16 :goto_5

    :cond_13
    move-object v1, v8

    move-wide v8, v10

    goto/16 :goto_3

    :cond_14
    move-object v7, v0

    goto/16 :goto_6
.end method

.method private findRuleInFinal(JZII)Lcom/ibm/icu/util/TimeZoneRule;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 660
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v6

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 696
    :goto_0
    return-object v0

    .line 669
    :cond_1
    if-eqz p3, :cond_8

    .line 670
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v2, v2, v9

    .line 671
    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v3

    move v4, p4

    move/from16 v5, p5

    .line 670
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v0

    .line 673
    int-to-long v0, v0

    sub-long v2, p1, v0

    .line 675
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v9

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v8

    .line 678
    if-eqz p3, :cond_7

    .line 679
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v2, v2, v6

    .line 680
    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v3

    move v4, p4

    move/from16 v5, p5

    .line 679
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v0

    .line 682
    int-to-long v0, v0

    sub-long v2, p1, v0

    .line 684
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 686
    if-eqz v8, :cond_2

    if-nez v0, :cond_5

    .line 687
    :cond_2
    if-eqz v8, :cond_3

    .line 688
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    goto/16 :goto_0

    .line 689
    :cond_3
    if-eqz v0, :cond_4

    .line 690
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v6

    goto/16 :goto_0

    :cond_4
    move-object v0, v7

    .line 693
    goto/16 :goto_0

    .line 696
    :cond_5
    invoke-virtual {v8, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v6

    goto/16 :goto_0

    :cond_7
    move-wide v2, p1

    goto :goto_2

    :cond_8
    move-wide v2, p1

    goto/16 :goto_1
.end method

.method private static getLocalDelta(IIIIII)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x1

    .line 718
    .line 720
    add-int v0, p0, p1

    .line 721
    add-int v1, p2, p3

    .line 723
    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    move v4, v3

    .line 724
    :goto_0
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    move v2, v3

    .line 726
    :cond_0
    sub-int v5, v1, v0

    if-ltz v5, :cond_8

    .line 728
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v6, :cond_4

    if-eqz v2, :cond_4

    .line 757
    :cond_2
    :goto_1
    return v0

    :cond_3
    move v4, v2

    .line 723
    goto :goto_0

    .line 731
    :cond_4
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v3, :cond_5

    if-nez v2, :cond_6

    :cond_5
    and-int/lit8 v2, p4, 0x3

    if-ne v2, v6, :cond_7

    if-eqz v4, :cond_7

    :cond_6
    move v0, v1

    .line 733
    goto :goto_1

    .line 734
    :cond_7
    and-int/lit8 v2, p4, 0xc

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 739
    goto :goto_1

    .line 743
    :cond_8
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v3, :cond_9

    if-nez v4, :cond_a

    :cond_9
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v6, :cond_b

    if-eqz v2, :cond_b

    :cond_a
    move v0, v1

    .line 745
    goto :goto_1

    .line 746
    :cond_b
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v3, :cond_c

    if-nez v2, :cond_2

    :cond_c
    and-int/lit8 v2, p5, 0x3

    if-ne v2, v6, :cond_d

    if-nez v4, :cond_2

    .line 749
    :cond_d
    and-int/lit8 v2, p5, 0xc

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 754
    goto :goto_1
.end method

.method private getOffset(JZII[I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 617
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    .line 618
    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 652
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    aput v1, p6, v6

    .line 653
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    aput v0, p6, v1

    .line 654
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v0, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v0

    .line 624
    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 628
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v0, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v4

    .line 630
    cmp-long v0, p1, v4

    if-lez v0, :cond_4

    .line 631
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_6

    .line 632
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->findRuleInFinal(JZII)Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    .line 634
    :goto_1
    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 641
    :cond_4
    if-ltz v1, :cond_5

    .line 642
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v0, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method private static getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J
    .locals 8

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    .line 705
    if-eqz p1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    .line 707
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    move v4, p2

    move v5, p3

    .line 706
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 710
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v6

    goto :goto_0
.end method


# virtual methods
.method public addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen RuleBasedTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->isTransitionRule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Rule must be a transition rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    instance-of v0, p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 68
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_4

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-nez v0, :cond_2

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iput-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 72
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    check-cast p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aput-object p1, v0, v2

    .line 88
    :goto_0
    iput-boolean v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    .line 89
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v3

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    check-cast p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aput-object p1, v0, v3

    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too many final rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v0, :cond_5

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    goto :goto_0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 3

    .prologue
    .line 786
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/RuleBasedTimeZone;

    .line 787
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 788
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, [Lcom/ibm/icu/util/AnnualTimeZoneRule;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iput-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 793
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 794
    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 778
    return-object p0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 347
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    .line 348
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v9

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 354
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 355
    cmp-long v1, v2, p1

    if-gtz v1, :cond_2

    if-eqz p3, :cond_3

    cmp-long v1, v2, p1

    if-nez v1, :cond_3

    :cond_2
    move v1, v7

    .line 398
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    .line 399
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    .line 400
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 401
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 403
    if-eqz v1, :cond_a

    move-object v0, v9

    .line 404
    goto :goto_0

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 359
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 360
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 361
    if-eqz p3, :cond_4

    cmp-long v4, v2, p1

    if-nez v4, :cond_4

    move v1, v7

    .line 362
    goto :goto_1

    .line 363
    :cond_4
    cmp-long v2, v2, p1

    if-gtz v2, :cond_7

    .line 364
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_6

    .line 366
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v7

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v8

    .line 367
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    .line 366
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    .line 368
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v8

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v7

    .line 369
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    .line 368
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 371
    invoke-virtual {v1, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v8

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v7

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    :goto_2
    move v1, v8

    .line 378
    goto/16 :goto_1

    .line 374
    :cond_5
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v7

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v8

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_2

    :cond_6
    move-object v0, v9

    .line 379
    goto/16 :goto_0

    .line 383
    :cond_7
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object v1, v0

    .line 385
    :goto_3
    if-lez v2, :cond_8

    .line 386
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 387
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    .line 388
    cmp-long v3, v4, p1

    if-ltz v3, :cond_8

    if-nez p3, :cond_9

    cmp-long v3, v4, p1

    if-nez v3, :cond_9

    :cond_8
    move-object v0, v1

    move v1, v7

    .line 394
    goto/16 :goto_1

    .line 391
    :cond_9
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    .line 392
    goto :goto_3

    .line 406
    :cond_a
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v7}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 99
    if-nez p1, :cond_0

    .line 101
    rsub-int/lit8 p2, p2, 0x1

    .line 103
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    int-to-long v2, p6

    add-long/2addr v2, v0

    .line 104
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 105
    const/4 v5, 0x3

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    .line 106
    const/4 v0, 0x0

    aget v0, v7, v0

    aget v1, v7, v4

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 9

    .prologue
    .line 116
    const/4 v5, 0x4

    const/16 v6, 0xc

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    .line 117
    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    const/4 v4, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    .line 129
    return-void
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 419
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    .line 420
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 425
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 426
    if-eqz p3, :cond_3

    cmp-long v4, v2, p1

    if-nez v4, :cond_3

    .line 466
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    .line 467
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    .line 468
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 469
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v8}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_3
    cmp-long v0, v2, p1

    if-ltz v0, :cond_4

    move-object v0, v1

    .line 429
    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 432
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 433
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 434
    if-eqz p3, :cond_5

    cmp-long v4, v2, p1

    if-eqz v4, :cond_2

    .line 436
    :cond_5
    cmp-long v2, v2, p1

    if-gez v2, :cond_7

    .line 437
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_2

    .line 439
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v8

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    .line 440
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    .line 439
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    .line 441
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v9

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v8

    .line 442
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    .line 441
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 444
    invoke-virtual {v1, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 445
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v9

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v8

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto/16 :goto_1

    .line 447
    :cond_6
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v8

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v9

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto/16 :goto_1

    .line 453
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 454
    :goto_2
    if-ltz v1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 456
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 457
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    if-eqz p3, :cond_8

    cmp-long v2, v2, p1

    if-eqz v2, :cond_2

    .line 460
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public getRawOffset()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 142
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 143
    aget v0, v2, v3

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 154
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 155
    aget v2, v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return v0
.end method

.method public useDaylightTime()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 183
    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 184
    aget v4, v4, v0

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-virtual {p0, v2, v3, v1}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 192
    goto :goto_0
.end method
