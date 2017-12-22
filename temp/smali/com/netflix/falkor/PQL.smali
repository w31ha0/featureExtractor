.class public Lcom/netflix/falkor/PQL;
.super Ljava/lang/Object;
.source "PQL.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EMPTY:Lcom/netflix/falkor/PQL;

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final keySegments:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/netflix/falkor/PQL;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/netflix/falkor/PQL;->EMPTY:Lcom/netflix/falkor/PQL;

    .line 25
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/PQL;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I
    .locals 1

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/netflix/falkor/PQL;->comparePaths(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I

    move-result v0

    return v0
.end method

.method public static varargs array([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collapse(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 620
    const/4 v3, 0x0

    .line 622
    const/4 v2, 0x0

    .line 635
    const/4 v1, 0x1

    .line 636
    const/4 v0, 0x0

    .line 638
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 758
    :cond_0
    return-void

    .line 642
    :cond_1
    new-instance v5, Lcom/netflix/falkor/PQL$1;

    invoke-direct {v5}, Lcom/netflix/falkor/PQL$1;-><init>()V

    invoke-static {p0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v7, v4

    .line 651
    :goto_0
    if-eqz v1, :cond_e

    .line 652
    const/4 v5, 0x0

    .line 653
    const/4 v4, 0x0

    .line 655
    const/4 v8, 0x0

    .line 656
    const/4 v1, 0x1

    .line 657
    const/4 v6, -0x1

    move v9, v4

    move v10, v8

    move v8, v1

    move v1, v6

    .line 658
    :goto_1
    if-ge v8, v7, :cond_b

    .line 659
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/falkor/PQL;

    .line 660
    iget-object v6, v2, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 661
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/netflix/falkor/PQL;

    .line 662
    iget-object v11, v3, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 664
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 665
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v0, v12, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    if-le v0, v12, :cond_10

    .line 666
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 667
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v14, v1

    move v1, v0

    move v0, v14

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_3

    .line 668
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 669
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 670
    invoke-static {v12, v13}, Lcom/netflix/falkor/PQL;->segmentsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 671
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    .line 667
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    move v14, v0

    move-object v0, v4

    move v4, v14

    .line 677
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_9

    .line 678
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 680
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_4

    .line 681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-interface {v6, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    .line 694
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 695
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 696
    :goto_5
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 698
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 699
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v12

    .line 702
    if-eqz v6, :cond_7

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz v12, :cond_7

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 703
    const-string/jumbo v1, "to"

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :goto_6
    const/4 v5, 0x1

    .line 718
    const/4 v0, 0x1

    .line 719
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v4

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_1

    .line 685
    :cond_4
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 686
    check-cast v0, Ljava/util/List;

    move-object v5, v0

    goto :goto_4

    .line 691
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v1

    goto :goto_4

    .line 695
    :cond_6
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_5

    .line 706
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 708
    const-string/jumbo v6, "from"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string/jumbo v1, "to"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 714
    :cond_8
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 722
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 723
    const/4 v5, 0x1

    .line 724
    const/4 v0, 0x1

    .line 725
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v4

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_1

    .line 728
    :cond_a
    const/4 v0, 0x0

    .line 729
    const/4 v6, -0x1

    .line 731
    add-int/lit8 v1, v8, 0x1

    .line 732
    invoke-interface {p0, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 733
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v10, v8

    move v8, v1

    move v1, v6

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto/16 :goto_1

    .line 739
    :cond_b
    if-nez v0, :cond_d

    .line 740
    invoke-interface {p0, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_c
    :goto_7
    add-int/lit8 v1, v9, 0x1

    move v7, v1

    move v1, v5

    .line 747
    goto/16 :goto_0

    .line 742
    :cond_d
    if-eqz v5, :cond_c

    .line 743
    invoke-interface {p0, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 750
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-lt v0, v7, :cond_f

    .line 751
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 750
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 755
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 756
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->sanitize(Ljava/util/List;)Ljava/util/List;

    goto :goto_9

    :cond_10
    move-object v0, v4

    move v4, v1

    goto/16 :goto_3
.end method

.method private static comparePaths(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I
    .locals 12

    .prologue
    .line 472
    iget-object v7, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 473
    iget-object v8, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 474
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 475
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 476
    sub-int v0, v9, v10

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 496
    if-eqz v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_3

    .line 514
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 517
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 520
    :cond_3
    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    if-ge v6, v9, :cond_10

    .line 524
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 525
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 526
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 527
    instance-of v0, v1, Ljava/util/List;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 528
    :goto_4
    instance-of v0, v2, Ljava/util/List;

    if-eqz v0, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 531
    :goto_5
    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    if-nez v0, :cond_15

    .line 532
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 533
    const/4 v3, 0x0

    move-object v5, v3

    .line 536
    :goto_6
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    if-nez v5, :cond_14

    .line 537
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 538
    const/4 v0, 0x0

    move-object v4, v0

    .line 541
    :goto_7
    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    .line 542
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 543
    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 548
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 549
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 550
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_13

    .line 551
    check-cast v0, Ljava/util/Map;

    .line 552
    const-string/jumbo v3, "from"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 555
    :goto_9
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 556
    check-cast v0, Ljava/util/Map;

    .line 557
    const-string/jumbo v1, "from"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 559
    :cond_4
    invoke-static {v3}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 560
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v6

    .line 562
    if-eqz v6, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 563
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v0, v6

    .line 564
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_8

    .line 565
    double-to-int v0, v0

    goto/16 :goto_0

    .line 527
    :cond_5
    const/4 v0, 0x0

    move-object v3, v0

    goto/16 :goto_4

    .line 528
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 568
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 569
    if-nez v0, :cond_0

    .line 547
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 574
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 578
    :cond_a
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_d

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 579
    :goto_a
    if-eqz v0, :cond_b

    .line 580
    const-string/jumbo v1, "from"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 581
    if-nez v1, :cond_b

    .line 582
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 585
    :cond_b
    instance-of v0, v2, Ljava/util/Map;

    if-eqz v0, :cond_e

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 586
    :goto_b
    if-eqz v0, :cond_c

    .line 587
    const-string/jumbo v2, "from"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 588
    if-nez v2, :cond_c

    .line 589
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 592
    :cond_c
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 593
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    .line 595
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 596
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    goto/16 :goto_0

    .line 578
    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    .line 585
    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    .line 599
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 600
    if-nez v0, :cond_0

    .line 523
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_3

    .line 605
    :cond_10
    if-le v9, v10, :cond_11

    .line 606
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 607
    :cond_11
    if-le v10, v9, :cond_12

    .line 608
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 610
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    move-object v3, v0

    goto/16 :goto_9

    :cond_14
    move-object v4, v0

    goto/16 :goto_7

    :cond_15
    move-object v5, v3

    goto/16 :goto_6
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->sanitize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static fromJsonArray(Lcom/google/gson/JsonArray;)Lcom/netflix/falkor/PQL;
    .locals 8

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 144
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 149
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 150
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    .line 157
    const-string/jumbo v4, "from"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 159
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string/jumbo v5, "to"

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v5, "from"

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    goto :goto_2

    .line 166
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PQL.fromJsonArray: unknown json "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_6
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->fromList(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public static fromList(Ljava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-static {p0}, Lcom/netflix/falkor/PQL;->sanitize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    if-nez p0, :cond_1

    .line 423
    if-nez p1, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static parseDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 380
    instance-of v1, p0, Ljava/util/Map;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    .line 396
    :goto_0
    return-object p0

    .line 383
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 385
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 388
    goto :goto_0

    .line 392
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 393
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 396
    :cond_3
    check-cast p0, Ljava/lang/Double;

    goto :goto_0
.end method

.method private static parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 406
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 418
    :goto_0
    return-object p0

    .line 409
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 411
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 414
    goto :goto_0

    .line 418
    :cond_1
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static range(I)Ljava/util/Map;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Ljava/util/Map;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    const-string/jumbo v1, "from"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v1, "to"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object v0
.end method

.method private static sanitize(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 74
    move v2, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 75
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 76
    instance-of v0, v1, Ljava/util/List;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 80
    check-cast v0, Ljava/util/List;

    .line 81
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 82
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 85
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    :cond_2
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_3
    return-object p0
.end method

.method private static sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 101
    check-cast v0, Ljava/util/List;

    .line 102
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    .line 107
    :goto_0
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 108
    check-cast v0, Ljava/util/Map;

    .line 109
    const-string/jumbo v2, "from"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    if-nez v2, :cond_2

    .line 111
    const-string/jumbo v2, "from"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    :goto_1
    const-string/jumbo v2, "to"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 124
    const-string/jumbo v3, "to"

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    :goto_2
    return-object v1

    .line 118
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 119
    const-string/jumbo v3, "from"

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 127
    :cond_3
    instance-of v0, v1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, p0

    goto :goto_0
.end method

.method private static segmentsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/PQL;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 464
    :goto_0
    return v0

    .line 445
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 446
    :goto_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 447
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v4, "to"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "to"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "to"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/falkor/PQL;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "from"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "from"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/falkor/PQL;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 448
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 445
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 446
    goto :goto_2

    .line 451
    :cond_3
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/List;

    .line 452
    :goto_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/List;

    .line 454
    :goto_4
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 456
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->segmentsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_4
    move-object p0, v2

    .line 451
    goto :goto_3

    :cond_5
    move-object p1, v2

    .line 452
    goto :goto_4

    .line 459
    :cond_6
    if-gez v0, :cond_7

    move v0, v3

    .line 460
    goto/16 :goto_0

    .line 464
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public addPathSegments(Ljava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    iget-object v1, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public append(Ljava/lang/Object;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    invoke-static {p1}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 767
    new-instance v0, Lcom/netflix/falkor/PQL;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 773
    if-ne p0, p1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 776
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 777
    goto :goto_0

    .line 779
    :cond_2
    instance-of v2, p1, Lcom/netflix/falkor/PQL;

    if-nez v2, :cond_3

    move v0, v1

    .line 780
    goto :goto_0

    .line 782
    :cond_3
    check-cast p1, Lcom/netflix/falkor/PQL;

    .line 783
    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-nez v2, :cond_4

    .line 784
    iget-object v2, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    .line 785
    goto :goto_0

    .line 787
    :cond_4
    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 789
    goto :goto_0
.end method

.method public explode()Ljava/util/LinkedHashSet;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 219
    iget-object v10, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 220
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v12, v0, [Ljava/lang/Integer;

    .line 227
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v13, v0, [Ljava/lang/Integer;

    .line 228
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v14, v0, [Ljava/lang/Integer;

    .line 236
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-direct {v0, v10}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    .line 347
    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v1, v2

    .line 244
    :goto_1
    if-gt v1, v4, :cond_20

    .line 245
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v1

    .line 247
    aput-object v3, v13, v1

    .line 248
    instance-of v5, v0, Ljava/util/List;

    if-eqz v5, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v1

    .line 244
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 248
    goto :goto_2

    :cond_2
    move v0, v2

    .line 334
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v9

    .line 337
    :cond_3
    aget-object v0, v13, v9

    if-eqz v0, :cond_1b

    aget-object v0, v13, v9

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 338
    aget-object v0, v13, v9

    aget-object v0, v13, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v9

    :goto_4
    move v0, v9

    move-object v1, v5

    .line 251
    :goto_5
    if-ltz v0, :cond_1c

    :goto_6
    move v8, v0

    move-object v5, v1

    .line 254
    :goto_7
    if-gt v8, v4, :cond_a

    .line 255
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 256
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 257
    check-cast v0, Ljava/util/List;

    aget-object v1, v12, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 260
    :goto_8
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 261
    :goto_9
    if-eqz v6, :cond_5

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    .line 263
    :goto_a
    if-eqz v5, :cond_9

    .line 265
    const-string/jumbo v0, "from"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "from"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 266
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid range in path.  Range to value is smaller than from value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v6, v3

    .line 260
    goto :goto_9

    :cond_5
    move-object v5, v3

    .line 261
    goto :goto_a

    :cond_6
    move v0, v2

    .line 265
    goto :goto_b

    .line 269
    :cond_7
    aget-object v1, v13, v8

    if-nez v1, :cond_8

    .line 270
    aput-object v0, v13, v8

    .line 273
    :cond_8
    aget-object v0, v13, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v8

    .line 281
    :goto_c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v5, v6

    goto/16 :goto_7

    .line 277
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    aput-object v0, v11, v8

    goto :goto_c

    .line 284
    :cond_a
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-virtual {v11}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 287
    aget-object v0, v13, v4

    if-eqz v0, :cond_f

    .line 288
    aget-object v0, v13, v4

    aget-object v0, v13, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v4

    .line 289
    if-eqz v5, :cond_b

    aget-object v0, v13, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v0, "to"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_b

    .line 290
    aput-object v3, v13, v4

    .line 291
    aget-object v0, v12, v4

    aget-object v0, v12, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v4

    .line 298
    :cond_b
    :goto_d
    aget-object v0, v12, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v14, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1d

    .line 299
    aget-object v0, v14, v4

    aput-object v0, v12, v4

    move v9, v4

    .line 305
    :goto_e
    if-ltz v9, :cond_15

    .line 306
    aget-object v0, v12, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 307
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 308
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_c

    check-cast v0, Ljava/util/List;

    aget-object v1, v12, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 309
    :cond_c
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 310
    :goto_f
    if-eqz v1, :cond_11

    const-string/jumbo v0, "to"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 311
    :goto_10
    if-eqz v1, :cond_12

    const-string/jumbo v0, "from"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    .line 312
    :goto_11
    aget-object v0, v14, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v8, v0, :cond_15

    aget-object v0, v13, v9

    if-eqz v0, :cond_d

    aget-object v0, v13, v9

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 313
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v9

    .line 315
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v8, v0, Ljava/util/List;

    if-eqz v8, :cond_e

    check-cast v0, Ljava/util/List;

    aget-object v8, v12, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    :cond_e
    if-eqz v6, :cond_14

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_13
    aput-object v0, v13, v9

    .line 323
    add-int/lit8 v9, v9, -0x1

    .line 324
    goto :goto_e

    .line 295
    :cond_f
    aget-object v0, v12, v4

    aget-object v0, v12, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v4

    goto/16 :goto_d

    :cond_10
    move-object v1, v3

    .line 309
    goto :goto_f

    :cond_11
    move-object v6, v3

    .line 310
    goto :goto_10

    :cond_12
    move-object v1, v3

    .line 311
    goto :goto_11

    :cond_13
    move v0, v2

    .line 317
    goto :goto_12

    :cond_14
    move-object v0, v3

    goto :goto_13

    .line 327
    :cond_15
    if-ltz v9, :cond_1f

    .line 328
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 329
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_16

    check-cast v0, Ljava/util/List;

    aget-object v1, v12, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 330
    :goto_14
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_17

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v8, v0

    .line 331
    :goto_15
    if-eqz v8, :cond_18

    const-string/jumbo v0, "to"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 332
    :goto_16
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_19

    const-string/jumbo v0, "from"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 333
    :goto_17
    if-eqz v6, :cond_3

    .line 334
    aget-object v1, v13, v9

    if-nez v1, :cond_1a

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    :cond_16
    move-object v1, v0

    .line 329
    goto :goto_14

    :cond_17
    move-object v8, v3

    .line 330
    goto :goto_15

    :cond_18
    move-object v6, v3

    .line 331
    goto :goto_16

    :cond_19
    move-object v0, v3

    .line 332
    goto :goto_17

    .line 334
    :cond_1a
    aget-object v0, v13, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    .line 341
    :cond_1b
    aput-object v3, v13, v9

    .line 342
    aget-object v0, v12, v9

    aget-object v0, v12, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v9

    goto/16 :goto_4

    :cond_1c
    move-object v0, v7

    .line 347
    goto/16 :goto_0

    :cond_1d
    move v0, v4

    move-object v1, v5

    goto/16 :goto_6

    :cond_1e
    move-object v1, v0

    goto/16 :goto_8

    :cond_1f
    move v0, v9

    move-object v1, v5

    goto/16 :goto_5

    :cond_20
    move v0, v2

    move-object v1, v3

    goto/16 :goto_5
.end method

.method public getAllNodeIndex()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 357
    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 358
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 359
    if-le v2, v0, :cond_1

    .line 362
    :goto_0
    if-ge v0, v2, :cond_1

    .line 363
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 364
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "all"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    :goto_1
    return v0

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getKeySegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    return-object v0
.end method

.method public getNumKeySegments()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/netflix/falkor/PQL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/IterableBuilder;->fromList(Ljava/util/List;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/IterableBuilder;->toList()Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public rewrite(Lcom/netflix/falkor/PQL;I)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public slice(I)Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, p1

    .line 178
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 762
    sget-object v0, Lcom/netflix/falkor/PQL;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
