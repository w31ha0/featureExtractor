.class public Lcom/ibm/icu/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field public static final ONE:Lcom/ibm/icu/math/BigDecimal;

.field public static final TEN:Lcom/ibm/icu/math/BigDecimal;

.field public static final ZERO:Lcom/ibm/icu/math/BigDecimal;

.field private static bytecar:[B

.field private static bytedig:[B

.field private static final plainMC:Lcom/ibm/icu/math/MathContext;


# instance fields
.field private exp:I

.field private form:B

.field private ind:B

.field private mant:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    .line 248
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    .line 260
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->TEN:Lcom/ibm/icu/math/BigDecimal;

    .line 338
    new-instance v0, Lcom/ibm/icu/math/MathContext;

    invoke-direct {v0, v4, v4}, Lcom/ibm/icu/math/MathContext;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    .line 350
    const/16 v0, 0xbe

    new-array v0, v0, [B

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    .line 351
    invoke-static {}, Lcom/ibm/icu/math/BigDecimal;->diginit()[B

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->bytedig:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 381
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 938
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    const/16 v0, 0x9

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 773
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 381
    iput-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 777
    if-gt p1, v0, :cond_5

    .line 778
    const/16 v1, -0x9

    if-lt p1, v1, :cond_5

    .line 782
    if-nez p1, :cond_1

    .line 783
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 784
    iput-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    if-ne p1, v2, :cond_2

    .line 786
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 787
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    .line 788
    :cond_2
    if-ne p1, v3, :cond_3

    .line 789
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 790
    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    .line 793
    :cond_3
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 794
    if-lez p1, :cond_4

    .line 795
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v4

    .line 796
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    neg-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 799
    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    .line 809
    :cond_5
    if-lez p1, :cond_6

    .line 810
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 811
    neg-int p1, p1

    :goto_1
    move v1, p1

    .line 821
    :goto_2
    div-int/lit8 v1, v1, 0xa

    .line 822
    if-nez v1, :cond_7

    .line 827
    rsub-int/lit8 v1, v0, 0xa

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 829
    rsub-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    .line 831
    :goto_3
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    rem-int/lit8 v2, p1, 0xa

    int-to-byte v2, v2

    neg-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 832
    div-int/lit8 p1, p1, 0xa

    .line 833
    if-eqz p1, :cond_0

    .line 830
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 813
    :cond_6
    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_1

    .line 820
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public constructor <init>(J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0xa

    const-wide/16 v4, 0x0

    .line 852
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 381
    iput-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 859
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    .line 860
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 861
    neg-long p1, p1

    .line 868
    :goto_0
    const/16 v0, 0x12

    move-wide v2, p1

    .line 870
    :goto_1
    div-long/2addr v2, v6

    .line 871
    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 876
    rsub-int/lit8 v1, v0, 0x13

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 878
    rsub-int/lit8 v0, v0, 0x13

    add-int/lit8 v0, v0, -0x1

    .line 880
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    rem-long v2, p1, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    neg-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 881
    div-long/2addr p1, v6

    .line 882
    cmp-long v1, p1, v4

    if-nez v1, :cond_3

    .line 886
    return-void

    .line 862
    :cond_0
    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    .line 863
    iput-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    .line 865
    :cond_1
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    .line 869
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 879
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 930
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;-><init>([CII)V

    .line 931
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 10

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 381
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 541
    if-gtz p3, :cond_0

    .line 542
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 546
    :cond_0
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 547
    aget-char v0, p1, p2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 548
    add-int/lit8 p3, p3, -0x1

    .line 549
    if-nez p3, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 551
    :cond_1
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 552
    add-int/lit8 p2, p2, 0x1

    .line 561
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 562
    const/4 v6, 0x0

    .line 563
    const/4 v4, 0x0

    .line 564
    const/4 v3, -0x1

    .line 565
    const/4 v2, -0x1

    move v7, p3

    move v1, p2

    .line 569
    :goto_1
    if-lez v7, :cond_16

    .line 570
    aget-char v0, p1, v1

    .line 571
    const/16 v8, 0x30

    if-lt v0, v8, :cond_5

    .line 572
    const/16 v8, 0x39

    if-gt v0, v8, :cond_5

    .line 574
    add-int/lit8 v0, v4, 0x1

    move v2, v3

    move v4, v5

    move v3, v0

    move v0, v1

    .line 569
    :goto_2
    add-int/lit8 v5, v7, -0x1

    add-int/lit8 v1, v1, 0x1

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 553
    :cond_3
    aget-char v0, p1, p2

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    .line 554
    add-int/lit8 p3, p3, -0x1

    .line 555
    if-nez p3, :cond_4

    .line 556
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 557
    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 577
    :cond_5
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_7

    .line 578
    if-ltz v3, :cond_6

    .line 579
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 580
    :cond_6
    sub-int v0, v1, p2

    move v3, v4

    move v4, v5

    move v9, v2

    move v2, v0

    move v0, v9

    .line 581
    goto :goto_2

    .line 583
    :cond_7
    const/16 v8, 0x65

    if-eq v0, v8, :cond_9

    .line 584
    const/16 v8, 0x45

    if-eq v0, v8, :cond_9

    .line 585
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 586
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 588
    :cond_8
    const/4 v2, 0x1

    .line 590
    add-int/lit8 v0, v4, 0x1

    move v4, v2

    move v2, v3

    move v3, v0

    move v0, v1

    .line 591
    goto :goto_2

    .line 595
    :cond_9
    sub-int v0, v1, p2

    add-int/lit8 v6, p3, -0x2

    if-le v0, v6, :cond_a

    .line 596
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 597
    :cond_a
    const/4 v0, 0x0

    .line 598
    add-int/lit8 v6, v1, 0x1

    aget-char v6, p1, v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_f

    .line 599
    const/4 v0, 0x1

    .line 600
    add-int/lit8 v1, v1, 0x2

    move v8, v0

    .line 606
    :goto_3
    sub-int v0, v1, p2

    sub-int v0, p3, v0

    .line 607
    if-nez v0, :cond_11

    const/4 v6, 0x1

    move v7, v6

    :goto_4
    const/16 v6, 0x9

    if-le v0, v6, :cond_12

    const/4 v6, 0x1

    :goto_5
    or-int/2addr v6, v7

    if-eqz v6, :cond_b

    .line 608
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_b
    move v6, v1

    move v1, v0

    .line 612
    :goto_6
    if-lez v1, :cond_14

    .line 613
    aget-char v0, p1, v6

    .line 614
    const/16 v7, 0x30

    if-ge v0, v7, :cond_c

    .line 615
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 616
    :cond_c
    const/16 v7, 0x39

    if-le v0, v7, :cond_13

    .line 617
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 618
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 619
    :cond_d
    const/16 v7, 0xa

    invoke-static {v0, v7}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v0

    .line 620
    if-gez v0, :cond_e

    .line 621
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 624
    :cond_e
    :goto_7
    iget v7, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v0, v7

    iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 612
    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_6

    .line 601
    :cond_f
    add-int/lit8 v6, v1, 0x1

    aget-char v6, p1, v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_10

    .line 602
    add-int/lit8 v1, v1, 0x2

    move v8, v0

    goto :goto_3

    .line 604
    :cond_10
    add-int/lit8 v1, v1, 0x1

    move v8, v0

    goto :goto_3

    .line 607
    :cond_11
    const/4 v6, 0x0

    move v7, v6

    goto :goto_4

    :cond_12
    const/4 v6, 0x0

    goto :goto_5

    .line 623
    :cond_13
    add-int/lit8 v0, v0, -0x30

    goto :goto_7

    .line 627
    :cond_14
    if-eqz v8, :cond_15

    .line 628
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 629
    :cond_15
    const/4 v0, 0x1

    move v6, v0

    .line 635
    :cond_16
    if-nez v4, :cond_17

    .line 636
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 637
    :cond_17
    if-ltz v3, :cond_18

    .line 638
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 642
    :cond_18
    add-int/lit8 v7, v2, -0x1

    move v1, v4

    move v0, p2

    .line 644
    :goto_8
    if-gt p2, v7, :cond_1b

    .line 645
    aget-char v2, p1, p2

    .line 646
    const/16 v4, 0x30

    if-ne v2, v4, :cond_19

    .line 647
    add-int/lit8 v2, v0, 0x1

    .line 648
    add-int/lit8 v0, v3, -0x1

    .line 649
    add-int/lit8 v1, v1, -0x1

    .line 644
    :goto_9
    add-int/lit8 p2, p2, 0x1

    move v3, v0

    move v0, v2

    goto :goto_8

    .line 650
    :cond_19
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_1a

    .line 651
    add-int/lit8 v2, v0, 0x1

    .line 652
    add-int/lit8 v0, v3, -0x1

    goto :goto_9

    .line 653
    :cond_1a
    const/16 v4, 0x39

    if-gt v2, v4, :cond_1d

    .line 667
    :cond_1b
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 669
    if-eqz v5, :cond_20

    .line 673
    const/4 v2, 0x0

    .line 674
    :goto_a
    if-lez v1, :cond_22

    .line 675
    if-ne v2, v3, :cond_1c

    .line 676
    add-int/lit8 v0, v0, 0x1

    .line 677
    :cond_1c
    aget-char v4, p1, v0

    .line 678
    const/16 v5, 0x39

    if-gt v4, v5, :cond_1e

    .line 679
    iget-object v5, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v4, v4, -0x30

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    .line 686
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 674
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 656
    :cond_1d
    const/16 v4, 0xa

    invoke-static {v2, v4}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v2

    if-nez v2, :cond_1b

    .line 659
    add-int/lit8 v2, v0, 0x1

    .line 660
    add-int/lit8 v0, v3, -0x1

    .line 661
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 681
    :cond_1e
    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v4

    .line 682
    if-gez v4, :cond_1f

    .line 683
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 684
    :cond_1f
    iget-object v5, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    goto :goto_b

    .line 695
    :cond_20
    const/4 v2, 0x0

    .line 696
    :goto_c
    if-lez v1, :cond_22

    .line 697
    if-ne v2, v3, :cond_21

    .line 698
    add-int/lit8 v0, v0, 0x1

    .line 699
    :cond_21
    iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-char v5, p1, v0

    add-int/lit8 v5, v5, -0x30

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 700
    add-int/lit8 v0, v0, 0x1

    .line 696
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 712
    :cond_22
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_25

    .line 713
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 715
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-lez v0, :cond_23

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 717
    :cond_23
    if-eqz v6, :cond_24

    .line 718
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 733
    :cond_24
    :goto_d
    return-void

    .line 724
    :cond_25
    if-eqz v6, :cond_24

    .line 725
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 727
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x1

    .line 728
    const v0, -0x3b9ac9ff

    if-ge v2, v0, :cond_26

    const/4 v0, 0x1

    move v1, v0

    :goto_e
    const v0, 0x3b9ac9ff

    if-le v2, v0, :cond_27

    const/4 v0, 0x1

    :goto_f
    or-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 729
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    goto :goto_d

    .line 728
    :cond_26
    const/4 v0, 0x0

    move v1, v0

    goto :goto_e

    :cond_27
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static final allzero([BI)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3768
    .line 3769
    if-gez p1, :cond_0

    move p1, v0

    .line 3772
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 3774
    :goto_0
    if-gt p1, v1, :cond_2

    .line 3775
    aget-byte v2, p0, p1

    if-eqz v2, :cond_1

    .line 3779
    :goto_1
    return v0

    .line 3774
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3779
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private bad([C)V
    .locals 3

    .prologue
    .line 3424
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final byteaddsub([BI[BIIZ)[B
    .locals 10

    .prologue
    .line 3486
    .line 3492
    array-length v7, p0

    .line 3493
    array-length v8, p2

    .line 3494
    add-int/lit8 v4, p1, -0x1

    .line 3495
    add-int/lit8 v3, p3, -0x1

    .line 3497
    if-ge v3, v4, :cond_11

    move v6, v4

    .line 3499
    :goto_0
    const/4 v2, 0x0

    .line 3500
    if-eqz p5, :cond_0

    .line 3501
    add-int/lit8 v0, v6, 0x1

    if-ne v0, v7, :cond_0

    move-object v2, p0

    .line 3503
    :cond_0
    if-nez v2, :cond_1

    .line 3504
    add-int/lit8 v0, v6, 0x1

    new-array v2, v0, [B

    .line 3506
    :cond_1
    const/4 v0, 0x0

    .line 3507
    const/4 v1, 0x1

    if-ne p4, v1, :cond_7

    .line 3508
    const/4 v0, 0x1

    .line 3512
    :cond_2
    :goto_1
    const/4 v1, 0x0

    move v5, v6

    .line 3515
    :goto_2
    if-ltz v5, :cond_b

    .line 3516
    if-ltz v4, :cond_4

    .line 3517
    if-ge v4, v7, :cond_3

    .line 3518
    aget-byte v9, p0, v4

    add-int/2addr v1, v9

    .line 3519
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 3521
    :cond_4
    if-ltz v3, :cond_6

    .line 3522
    if-ge v3, v8, :cond_5

    .line 3523
    if-eqz v0, :cond_9

    .line 3524
    if-lez p4, :cond_8

    .line 3525
    aget-byte v9, p2, v3

    add-int/2addr v1, v9

    .line 3531
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 3534
    :cond_6
    const/16 v9, 0xa

    if-ge v1, v9, :cond_a

    .line 3535
    if-ltz v1, :cond_a

    .line 3537
    int-to-byte v1, v1

    aput-byte v1, v2, v5

    .line 3538
    const/4 v1, 0x0

    .line 3515
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3509
    :cond_7
    const/4 v1, -0x1

    if-ne p4, v1, :cond_2

    .line 3510
    const/4 v0, 0x1

    goto :goto_1

    .line 3527
    :cond_8
    aget-byte v9, p2, v3

    sub-int/2addr v1, v9

    goto :goto_3

    .line 3529
    :cond_9
    aget-byte v9, p2, v3

    mul-int/2addr v9, p4

    add-int/2addr v1, v9

    goto :goto_3

    .line 3542
    :cond_a
    add-int/lit8 v1, v1, 0x5a

    .line 3543
    sget-object v9, Lcom/ibm/icu/math/BigDecimal;->bytedig:[B

    aget-byte v9, v9, v1

    aput-byte v9, v2, v5

    .line 3544
    sget-object v9, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    aget-byte v1, v9, v1

    goto :goto_4

    .line 3548
    :cond_b
    if-nez v1, :cond_d

    move-object v0, v2

    .line 3571
    :cond_c
    :goto_5
    return-object v0

    .line 3554
    :cond_d
    const/4 v0, 0x0

    .line 3555
    if-eqz p5, :cond_e

    .line 3556
    add-int/lit8 v3, v6, 0x2

    array-length v4, p0

    if-ne v3, v4, :cond_e

    move-object v0, p0

    .line 3558
    :cond_e
    if-nez v0, :cond_f

    .line 3559
    add-int/lit8 v0, v6, 0x2

    new-array v0, v0, [B

    .line 3560
    :cond_f
    const/4 v3, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 3562
    const/16 v1, 0xa

    if-ge v6, v1, :cond_10

    .line 3563
    add-int/lit8 v1, v6, 0x1

    .line 3564
    const/4 v3, 0x0

    .line 3565
    :goto_6
    if-lez v1, :cond_c

    .line 3566
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v2, v3

    aput-byte v5, v0, v4

    .line 3565
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3570
    :cond_10
    const/4 v1, 0x0

    const/4 v3, 0x1

    add-int/lit8 v4, v6, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_11
    move v6, v3

    goto/16 :goto_0
.end method

.method private checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
    .locals 3

    .prologue
    .line 3623
    if-nez p2, :cond_1

    .line 3634
    :cond_0
    return-void

    .line 3626
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v0, p2, :cond_2

    .line 3627
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3628
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3629
    :cond_2
    if-eqz p1, :cond_0

    .line 3631
    iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v0, p2, :cond_0

    .line 3632
    iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3633
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .prologue
    .line 3609
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0}, Lcom/ibm/icu/math/BigDecimal;-><init>()V

    .line 3610
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3611
    iget v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3612
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 3613
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v1, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3614
    return-object v0
.end method

.method private static final diginit()[B
    .locals 4

    .prologue
    .line 3583
    const/16 v0, 0xbe

    new-array v1, v0, [B

    .line 3585
    const/4 v0, 0x0

    .line 3586
    :goto_0
    const/16 v2, 0xbd

    if-gt v0, v2, :cond_1

    .line 3587
    add-int/lit8 v2, v0, -0x5a

    .line 3588
    if-ltz v2, :cond_0

    .line 3589
    rem-int/lit8 v3, v2, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 3590
    sget-object v3, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    .line 3586
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3594
    :cond_0
    add-int/lit8 v2, v2, 0x64

    .line 3595
    rem-int/lit8 v3, v2, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 3596
    sget-object v3, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0xa

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    goto :goto_1

    .line 3599
    :cond_1
    return-object v1
.end method

.method private static final extend([BI)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3446
    array-length v0, p0

    if-ne v0, p1, :cond_0

    .line 3451
    :goto_0
    return-object p0

    .line 3448
    :cond_0
    new-array v0, p1, [B

    .line 3449
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 3451
    goto :goto_0
.end method

.method private finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
    .locals 8

    .prologue
    const v7, 0x3b9ac9ff

    const/4 v1, 0x1

    const v6, -0x3b9ac9ff

    const/4 v2, 0x0

    .line 3792
    .line 3798
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-eqz v0, :cond_0

    .line 3799
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v3, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-le v0, v3, :cond_0

    .line 3800
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    .line 3805
    :cond_0
    if-eqz p2, :cond_2

    .line 3806
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v0, :cond_2

    .line 3807
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v0

    .line 3810
    add-int/lit8 v0, v3, -0x1

    .line 3811
    :goto_0
    if-lt v0, v1, :cond_1

    .line 3812
    iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v0

    if-eqz v4, :cond_6

    .line 3818
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 3819
    new-array v0, v3, [B

    .line 3820
    iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3821
    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3825
    :cond_2
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 3829
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    move v3, v2

    .line 3831
    :goto_1
    if-lez v0, :cond_e

    .line 3832
    iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v3

    if-eqz v4, :cond_d

    .line 3835
    if-lez v3, :cond_3

    .line 3837
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    .line 3838
    iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iget-object v5, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3840
    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3844
    :cond_3
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 3845
    if-lez v0, :cond_7

    .line 3846
    iget v3, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-le v0, v3, :cond_4

    .line 3847
    iget v3, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-eqz v3, :cond_4

    .line 3848
    iget v3, p1, Lcom/ibm/icu/math/MathContext;->form:I

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 3849
    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-gt v3, v7, :cond_8

    .line 3890
    :cond_5
    :goto_2
    return-object p0

    .line 3814
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 3815
    iget v4, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3811
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3851
    :cond_7
    const/4 v3, -0x5

    if-ge v0, v3, :cond_8

    .line 3852
    iget v3, p1, Lcom/ibm/icu/math/MathContext;->form:I

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 3854
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 3855
    if-ge v0, v6, :cond_b

    move v3, v1

    :goto_3
    if-le v0, v7, :cond_c

    :goto_4
    or-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 3858
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 3859
    rem-int/lit8 v1, v0, 0x3

    .line 3860
    if-gez v1, :cond_9

    .line 3861
    add-int/lit8 v1, v1, 0x3

    .line 3862
    :cond_9
    sub-int/2addr v0, v1

    .line 3864
    if-lt v0, v6, :cond_a

    .line 3865
    if-le v0, v7, :cond_5

    .line 3868
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exponent Overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move v3, v2

    .line 3855
    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_4

    .line 3831
    :cond_d
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 3877
    :cond_e
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3879
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v0, :cond_10

    .line 3880
    iput v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3889
    :cond_f
    :goto_5
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    goto :goto_2

    .line 3881
    :cond_10
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-lez v0, :cond_11

    .line 3882
    iput v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_5

    .line 3885
    :cond_11
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ge v0, v6, :cond_f

    .line 3886
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exponent Overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private layout()[C
    .locals 10

    .prologue
    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/16 v1, 0x2d

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2960
    .line 2969
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    new-array v4, v0, [C

    .line 2971
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    move v5, v3

    .line 2973
    :goto_0
    if-lez v0, :cond_0

    .line 2974
    iget-object v6, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v6, v5

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 2973
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2978
    :cond_0
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-eqz v0, :cond_9

    .line 2979
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v0, v4

    add-int/lit8 v0, v0, 0xf

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2980
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 2981
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2982
    :cond_1
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    array-length v5, v4

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    .line 2984
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-ne v0, v2, :cond_5

    .line 2985
    aget-char v0, v4, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2986
    array-length v0, v4

    if-le v0, v2, :cond_14

    .line 2987
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v4, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v2, v5

    .line 3008
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 3009
    if-gez v2, :cond_8

    .line 3011
    neg-int v0, v2

    move v9, v1

    move v1, v0

    move v0, v9

    .line 3014
    :goto_2
    const/16 v2, 0x45

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3016
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 3017
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3018
    if-eqz v1, :cond_4

    .line 3019
    invoke-virtual {v6, v3, v1, v0, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3086
    :cond_4
    :goto_3
    return-object v0

    .line 2990
    :cond_5
    rem-int/lit8 v0, v5, 0x3

    .line 2991
    if-gez v0, :cond_6

    .line 2992
    add-int/lit8 v0, v0, 0x3

    .line 2993
    :cond_6
    sub-int v2, v5, v0

    .line 2994
    add-int/lit8 v0, v0, 0x1

    .line 2995
    array-length v5, v4

    if-lt v0, v5, :cond_7

    .line 2996
    array-length v5, v4

    invoke-virtual {v6, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2998
    array-length v4, v4

    sub-int/2addr v0, v4

    .line 2999
    :goto_4
    if-lez v0, :cond_2

    .line 3000
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2999
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3004
    :cond_7
    invoke-virtual {v6, v4, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v7, v4

    sub-int/2addr v7, v0

    invoke-virtual {v5, v4, v0, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3013
    :cond_8
    const/16 v0, 0x2b

    move v1, v2

    goto :goto_2

    .line 3025
    :cond_9
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-nez v0, :cond_b

    .line 3026
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ltz v0, :cond_a

    move-object v0, v4

    .line 3027
    goto :goto_3

    .line 3028
    :cond_a
    array-length v0, v4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 3029
    aput-char v1, v0, v3

    .line 3030
    array-length v1, v4

    invoke-static {v4, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 3035
    :cond_b
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v5, -0x1

    if-ne v0, v5, :cond_d

    move v0, v2

    .line 3040
    :goto_5
    iget v5, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    array-length v6, v4

    add-int/2addr v6, v5

    .line 3042
    if-ge v6, v2, :cond_f

    .line 3043
    add-int/lit8 v2, v0, 0x2

    iget v5, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v2, v5

    .line 3044
    new-array v2, v2, [C

    .line 3045
    if-eqz v0, :cond_c

    .line 3046
    aput-char v1, v2, v3

    .line 3047
    :cond_c
    aput-char v8, v2, v0

    .line 3048
    add-int/lit8 v1, v0, 0x1

    aput-char v7, v2, v1

    .line 3050
    neg-int v1, v6

    .line 3051
    add-int/lit8 v5, v0, 0x2

    .line 3052
    :goto_6
    if-lez v1, :cond_e

    .line 3053
    aput-char v8, v2, v5

    .line 3052
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    move v0, v3

    .line 3035
    goto :goto_5

    .line 3056
    :cond_e
    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v6

    array-length v1, v4

    invoke-static {v4, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 3058
    goto :goto_3

    .line 3061
    :cond_f
    array-length v2, v4

    if-le v6, v2, :cond_12

    .line 3062
    add-int v2, v0, v6

    .line 3063
    new-array v2, v2, [C

    .line 3064
    if-eqz v0, :cond_10

    .line 3065
    aput-char v1, v2, v3

    .line 3066
    :cond_10
    array-length v1, v4

    invoke-static {v4, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3068
    array-length v1, v4

    sub-int v1, v6, v1

    .line 3069
    array-length v3, v4

    add-int/2addr v0, v3

    move v9, v1

    move v1, v0

    move v0, v9

    .line 3070
    :goto_7
    if-lez v0, :cond_11

    .line 3071
    aput-char v8, v2, v1

    .line 3070
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    move-object v0, v2

    .line 3074
    goto/16 :goto_3

    .line 3078
    :cond_12
    add-int/lit8 v2, v0, 0x1

    array-length v5, v4

    add-int/2addr v2, v5

    .line 3079
    new-array v2, v2, [C

    .line 3080
    if-eqz v0, :cond_13

    .line 3081
    aput-char v1, v2, v3

    .line 3082
    :cond_13
    invoke-static {v4, v3, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3083
    add-int v1, v0, v6

    aput-char v7, v2, v1

    .line 3084
    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    array-length v1, v4

    sub-int/2addr v1, v6

    invoke-static {v4, v6, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 3086
    goto/16 :goto_3

    :cond_14
    move v2, v5

    goto/16 :goto_1
.end method

.method private round(II)Lcom/ibm/icu/math/BigDecimal;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 3659
    .line 3663
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 3664
    if-gtz v0, :cond_1

    .line 3757
    :cond_0
    return-object p0

    .line 3667
    :cond_1
    iget v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3668
    iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3669
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3670
    if-lez p1, :cond_4

    .line 3672
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3673
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v1, v6, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3675
    aget-byte v0, v1, p1

    move v5, v3

    .line 3690
    :goto_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_6

    .line 3691
    if-lt v0, v7, :cond_8

    .line 3732
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 3734
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v0, :cond_f

    .line 3736
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3737
    int-to-byte v0, v4

    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3755
    :cond_3
    :goto_2
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const v1, 0x3b9ac9ff

    if-le v0, v1, :cond_0

    .line 3756
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exponent Overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3677
    :cond_4
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3678
    iput-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3680
    if-nez p1, :cond_5

    .line 3681
    aget-byte v0, v1, v6

    move v5, v6

    goto :goto_0

    :cond_5
    move v0, v6

    move v5, v6

    .line 3683
    goto :goto_0

    .line 3693
    :cond_6
    const/4 v2, 0x7

    if-ne p2, v2, :cond_7

    .line 3695
    invoke-static {v1, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3696
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3697
    :cond_7
    if-ne p2, v7, :cond_9

    .line 3698
    if-gt v0, v7, :cond_2

    .line 3700
    if-ne v0, v7, :cond_8

    .line 3701
    add-int/lit8 v0, p1, 0x1

    invoke-static {v1, v0}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_8
    move v4, v6

    goto :goto_1

    .line 3703
    :cond_9
    const/4 v2, 0x6

    if-ne p2, v2, :cond_a

    .line 3704
    if-gt v0, v7, :cond_2

    .line 3706
    if-ne v0, v7, :cond_8

    .line 3707
    add-int/lit8 v0, p1, 0x1

    invoke-static {v1, v0}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3710
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    goto/16 :goto_1

    .line 3713
    :cond_a
    if-ne p2, v3, :cond_b

    move v4, v6

    goto/16 :goto_1

    .line 3715
    :cond_b
    if-nez p2, :cond_c

    .line 3716
    invoke-static {v1, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 3718
    :cond_c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    .line 3719
    if-lez v4, :cond_8

    .line 3720
    invoke-static {v1, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 3722
    :cond_d
    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    .line 3723
    if-gez v4, :cond_8

    .line 3724
    invoke-static {v1, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 3727
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad round value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3740
    :cond_f
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 3741
    neg-int v4, v4

    .line 3742
    :cond_10
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    sget-object v2, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object v2, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v0

    .line 3743
    array-length v1, v0

    iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    if-le v1, v2, :cond_11

    .line 3745
    iget v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3747
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 3750
    :cond_11
    iput-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    goto/16 :goto_2
.end method

.method private round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .prologue
    .line 3642
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    iget v1, p1, Lcom/ibm/icu/math/MathContext;->roundingMode:I

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .prologue
    .line 2903
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->valueOf(JI)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(JI)Lcom/ibm/icu/math/BigDecimal;
    .locals 4

    .prologue
    .line 2925
    .line 2927
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2928
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    .line 2937
    :goto_0
    if-nez p2, :cond_3

    .line 2943
    :goto_1
    return-object v0

    .line 2929
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 2930
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    goto :goto_0

    .line 2931
    :cond_1
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 2932
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->TEN:Lcom/ibm/icu/math/BigDecimal;

    goto :goto_0

    .line 2934
    :cond_2
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V

    goto :goto_0

    .line 2939
    :cond_3
    if-gez p2, :cond_4

    .line 2940
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2941
    :cond_4
    invoke-static {v0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 2942
    neg-int v1, p2

    iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 13

    .prologue
    .line 1015
    .line 1026
    iget-boolean v0, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1027
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1032
    :cond_0
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v0, :cond_1

    .line 1033
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v0, :cond_1

    .line 1034
    invoke-virtual {p1, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 1213
    :goto_0
    return-object v0

    .line 1035
    :cond_1
    iget-byte v0, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v0, :cond_2

    .line 1036
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v0, :cond_2

    .line 1037
    invoke-virtual {p0, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 1040
    :cond_2
    iget v4, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    .line 1041
    if-lez v4, :cond_4

    .line 1042
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v0, v4, :cond_3

    .line 1043
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p0

    .line 1044
    :cond_3
    iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v0, v4, :cond_4

    .line 1045
    invoke-static {p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    .line 1049
    :cond_4
    new-instance v9, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v9}, Lcom/ibm/icu/math/BigDecimal;-><init>()V

    .line 1059
    iget-object v5, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1060
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    .line 1061
    iget-object v3, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1062
    iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    .line 1065
    iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v6, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ne v2, v6, :cond_6

    .line 1067
    iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iput v2, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1132
    :cond_5
    :goto_1
    iget-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v2, :cond_d

    .line 1133
    const/4 v2, 0x1

    iput-byte v2, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1136
    :goto_2
    iget-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    const/4 v2, 0x1

    :goto_3
    iget-byte v4, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v6, -0x1

    if-ne v4, v6, :cond_f

    const/4 v4, 0x1

    :goto_4
    if-ne v2, v4, :cond_10

    .line 1137
    const/4 v4, 0x1

    move-object v2, v3

    move v3, v0

    move-object v0, v5

    .line 1209
    :goto_5
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v0

    iput-object v0, v9, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1213
    const/4 v0, 0x0

    invoke-direct {v9, p2, v0}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 1068
    :cond_6
    iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v6, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-le v2, v6, :cond_a

    .line 1069
    iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v2, v1

    iget v6, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v2, v6

    .line 1074
    add-int v6, v0, v4

    add-int/lit8 v6, v6, 0x1

    if-lt v2, v6, :cond_8

    .line 1075
    if-lez v4, :cond_8

    .line 1077
    iput-object v5, v9, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1078
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iput v0, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1079
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v0, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1080
    if-ge v1, v4, :cond_7

    .line 1081
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, v4}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v0

    iput-object v0, v9, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1082
    iget v0, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int v1, v4, v1

    sub-int/2addr v0, v1

    iput v0, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1084
    :cond_7
    const/4 v0, 0x0

    invoke-direct {v9, p2, v0}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0

    .line 1087
    :cond_8
    iget v6, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iput v6, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1088
    add-int/lit8 v6, v4, 0x1

    if-le v2, v6, :cond_9

    .line 1089
    if-lez v4, :cond_9

    .line 1091
    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    .line 1092
    sub-int/2addr v0, v2

    .line 1093
    iget v6, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v2, v6

    iput v2, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1094
    add-int/lit8 v2, v4, 0x1

    .line 1096
    :cond_9
    if-le v2, v1, :cond_5

    move v1, v2

    .line 1097
    goto :goto_1

    .line 1099
    :cond_a
    iget v2, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v2, v0

    iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v2, v6

    .line 1100
    add-int v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    if-lt v2, v6, :cond_c

    .line 1101
    if-lez v4, :cond_c

    .line 1103
    iput-object v3, v9, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1104
    iget v1, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iput v1, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1105
    iget-byte v1, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v1, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1106
    if-ge v0, v4, :cond_b

    .line 1107
    iget-object v1, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v1, v4}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v1

    iput-object v1, v9, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1108
    iget v1, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int v0, v4, v0

    sub-int v0, v1, v0

    iput v0, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1110
    :cond_b
    const/4 v0, 0x0

    invoke-direct {v9, p2, v0}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0

    .line 1113
    :cond_c
    iget v6, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iput v6, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1114
    add-int/lit8 v6, v4, 0x1

    if-le v2, v6, :cond_1c

    .line 1115
    if-lez v4, :cond_1c

    .line 1117
    sub-int/2addr v2, v4

    add-int/lit8 v6, v2, -0x1

    .line 1118
    sub-int v2, v1, v6

    .line 1119
    iget v1, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v1, v6

    iput v1, v9, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1120
    add-int/lit8 v1, v4, 0x1

    .line 1122
    :goto_6
    if-le v1, v0, :cond_1b

    move v0, v1

    move v1, v2

    .line 1123
    goto/16 :goto_1

    .line 1135
    :cond_d
    iget-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v2, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto/16 :goto_2

    .line 1136
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1140
    :cond_10
    const/4 v4, -0x1

    .line 1147
    iget-byte v2, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v2, :cond_11

    move-object v2, v3

    move v3, v0

    move-object v0, v5

    goto/16 :goto_5

    .line 1149
    :cond_11
    if-ge v1, v0, :cond_12

    const/4 v2, 0x1

    :goto_7
    iget-byte v6, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v6, :cond_13

    const/4 v6, 0x1

    :goto_8
    or-int/2addr v2, v6

    if-eqz v2, :cond_14

    .line 1156
    iget-byte v2, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    move-object v2, v5

    move v12, v1

    move v1, v0

    move-object v0, v3

    move v3, v12

    goto/16 :goto_5

    .line 1149
    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    const/4 v6, 0x0

    goto :goto_8

    .line 1157
    :cond_14
    if-le v1, v0, :cond_15

    move-object v2, v3

    move v3, v0

    move-object v0, v5

    goto/16 :goto_5

    .line 1162
    :cond_15
    const/4 v6, 0x0

    .line 1163
    const/4 v2, 0x0

    .line 1164
    array-length v7, v5

    add-int/lit8 v10, v7, -0x1

    .line 1165
    array-length v7, v3

    add-int/lit8 v11, v7, -0x1

    move v7, v2

    move v8, v6

    .line 1168
    :goto_9
    if-gt v8, v10, :cond_16

    .line 1169
    aget-byte v2, v5, v8

    move v6, v2

    .line 1179
    :goto_a
    if-gt v7, v11, :cond_18

    .line 1180
    aget-byte v2, v3, v7

    .line 1183
    :goto_b
    if-eq v6, v2, :cond_19

    .line 1184
    if-ge v6, v2, :cond_1a

    .line 1191
    iget-byte v2, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, v9, Lcom/ibm/icu/math/BigDecimal;->ind:B

    move-object v2, v5

    move v12, v1

    move v1, v0

    move-object v0, v3

    move v3, v12

    goto/16 :goto_5

    .line 1171
    :cond_16
    if-le v7, v11, :cond_17

    .line 1172
    iget v2, p2, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v2, :cond_1a

    .line 1173
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    goto/16 :goto_0

    .line 1177
    :cond_17
    const/4 v2, 0x0

    move v6, v2

    goto :goto_a

    .line 1182
    :cond_18
    const/4 v2, 0x0

    goto :goto_b

    .line 1196
    :cond_19
    add-int/lit8 v6, v8, 0x1

    .line 1197
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v6

    goto :goto_9

    :cond_1a
    move-object v2, v3

    move v3, v0

    move-object v0, v5

    goto/16 :goto_5

    :cond_1b
    move v1, v2

    goto/16 :goto_1

    :cond_1c
    move v12, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_6
.end method

.method public compareTo(Lcom/ibm/icu/math/BigDecimal;)I
    .locals 1

    .prologue
    .line 1230
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1262
    .line 1266
    iget-boolean v0, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1267
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1269
    :cond_0
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v3, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v4, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ne v3, v4, :cond_3

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_a

    .line 1271
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v0

    .line 1272
    iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-ge v3, v0, :cond_4

    .line 1273
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v2, v0

    .line 1304
    :cond_1
    :goto_2
    return v2

    :cond_2
    move v0, v2

    .line 1269
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    .line 1274
    :cond_4
    iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v3, v0, :cond_5

    .line 1275
    iget-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_2

    .line 1280
    :cond_5
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    if-gt v3, v0, :cond_6

    move v0, v1

    :goto_3
    iget v4, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    if-nez v4, :cond_7

    :goto_4
    or-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v0, v3

    move v1, v2

    .line 1284
    :goto_5
    if-lez v0, :cond_1

    .line 1285
    iget-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v3, v1

    iget-object v4, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v1

    if-ge v3, v4, :cond_8

    .line 1286
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v2, v0

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1280
    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    .line 1287
    :cond_8
    iget-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v3, v1

    iget-object v4, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v1

    if-le v3, v4, :cond_9

    .line 1288
    iget-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_2

    .line 1284
    :cond_9
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1296
    :cond_a
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v2, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ge v0, v2, :cond_b

    .line 1297
    const/4 v2, -0x1

    goto :goto_2

    .line 1298
    :cond_b
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v2, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-le v0, v2, :cond_c

    move v2, v1

    .line 1299
    goto :goto_2

    .line 1302
    :cond_c
    invoke-static {p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 1303
    iget-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1304
    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    iget-byte v2, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 224
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 1949
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1975
    .line 1979
    if-nez p1, :cond_1

    .line 2013
    :cond_0
    :goto_0
    return v2

    .line 1981
    :cond_1
    instance-of v0, p1, Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 1983
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    .line 1984
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v3, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ne v0, v3, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget-object v3, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v4, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ne v3, v4, :cond_3

    move v3, v1

    :goto_2
    and-int/2addr v3, v0

    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    iget-byte v4, p1, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 1991
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    move v3, v2

    .line 1993
    :goto_4
    if-lez v0, :cond_6

    .line 1994
    iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v3

    iget-object v5, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v5, v3

    if-ne v4, v5, :cond_0

    .line 1993
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    move v0, v2

    .line 1986
    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 1999
    :cond_5
    invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v4

    .line 2000
    invoke-direct {p1}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v5

    .line 2001
    array-length v0, v4

    array-length v3, v5

    if-ne v0, v3, :cond_0

    .line 2005
    array-length v0, v4

    move v3, v2

    .line 2007
    :goto_5
    if-lez v0, :cond_6

    .line 2008
    aget-char v6, v4, v3

    aget-char v7, v5, v3

    if-ne v6, v7, :cond_0

    .line 2007
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move v2, v1

    .line 2013
    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 2031
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2380
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 2396
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 2481
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .prologue
    .line 1706
    iget-boolean v0, p1, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1707
    const/4 v0, 0x0

    check-cast v0, Lcom/ibm/icu/math/BigDecimal;

    iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1709
    :cond_0
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->form:I

    if-nez v0, :cond_3

    .line 1710
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-nez v0, :cond_3

    .line 1711
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-gt v0, v1, :cond_2

    .line 1716
    :cond_1
    :goto_0
    return-object p0

    .line 1713
    :cond_2
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-eqz v0, :cond_1

    .line 1716
    :cond_3
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p0

    goto :goto_0
.end method

.method public scale()I
    .locals 1

    .prologue
    .line 2614
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_0

    .line 2615
    const/4 v0, 0x0

    .line 2616
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public setScale(II)Lcom/ibm/icu/math/BigDecimal;
    .locals 4

    .prologue
    .line 2670
    .line 2674
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->scale()I

    move-result v0

    .line 2675
    if-ne v0, p1, :cond_0

    .line 2676
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-nez v1, :cond_0

    .line 2701
    :goto_0
    return-object p0

    .line 2678
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    .line 2679
    if-gt v0, p1, :cond_3

    .line 2681
    if-nez v0, :cond_2

    .line 2682
    iget v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, p1

    .line 2685
    :goto_1
    iget-object v2, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iget-object v3, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v0

    iput-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 2686
    neg-int v0, p1

    iput v0, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    move-object v0, v1

    .line 2700
    :cond_1
    :goto_2
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->form:B

    move-object p0, v0

    .line 2701
    goto :goto_0

    .line 2684
    :cond_2
    sub-int v0, p1, v0

    goto :goto_1

    .line 2688
    :cond_3
    if-gez p1, :cond_4

    .line 2689
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2691
    :cond_4
    iget-object v2, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    sub-int/2addr v0, p1

    sub-int v0, v2, v0

    .line 2692
    invoke-direct {v1, v0, p2}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 2695
    iget v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v2, p1

    if-eq v1, v2, :cond_1

    .line 2696
    iget-object v1, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iget-object v2, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 2697
    iget v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_2
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 2751
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->scale()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2765
    .line 2769
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    iget-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2792
    :goto_2
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 2769
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 2771
    :cond_2
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_3

    .line 2772
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p0

    .line 2773
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    goto :goto_2

    .line 2777
    :cond_3
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 2778
    sget-object p0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    goto :goto_2

    .line 2780
    :cond_4
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p0

    .line 2781
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, v1

    .line 2782
    new-array v1, v0, [B

    .line 2783
    iget-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2785
    iput-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 2786
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 2787
    iput v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2845
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 2859
    .line 2860
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_0

    .line 2866
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2863
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p0

    .line 2864
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_0
.end method
