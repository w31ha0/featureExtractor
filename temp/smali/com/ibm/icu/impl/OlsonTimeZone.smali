.class public Lcom/ibm/icu/impl/OlsonTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "OlsonTimeZone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z


# instance fields
.field private volatile canonicalID:Ljava/lang/String;

.field private finalStartMillis:D

.field private finalStartYear:I

.field private finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

.field private transient finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

.field private transient firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient firstTZTransitionIdx:I

.field private transient historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

.field private transient initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private serialVersionOnStream:I

.field private transitionCount:I

.field private transient transitionRulesInitialized:Z

.field private transitionTimes64:[J

.field private typeCount:I

.field private typeMapData:[B

.field private typeOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/OlsonTimeZone;->$assertionsDisabled:Z

    .line 886
    const-string/jumbo v0, "olson"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/OlsonTimeZone;->DEBUG:Z

    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    invoke-direct {p0, p3}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 865
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 870
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 876
    iput-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 882
    iput-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 1231
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/OlsonTimeZone;->construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)V

    .line 485
    return-void
.end method

.method private construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)V
    .locals 18

    .prologue
    .line 489
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 490
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 492
    :cond_1
    sget-boolean v2, Lcom/ibm/icu/impl/OlsonTimeZone;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OlsonTimeZone("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    :cond_2
    const/4 v3, 0x0

    .line 498
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    .line 502
    :try_start_0
    const-string/jumbo v2, "transPre32"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v2

    .line 504
    :try_start_1
    array-length v4, v2

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 506
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid Format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :catch_0
    move-exception v4

    :goto_0
    move-object v6, v2

    .line 515
    :goto_1
    :try_start_2
    const-string/jumbo v2, "trans"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 517
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v5, v2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v5, v2

    .line 524
    :goto_2
    :try_start_4
    const-string/jumbo v2, "transPost32"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 525
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v2

    .line 526
    :try_start_5
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 528
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_1

    .line 531
    :catch_1
    move-exception v3

    .line 535
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v3, :cond_7

    .line 536
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 537
    const/4 v4, 0x0

    .line 538
    if-eqz v6, :cond_5

    .line 539
    const/4 v3, 0x0

    :goto_4
    array-length v7, v6

    div-int/lit8 v7, v7, 0x2

    if-ge v3, v7, :cond_5

    .line 540
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v8, v3, 0x2

    aget v8, v6, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v10, v6, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v7, v4

    .line 539
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 508
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v6, v2

    .line 511
    goto/16 :goto_1

    .line 518
    :catch_2
    move-exception v2

    move-object v2, v3

    :goto_5
    move-object v5, v2

    goto :goto_2

    .line 530
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_7
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 545
    :cond_5
    if-eqz v5, :cond_6

    .line 546
    const/4 v3, 0x0

    :goto_6
    array-length v6, v5

    if-ge v3, v6, :cond_6

    .line 547
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget v7, v5, v3

    int-to-long v8, v7

    aput-wide v8, v6, v4

    .line 546
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 550
    :cond_6
    if-eqz v2, :cond_8

    .line 551
    const/4 v3, 0x0

    :goto_7
    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_8

    .line 552
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v6, v3, 0x2

    aget v6, v2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v8, v2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    aput-wide v6, v5, v4

    .line 551
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 558
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 562
    :cond_8
    const-string/jumbo v2, "typeOffsets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 563
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    const/16 v3, 0x7ffe

    if-gt v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 565
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    .line 570
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v2, :cond_c

    .line 571
    const-string/jumbo v2, "typeMap"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 572
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBinary([B)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-eq v2, v3, :cond_d

    .line 574
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 577
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 581
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 582
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 583
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 585
    const/4 v2, 0x0

    .line 587
    :try_start_8
    const-string/jumbo v3, "finalRule"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v16

    .line 589
    :try_start_9
    const-string/jumbo v2, "finalRaw"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 590
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v2

    mul-int/lit16 v3, v2, 0x3e8

    .line 591
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->loadRule(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 592
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v15

    .line 594
    if-eqz v15, :cond_e

    array-length v2, v15

    const/16 v4, 0xb

    if-eq v2, v4, :cond_f

    .line 595
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/util/MissingResourceException; {:try_start_9 .. :try_end_9} :catch_3

    .line 626
    :catch_3
    move-exception v2

    move-object/from16 v2, v16

    .line 627
    :goto_8
    if-eqz v2, :cond_10

    .line 630
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    :cond_f
    :try_start_a
    new-instance v2, Lcom/ibm/icu/util/SimpleTimeZone;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    aget v5, v15, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    const/4 v7, 0x2

    aget v7, v15, v7

    const/4 v8, 0x3

    aget v8, v15, v8

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x4

    aget v9, v15, v9

    const/4 v10, 0x5

    aget v10, v15, v10

    const/4 v11, 0x6

    aget v11, v15, v11

    const/4 v12, 0x7

    aget v12, v15, v12

    const/16 v13, 0x8

    aget v13, v15, v13

    mul-int/lit16 v13, v13, 0x3e8

    const/16 v14, 0x9

    aget v14, v15, v14

    const/16 v17, 0xa

    aget v15, v15, v17

    mul-int/lit16 v15, v15, 0x3e8

    invoke-direct/range {v2 .. v15}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 606
    const-string/jumbo v2, "finalYear"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    long-to-double v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D
    :try_end_a
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_a} :catch_3

    .line 633
    :cond_10
    return-void

    .line 626
    :catch_4
    move-exception v3

    goto :goto_8

    .line 531
    :catch_5
    move-exception v2

    move-object v2, v3

    goto/16 :goto_3

    .line 518
    :catch_6
    move-exception v4

    goto/16 :goto_5

    .line 509
    :catch_7
    move-exception v2

    move-object v2, v3

    goto/16 :goto_0
.end method

.method private dstOffsetAt(I)I
    .locals 2

    .prologue
    .line 768
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 769
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    return v0

    .line 768
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHistoricalOffset(JZII[I)V
    .locals 11

    .prologue
    .line 680
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-eqz v0, :cond_16

    .line 681
    const-wide/16 v0, 0x3e8

    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v6

    .line 682
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    .line 684
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v0

    .line 685
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v0

    .line 747
    :goto_0
    return-void

    .line 690
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_1
    if-ltz v5, :cond_3

    .line 691
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v2, v0, v5

    .line 692
    if-eqz p3, :cond_17

    const-wide/32 v0, 0x15180

    sub-long v0, v2, v0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_17

    .line 693
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v8

    .line 694
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 696
    :goto_2
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v9

    .line 697
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v4, v1

    .line 699
    :goto_3
    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    const/4 v1, 0x1

    .line 700
    :goto_4
    if-nez v0, :cond_7

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 702
    :goto_5
    sub-int v4, v9, v8

    if-ltz v4, :cond_d

    .line 704
    and-int/lit8 v4, p4, 0x3

    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    if-nez v1, :cond_2

    :cond_1
    and-int/lit8 v4, p4, 0x3

    const/4 v10, 0x3

    if-ne v4, v10, :cond_8

    if-eqz v0, :cond_8

    .line 706
    :cond_2
    int-to-long v0, v8

    add-long/2addr v0, v2

    .line 734
    :goto_6
    cmp-long v0, v6, v0

    if-ltz v0, :cond_15

    .line 739
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->rawOffsetAt(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v0

    .line 740
    const/4 v0, 0x1

    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v0

    goto :goto_0

    .line 694
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 697
    :cond_5
    const/4 v1, 0x0

    move v4, v1

    goto :goto_3

    .line 699
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 700
    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    .line 707
    :cond_8
    and-int/lit8 v4, p4, 0x3

    const/4 v10, 0x1

    if-ne v4, v10, :cond_9

    if-nez v0, :cond_a

    :cond_9
    and-int/lit8 v0, p4, 0x3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_b

    if-eqz v1, :cond_b

    .line 709
    :cond_a
    int-to-long v0, v9

    add-long/2addr v0, v2

    goto :goto_6

    .line 710
    :cond_b
    and-int/lit8 v0, p4, 0xc

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    .line 711
    int-to-long v0, v8

    add-long/2addr v0, v2

    goto :goto_6

    .line 715
    :cond_c
    int-to-long v0, v9

    add-long/2addr v0, v2

    goto :goto_6

    .line 719
    :cond_d
    and-int/lit8 v4, p5, 0x3

    const/4 v10, 0x1

    if-ne v4, v10, :cond_e

    if-nez v1, :cond_f

    :cond_e
    and-int/lit8 v4, p5, 0x3

    const/4 v10, 0x3

    if-ne v4, v10, :cond_10

    if-eqz v0, :cond_10

    .line 721
    :cond_f
    int-to-long v0, v9

    add-long/2addr v0, v2

    goto :goto_6

    .line 722
    :cond_10
    and-int/lit8 v4, p5, 0x3

    const/4 v10, 0x1

    if-ne v4, v10, :cond_11

    if-nez v0, :cond_12

    :cond_11
    and-int/lit8 v0, p5, 0x3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_13

    if-eqz v1, :cond_13

    .line 724
    :cond_12
    int-to-long v0, v8

    add-long/2addr v0, v2

    goto :goto_6

    .line 725
    :cond_13
    and-int/lit8 v0, p5, 0xc

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 726
    int-to-long v0, v8

    add-long/2addr v0, v2

    goto :goto_6

    .line 730
    :cond_14
    int-to-long v0, v9

    add-long/2addr v0, v2

    goto :goto_6

    .line 690
    :cond_15
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto/16 :goto_1

    .line 744
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v0

    .line 745
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v0

    goto/16 :goto_0

    :cond_17
    move-wide v0, v2

    goto/16 :goto_6
.end method

.method private getInt(B)I
    .locals 1

    .prologue
    .line 750
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 14

    .prologue
    .line 1110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1218
    :goto_0
    monitor-exit p0

    return-void

    .line 1114
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    .line 1118
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    .line 1119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(STD)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(DST)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1127
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    .line 1128
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 1129
    new-instance v3, Lcom/ibm/icu/util/InitialTimeZoneRule;

    if-nez v2, :cond_6

    move-object v0, v6

    :goto_1
    invoke-direct {v3, v0, v1, v2}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1131
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v0, :cond_2

    .line 1137
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v0, v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v1, v1, v0

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1143
    :cond_1
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v0, v1, :cond_8

    .line 1182
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_5

    .line 1184
    iget-wide v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v6, v0

    .line 1186
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1195
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/SimpleTimeZone;

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1196
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 1198
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v1}, Lcom/ibm/icu/util/SimpleTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v1

    .line 1199
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    .line 1200
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    move-object v1, v0

    .line 1206
    :goto_4
    const/4 v0, 0x0

    .line 1207
    iget v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v4, :cond_3

    .line 1208
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v4

    aget-object v0, v0, v4

    .line 1210
    :cond_3
    if-nez v0, :cond_4

    .line 1212
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1214
    :cond_4
    new-instance v4, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    iput-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1217
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v0, v7

    .line 1129
    goto :goto_1

    .line 1141
    :cond_7
    :try_start_2
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1147
    :cond_8
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    new-array v9, v0, [J

    .line 1148
    const/4 v0, 0x0

    move v8, v0

    :goto_5
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    if-ge v8, v0, :cond_d

    .line 1150
    const/4 v1, 0x0

    .line 1151
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move v2, v0

    :goto_6
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v2, v0, :cond_9

    .line 1152
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, v2

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    if-ne v8, v0, :cond_f

    .line 1153
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v0, v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    .line 1154
    long-to-double v10, v4

    iget-wide v12, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpg-double v0, v10, v12

    if-gez v0, :cond_f

    .line 1156
    add-int/lit8 v0, v1, 0x1

    aput-wide v4, v9, v1

    .line 1151
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    .line 1160
    :cond_9
    if-lez v1, :cond_b

    .line 1161
    new-array v4, v1, [J

    .line 1162
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v9, v0, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v1, v8, 0x2

    aget v0, v0, v1

    mul-int/lit16 v2, v0, 0x3e8

    .line 1165
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    mul-int/lit16 v3, v0, 0x3e8

    .line 1166
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-nez v0, :cond_a

    .line 1167
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    new-array v0, v0, [Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    .line 1169
    :cond_a
    iget-object v10, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    new-instance v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-nez v3, :cond_c

    move-object v1, v6

    :goto_8
    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v0, v10, v8

    .line 1148
    :cond_b
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_5

    :cond_c
    move-object v1, v7

    .line 1169
    goto :goto_8

    .line 1175
    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    .line 1176
    new-instance v1, Lcom/ibm/icu/util/TimeZoneTransition;

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    iget-object v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    aget-object v0, v5, v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    iput-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto/16 :goto_3

    .line 1202
    :cond_e
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1203
    new-instance v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1204
    invoke-virtual {v2}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    move-wide v2, v6

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto/16 :goto_7
.end method

.method private initialDstOffset()I
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private initialRawOffset()I
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static loadRule(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    .prologue
    .line 890
    const-string/jumbo v0, "Rules"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 891
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 892
    return-object v0
.end method

.method private rawOffsetAt(I)I
    .locals 2

    .prologue
    .line 763
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 764
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v0, v1, v0

    return v0

    .line 763
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zoneOffsetAt(I)I
    .locals 3

    .prologue
    .line 758
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 759
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    add-int/2addr v0, v1

    return v0

    .line 758
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    goto :goto_0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 3

    .prologue
    .line 1290
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    .line 1291
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/SimpleTimeZone;

    iput-object v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1304
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 1305
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 897
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v0

    .line 899
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/OlsonTimeZone;

    .line 901
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 908
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    iget v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 911
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 912
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 913
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .prologue
    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 1282
    return-object p0
.end method

.method public getCanonicalID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 442
    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 446
    sget-boolean v0, Lcom/ibm/icu/impl/OlsonTimeZone;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 447
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 452
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    return-object v0
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    goto :goto_0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x0

    .line 951
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 953
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_2

    .line 954
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 955
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 994
    :cond_0
    :goto_0
    return-object v0

    .line 956
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    .line 957
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    goto :goto_0

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v1, :cond_0

    .line 968
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 969
    :goto_1
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-lt v0, v1, :cond_3

    .line 970
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v2, v1, v0

    mul-long/2addr v2, v6

    .line 971
    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    if-nez p3, :cond_4

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 975
    :cond_3
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 976
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_0

    .line 969
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 977
    :cond_5
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v0, v1, :cond_6

    .line 978
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_0

    .line 981
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v2

    aget-object v1, v1, v2

    .line 982
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v3, v3, v0

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v3

    aget-object v2, v2, v3

    .line 983
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v4, v3, v0

    mul-long/2addr v4, v6

    .line 986
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 987
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 988
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    goto/16 :goto_0

    .line 991
    :cond_7
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto/16 :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 8

    .prologue
    .line 127
    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-le p3, v0, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Month is not in the legal range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(IIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIIII)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 139
    if-eq p1, v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-ltz p3, :cond_1

    const/16 v0, 0xb

    if-gt p3, v0, :cond_1

    if-lt p4, v4, :cond_1

    if-gt p4, p7, :cond_1

    if-lt p5, v4, :cond_1

    const/4 v0, 0x7

    if-gt p5, v0, :cond_1

    if-ltz p6, :cond_1

    const v0, 0x5265c00

    if-ge p6, v0, :cond_1

    const/16 v0, 0x1c

    if-lt p7, v0, :cond_1

    const/16 v0, 0x1f

    if-le p7, v0, :cond_2

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 153
    :cond_2
    if-nez p1, :cond_4

    .line 154
    neg-int v2, p2

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-lt v2, v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    .line 166
    :goto_1
    return v0

    .line 162
    :cond_3
    invoke-static {v2, p3, p4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    int-to-long v2, p6

    add-long/2addr v2, v0

    .line 164
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 165
    const/4 v5, 0x3

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    .line 166
    const/4 v0, 0x0

    aget v0, v7, v0

    aget v1, v7, v4

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    move v2, p2

    goto :goto_0
.end method

.method public getOffset(JZ[I)V
    .locals 9

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(JZ[I)V

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v5, 0x4

    const/16 v6, 0xc

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    goto :goto_0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffsetFromLocal(JII[I)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v4, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    goto :goto_0
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x0

    .line 1002
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 1004
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_2

    .line 1005
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1046
    :goto_0
    return-object v0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_0

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_8

    .line 1019
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1020
    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-lt v0, v2, :cond_3

    .line 1021
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v2, v2, v0

    mul-long/2addr v2, v6

    .line 1022
    cmp-long v4, p1, v2

    if-gtz v4, :cond_3

    if-eqz p3, :cond_4

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    .line 1026
    :cond_3
    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v0, v2, :cond_5

    move-object v0, v1

    .line 1028
    goto :goto_0

    .line 1020
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1029
    :cond_5
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ne v0, v1, :cond_6

    .line 1030
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_0

    .line 1033
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v2

    aget-object v1, v1, v2

    .line 1034
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v3

    aget-object v2, v2, v3

    .line 1035
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v3, v0

    mul-long/2addr v4, v6

    .line 1038
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 1039
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    goto/16 :goto_0

    .line 1043
    :cond_7
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 1046
    goto/16 :goto_0
.end method

.method public getRawOffset()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 296
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    .line 298
    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 920
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    ushr-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/2addr v2, v3

    xor-int/2addr v0, v2

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    ushr-int/lit8 v2, v2, 0x6

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    add-int/2addr v2, v3

    xor-int/2addr v0, v2

    int-to-long v2, v0

    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    ushr-int/lit8 v0, v0, 0x8

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 923
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v0, :cond_0

    move v0, v1

    .line 924
    :goto_0
    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 925
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->hashCode()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 926
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    if-eqz v2, :cond_1

    move v2, v0

    move v0, v1

    .line 927
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 928
    int-to-long v2, v2

    iget-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v4, v0

    iget-object v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v6, v0

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 924
    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    move v0, v1

    .line 931
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 932
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v4, v4, v0

    ushr-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 934
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v0, :cond_4

    .line 935
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 936
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 939
    :cond_4
    return v2
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 387
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 388
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    .line 389
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
    .line 1273
    iget-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 658
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 659
    sget-boolean v0, Lcom/ibm/icu/impl/OlsonTimeZone;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 662
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_3

    .line 667
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 669
    :cond_3
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    .line 671
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5d

    const/16 v7, 0x2c

    const/4 v1, 0x0

    const/16 v6, 0x5b

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transitionCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",typeCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string/jumbo v0, ",transitionTimes="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    if-eqz v0, :cond_3

    .line 790
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 791
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 792
    if-lez v0, :cond_0

    .line 793
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    :goto_1
    const-string/jumbo v0, ",typeOffsets="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    if-eqz v0, :cond_6

    .line 803
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 804
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 805
    if-lez v0, :cond_2

    .line 806
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 799
    :cond_3
    const-string/jumbo v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 810
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    :goto_3
    const-string/jumbo v0, ",typeMapData="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v0, :cond_7

    .line 816
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    :goto_4
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 818
    if-lez v1, :cond_5

    .line 819
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 812
    :cond_6
    const-string/jumbo v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 824
    :cond_7
    const-string/jumbo v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ",finalStartYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ",finalStartMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ",finalZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 10

    .prologue
    const-wide/32 v8, 0x15180

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 313
    iget-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v4, :cond_2

    long-to-double v4, v2

    iget-wide v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 314
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 314
    goto :goto_0

    .line 317
    :cond_2
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v2

    .line 320
    aget v3, v2, v1

    invoke-static {v3, v1, v0}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    mul-long/2addr v4, v8

    .line 321
    aget v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v2

    mul-long v6, v2, v8

    move v2, v1

    .line 325
    :goto_1
    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v2, v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v3, v2

    cmp-long v3, v8, v6

    if-ltz v3, :cond_4

    :cond_3
    move v0, v1

    .line 334
    goto :goto_0

    .line 329
    :cond_4
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v3, v2

    cmp-long v3, v8, v4

    if-ltz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v3, v2

    cmp-long v3, v8, v4

    if-lez v3, :cond_6

    if-lez v2, :cond_6

    add-int/lit8 v3, v2, -0x1

    .line 330
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 325
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
