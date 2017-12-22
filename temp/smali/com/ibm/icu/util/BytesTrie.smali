.class public final Lcom/ibm/icu/util/BytesTrie;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/ibm/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;


# instance fields
.field private bytes_:[B

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/ibm/icu/util/BytesTrie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/util/BytesTrie;->$assertionsDisabled:Z

    .line 782
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/util/BytesTrie$Result;

    sget-object v3, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v3, v0, v2

    sget-object v2, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    .line 47
    iput p2, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    iput p2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 49
    return-void
.end method

.method static synthetic access$1100(II)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200([BI)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->skipDelta([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300([BI)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900([BII)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/BytesTrie;->readValue([BII)I

    move-result v0

    return v0
.end method

.method private branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 6

    .prologue
    const/16 v5, 0x7e

    const/16 v4, 0x20

    .line 787
    if-nez p2, :cond_0

    .line 788
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, v1, p1

    and-int/lit16 p2, v1, 0xff

    move p1, v0

    .line 790
    :cond_0
    add-int/lit8 v0, p2, 0x1

    move v1, p1

    .line 793
    :goto_0
    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    .line 794
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    if-ge p3, v1, :cond_1

    .line 795
    shr-int/lit8 v0, v0, 0x1

    .line 796
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    invoke-static {v1, v3}, Lcom/ibm/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v1

    goto :goto_0

    .line 798
    :cond_1
    shr-int/lit8 v1, v0, 0x1

    sub-int/2addr v0, v1

    .line 799
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    invoke-static {v1, v3}, Lcom/ibm/icu/util/BytesTrie;->skipDelta([BI)I

    move-result v1

    goto :goto_0

    .line 806
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p3, v1, :cond_a

    .line 808
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 809
    sget-boolean v1, Lcom/ibm/icu/util/BytesTrie;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-ge v0, v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 810
    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    .line 812
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    move v1, v2

    .line 838
    :goto_1
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 850
    :goto_2
    return-object v0

    .line 815
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 817
    shr-int/lit8 v0, v0, 0x1

    .line 819
    const/16 v2, 0x51

    if-ge v0, v2, :cond_5

    .line 820
    add-int/lit8 v0, v0, -0x10

    .line 834
    :goto_3
    add-int/2addr v1, v0

    .line 835
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 836
    if-lt v0, v4, :cond_9

    sget-object v2, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    goto :goto_1

    .line 821
    :cond_5
    const/16 v2, 0x6c

    if-ge v0, v2, :cond_6

    .line 822
    add-int/lit8 v0, v0, -0x51

    shl-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    move v1, v2

    goto :goto_3

    .line 823
    :cond_6
    if-ge v0, v5, :cond_7

    .line 824
    add-int/lit8 v0, v0, -0x6c

    shl-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 825
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 826
    :cond_7
    if-ne v0, v5, :cond_8

    .line 827
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 828
    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 830
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 831
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_3

    .line 836
    :cond_9
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    goto/16 :goto_1

    .line 841
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 842
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    invoke-static {v1, v2}, Lcom/ibm/icu/util/BytesTrie;->skipValue([BI)I

    move-result v1

    .line 843
    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    .line 844
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-ne p3, v0, :cond_c

    .line 845
    iput v2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 846
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 847
    if-lt v0, v4, :cond_b

    sget-object v1, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto/16 :goto_2

    :cond_b
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    goto/16 :goto_2

    .line 849
    :cond_c
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 850
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    goto/16 :goto_2
.end method

.method private static jumpByDelta([BI)I
    .locals 4

    .prologue
    const/16 v3, 0xfe

    .line 750
    add-int/lit8 v1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 751
    const/16 v2, 0xc0

    if-ge v0, v2, :cond_0

    .line 765
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 753
    :cond_0
    const/16 v2, 0xf0

    if-ge v0, v2, :cond_1

    .line 754
    add-int/lit16 v0, v0, -0xc0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    .line 755
    :cond_1
    if-ge v0, v3, :cond_2

    .line 756
    add-int/lit16 v0, v0, -0xf0

    shl-int/lit8 v0, v0, 0x10

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 757
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 758
    :cond_2
    if-ne v0, v3, :cond_3

    .line 759
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 760
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 762
    :cond_3
    aget-byte v0, p0, v1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 763
    add-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method private nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 858
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 859
    invoke-direct {p0, v1, v0, p2}, Lcom/ibm/icu/util/BytesTrie;->branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 883
    :goto_0
    return-object v0

    .line 860
    :cond_1
    if-ge v0, v4, :cond_3

    .line 862
    add-int/lit8 v0, v0, -0x10

    .line 863
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p2, v1, :cond_4

    .line 864
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 865
    iput v3, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 866
    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v4, :cond_2

    sget-object v1, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    goto :goto_0

    .line 872
    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_5

    .line 882
    :cond_4
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 883
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    goto :goto_0

    .line 877
    :cond_5
    invoke-static {v1, v0}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    .line 879
    sget-boolean v0, Lcom/ibm/icu/util/BytesTrie;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static readValue([BII)I
    .locals 2

    .prologue
    const/16 v1, 0x7e

    .line 717
    const/16 v0, 0x51

    if-ge p2, v0, :cond_0

    .line 718
    add-int/lit8 v0, p2, -0x10

    .line 728
    :goto_0
    return v0

    .line 719
    :cond_0
    const/16 v0, 0x6c

    if-ge p2, v0, :cond_1

    .line 720
    add-int/lit8 v0, p2, -0x51

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    .line 721
    :cond_1
    if-ge p2, v1, :cond_2

    .line 722
    add-int/lit8 v0, p2, -0x6c

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    .line 723
    :cond_2
    if-ne p2, v1, :cond_3

    .line 724
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    .line 726
    :cond_3
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private static skipDelta([BI)I
    .locals 3

    .prologue
    .line 769
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 770
    const/16 v2, 0xc0

    if-lt v1, v2, :cond_0

    .line 771
    const/16 v2, 0xf0

    if-ge v1, v2, :cond_1

    .line 772
    add-int/lit8 v0, v0, 0x1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    const/16 v2, 0xfe

    if-ge v1, v2, :cond_2

    .line 774
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 776
    :cond_2
    and-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static skipValue(II)I
    .locals 1

    .prologue
    .line 731
    sget-boolean v0, Lcom/ibm/icu/util/BytesTrie;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 732
    :cond_0
    const/16 v0, 0xa2

    if-lt p1, v0, :cond_1

    .line 733
    const/16 v0, 0xd8

    if-ge p1, v0, :cond_2

    .line 734
    add-int/lit8 p0, p0, 0x1

    .line 741
    :cond_1
    :goto_0
    return p0

    .line 735
    :cond_2
    const/16 v0, 0xfc

    if-ge p1, v0, :cond_3

    .line 736
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 738
    :cond_3
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/2addr p0, v0

    goto :goto_0
.end method

.method private static skipValue([BI)I
    .locals 2

    .prologue
    .line 744
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 745
    invoke-static {v0, v1}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    return v0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 711
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    .prologue
    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 216
    if-gez p1, :cond_0

    .line 217
    add-int/lit16 p1, p1, 0x100

    .line 219
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/BytesTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 3

    .prologue
    .line 356
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 357
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 358
    sget-boolean v1, Lcom/ibm/icu/util/BytesTrie;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    shr-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/BytesTrie;->readValue([BII)I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/ibm/icu/util/BytesTrie$Iterator;
    .locals 6

    .prologue
    .line 428
    new-instance v0, Lcom/ibm/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/BytesTrie$Iterator;-><init>([BIIILcom/ibm/icu/util/BytesTrie$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->iterator()Lcom/ibm/icu/util/BytesTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    .prologue
    .line 230
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 231
    if-gez v0, :cond_0

    .line 232
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 251
    :goto_0
    return-object v0

    .line 234
    :cond_0
    if-gez p1, :cond_1

    .line 235
    add-int/lit16 p1, p1, 0x100

    .line 237
    :cond_1
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 238
    if-ltz v1, :cond_4

    .line 240
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-ne p1, v0, :cond_3

    .line 241
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 242
    iput v3, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 244
    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    sget-object v1, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    goto :goto_0

    .line 247
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 248
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    goto :goto_0

    .line 251
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/BytesTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    goto :goto_0
.end method
