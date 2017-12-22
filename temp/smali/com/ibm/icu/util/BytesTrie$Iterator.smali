.class public final Lcom/ibm/icu/util/BytesTrie$Iterator;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/ibm/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private bytes_:[B

.field private entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

.field private initialPos_:I

.field private initialRemainingMatchLength_:I

.field private maxLength_:I

.field private pos_:I

.field private remainingMatchLength_:I

.field private stack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([BIII)V
    .locals 4

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    .line 527
    iput-object p1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    .line 528
    iput p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->initialPos_:I

    iput p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 529
    iput p3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    iput p3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 530
    iput p4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    .line 531
    new-instance v1, Lcom/ibm/icu/util/BytesTrie$Entry;

    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu/util/BytesTrie$Entry;-><init>(ILcom/ibm/icu/util/BytesTrie$1;)V

    iput-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    .line 532
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 533
    if-ltz v0, :cond_1

    .line 535
    add-int/lit8 v0, v0, 0x1

    .line 536
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_0

    .line 537
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    iget v3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    invoke-static {v1, v2, v3, v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$600(Lcom/ibm/icu/util/BytesTrie$Entry;[BII)V

    .line 540
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 541
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 543
    :cond_1
    return-void

    .line 531
    :cond_2
    const/16 v0, 0x20

    goto :goto_0
.end method

.method synthetic constructor <init>([BIIILcom/ibm/icu/util/BytesTrie$1;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/util/BytesTrie$Iterator;-><init>([BIII)V

    return-void
.end method

.method private branchNext(II)I
    .locals 10

    .prologue
    const/16 v8, 0x20

    const/4 v1, -0x1

    .line 664
    :goto_0
    const/4 v0, 0x5

    if-le p2, v0, :cond_0

    .line 665
    add-int/lit8 v0, p1, 0x1

    .line 667
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v3, v0}, Lcom/ibm/icu/util/BytesTrie;->access$1200([BI)I

    move-result v3

    int-to-long v4, v3

    shl-long/2addr v4, v8

    shr-int/lit8 v3, p2, 0x1

    sub-int v3, p2, v3

    shl-int/lit8 v3, v3, 0x10

    int-to-long v6, v3

    or-long/2addr v4, v6

    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v3}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v3

    int-to-long v6, v3

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    shr-int/lit8 p2, p2, 0x1

    .line 670
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v2, v0}, Lcom/ibm/icu/util/BytesTrie;->access$1300([BI)I

    move-result p1

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, v0, p1

    .line 675
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xff

    .line 676
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 677
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v6, v2, 0x1

    invoke-static {v5, v4, v6}, Lcom/ibm/icu/util/BytesTrie;->access$900([BII)I

    move-result v5

    .line 678
    invoke-static {v4, v2}, Lcom/ibm/icu/util/BytesTrie;->access$1100(II)I

    move-result v2

    .line 679
    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    int-to-long v6, v2

    shl-long/2addr v6, v8

    add-int/lit8 v8, p2, -0x1

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    or-long/2addr v6, v8

    iget-object v8, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v8}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v4, v3}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$800(Lcom/ibm/icu/util/BytesTrie$Entry;B)V

    .line 681
    if-eqz v0, :cond_2

    .line 682
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 683
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iput v5, v0, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    move v0, v1

    .line 686
    :goto_2
    return v0

    .line 676
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 686
    :cond_2
    add-int v0, v2, v5

    goto :goto_2
.end method

.method private truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 658
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 659
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iput v1, v0, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    .line 660
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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

.method public next()Lcom/ibm/icu/util/BytesTrie$Entry;
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x1

    .line 584
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 585
    if-gez v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 592
    long-to-int v0, v2

    .line 593
    shr-long/2addr v2, v5

    long-to-int v2, v2

    .line 594
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    const v4, 0xffff

    and-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$700(Lcom/ibm/icu/util/BytesTrie$Entry;I)V

    .line 595
    ushr-int/lit8 v0, v0, 0x10

    .line 596
    if-le v0, v1, :cond_1

    .line 597
    invoke-direct {p0, v2, v0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v0

    .line 598
    if-gez v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    .line 639
    :goto_0
    return-object v0

    .line 602
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v4, v2

    invoke-static {v3, v2}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$800(Lcom/ibm/icu/util/BytesTrie$Entry;B)V

    .line 605
    :cond_2
    iget v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    if-ltz v2, :cond_4

    .line 608
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v2, v4, v3, v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$600(Lcom/ibm/icu/util/BytesTrie$Entry;[BII)V

    .line 642
    add-int/2addr v0, v3

    .line 611
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v2, v0, 0xff

    .line 612
    if-lt v2, v5, :cond_8

    .line 614
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    .line 615
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v5, v2, 0x1

    invoke-static {v4, v3, v5}, Lcom/ibm/icu/util/BytesTrie;->access$900([BII)I

    move-result v4

    iput v4, v1, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    .line 616
    if-nez v0, :cond_5

    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v0, v1, :cond_7

    .line 617
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 621
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    goto :goto_0

    .line 614
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 619
    :cond_7
    invoke-static {v3, v2}, Lcom/ibm/icu/util/BytesTrie;->access$1100(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    goto :goto_2

    .line 623
    :cond_8
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v0

    iget v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v0, v4, :cond_9

    .line 624
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_9
    const/16 v0, 0x10

    if-ge v2, v0, :cond_a

    .line 627
    if-nez v2, :cond_b

    .line 628
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 630
    :goto_3
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v0

    .line 631
    if-gez v0, :cond_4

    .line 632
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    goto/16 :goto_0

    .line 636
    :cond_a
    add-int/lit8 v0, v2, -0x10

    add-int/lit8 v0, v0, 0x1

    .line 637
    iget v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v2}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v2, v4, :cond_3

    .line 638
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    iget v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v4}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v0, v1, v3, v2}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$600(Lcom/ibm/icu/util/BytesTrie$Entry;[BII)V

    .line 639
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move v0, v2

    move v2, v3

    goto :goto_3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->next()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
