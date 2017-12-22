.class public Lcom/ibm/icu/impl/Trie2Writable;
.super Lcom/ibm/icu/impl/Trie2;
.source "Trie2Writable.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private UTRIE2_DEBUG:Z

.field private data:[I

.field private dataCapacity:I

.field private firstFreeBlock:I

.field private index1:[I

.field private index2:[I

.field private index2Length:I

.field private index2NullOffset:I

.field private isCompacted:Z

.field private map:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/Trie2Writable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2;-><init>()V

    .line 1188
    const/16 v0, 0x220

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    .line 1189
    const v0, 0x8aa0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    .line 1214
    const v0, 0x8824

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Trie2Writable;->init(II)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/Trie2;)V
    .locals 3

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2;-><init>()V

    .line 1188
    const/16 v0, 0x220

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    .line 1189
    const v0, 0x8aa0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    .line 1214
    const v0, 0x8824

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    .line 146
    iget v0, p1, Lcom/ibm/icu/impl/Trie2;->initialValue:I

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->errorValue:I

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Trie2Writable;->init(II)V

    .line 148
    invoke-virtual {p1}, Lcom/ibm/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    .line 149
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/impl/Trie2Writable;->setRange(Lcom/ibm/icu/impl/Trie2$Range;Z)Lcom/ibm/icu/impl/Trie2Writable;

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method private allocDataBlock(I)I
    .locals 7

    .prologue
    const v1, 0x110480

    const/high16 v0, 0x20000

    const/4 v6, 0x0

    .line 205
    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->firstFreeBlock:I

    if-eqz v2, :cond_0

    .line 207
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->firstFreeBlock:I

    .line 208
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v2, v0, 0x5

    aget v1, v1, v2

    neg-int v1, v1

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->firstFreeBlock:I

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    const/16 v3, 0x20

    invoke-static {v1, p1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v2, v0, 0x5

    aput v6, v1, v2

    .line 239
    return v0

    .line 211
    :cond_0
    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    .line 212
    add-int/lit8 v3, v2, 0x20

    .line 213
    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataCapacity:I

    if-le v3, v4, :cond_1

    .line 218
    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataCapacity:I

    if-ge v4, v0, :cond_2

    .line 230
    :goto_1
    new-array v1, v0, [I

    .line 231
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iput-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    .line 233
    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataCapacity:I

    .line 235
    :cond_1
    iput v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    move v0, v2

    goto :goto_0

    .line 220
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataCapacity:I

    if-ge v0, v1, :cond_3

    move v0, v1

    .line 221
    goto :goto_1

    .line 228
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error in Trie2 creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private allocIndex2Block()I
    .locals 5

    .prologue
    .line 171
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    .line 172
    add-int/lit8 v1, v0, 0x40

    .line 173
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error in Trie2 creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    .line 182
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    const/16 v4, 0x40

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return v0
.end method

.method private compactData()V
    .locals 14

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 745
    const/16 v2, 0xc0

    move v0, v6

    move v3, v6

    .line 746
    :goto_0
    if-ge v3, v2, :cond_0

    .line 747
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    aput v3, v4, v0

    .line 746
    add-int/lit8 v3, v3, 0x20

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    :cond_0
    const/16 v0, 0x40

    move v3, v2

    move v4, v2

    move v2, v0

    move v0, v1

    .line 756
    :cond_1
    :goto_1
    iget v7, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    if-ge v4, v7, :cond_b

    .line 762
    const/16 v7, 0x880

    if-ne v4, v7, :cond_2

    .line 763
    const/16 v2, 0x20

    move v0, v5

    .line 768
    :cond_2
    iget-object v7, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v8, v4, 0x5

    aget v7, v7, v8

    if-gtz v7, :cond_3

    .line 770
    add-int/2addr v4, v2

    .line 773
    goto :goto_1

    .line 777
    :cond_3
    invoke-direct {p0, v3, v4, v2}, Lcom/ibm/icu/impl/Trie2Writable;->findSameDataBlock(III)I

    move-result v8

    .line 778
    if-ltz v8, :cond_5

    .line 780
    shr-int/lit8 v7, v4, 0x5

    move v9, v0

    move v10, v8

    :goto_2
    if-lez v9, :cond_4

    .line 781
    iget-object v11, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v8, v7, 0x1

    aput v10, v11, v7

    .line 782
    add-int/lit8 v10, v10, 0x20

    .line 780
    add-int/lit8 v7, v9, -0x1

    move v9, v7

    move v7, v8

    goto :goto_2

    .line 786
    :cond_4
    add-int/2addr v4, v2

    .line 789
    goto :goto_1

    .line 794
    :cond_5
    add-int/lit8 v7, v2, -0x4

    move v11, v7

    .line 795
    :goto_3
    if-lez v11, :cond_6

    iget-object v7, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    sub-int v8, v3, v11

    invoke-direct {p0, v7, v8, v4, v11}, Lcom/ibm/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v7

    if-nez v7, :cond_6

    .line 796
    add-int/lit8 v7, v11, -0x4

    move v11, v7

    goto :goto_3

    .line 798
    :cond_6
    if-gtz v11, :cond_7

    if-ge v3, v4, :cond_9

    .line 800
    :cond_7
    sub-int v8, v3, v11

    .line 801
    shr-int/lit8 v7, v4, 0x5

    move v9, v0

    move v10, v8

    :goto_4
    if-lez v9, :cond_8

    .line 802
    iget-object v12, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v8, v7, 0x1

    aput v10, v12, v7

    .line 803
    add-int/lit8 v10, v10, 0x20

    .line 801
    add-int/lit8 v7, v9, -0x1

    move v9, v7

    move v7, v8

    goto :goto_4

    .line 807
    :cond_8
    add-int v7, v4, v11

    .line 808
    sub-int v4, v2, v11

    move v13, v4

    move v4, v7

    move v7, v13

    :goto_5
    if-lez v7, :cond_1

    .line 809
    iget-object v10, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v8, v3, 0x1

    iget-object v11, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v9, v4, 0x1

    aget v4, v11, v4

    aput v4, v10, v3

    .line 808
    add-int/lit8 v3, v7, -0x1

    move v7, v3

    move v4, v9

    move v3, v8

    goto :goto_5

    .line 812
    :cond_9
    shr-int/lit8 v3, v4, 0x5

    move v8, v0

    move v13, v3

    move v3, v4

    move v4, v13

    :goto_6
    if-lez v8, :cond_a

    .line 813
    iget-object v9, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v7, v4, 0x1

    aput v3, v9, v4

    .line 814
    add-int/lit8 v4, v3, 0x20

    .line 812
    add-int/lit8 v3, v8, -0x1

    move v8, v3

    move v3, v4

    move v4, v7

    goto :goto_6

    :cond_a
    move v4, v3

    .line 816
    goto/16 :goto_1

    :cond_b
    move v0, v6

    .line 821
    :goto_7
    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    if-ge v0, v2, :cond_d

    .line 822
    const/16 v2, 0x820

    if-ne v0, v2, :cond_c

    .line 824
    add-int/lit16 v0, v0, 0x240

    .line 826
    :cond_c
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    iget-object v7, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aget v7, v7, v0

    shr-int/lit8 v7, v7, 0x5

    aget v4, v4, v7

    aput v4, v2, v0

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 828
    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    shr-int/lit8 v2, v2, 0x5

    aget v0, v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 831
    :goto_8
    and-int/lit8 v0, v3, 0x3

    if-eqz v0, :cond_e

    .line 832
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v0, v3, 0x1

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    aput v4, v2, v3

    move v3, v0

    goto :goto_8

    .line 835
    :cond_e
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v0, :cond_f

    .line 837
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "compacting UTrie2: count of 32-bit data words %d->%d%n"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    .line 838
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    .line 837
    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 841
    :cond_f
    iput v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    .line 842
    return-void
.end method

.method private compactIndex2()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 848
    const/16 v3, 0x820

    move v0, v2

    move v1, v2

    .line 849
    :goto_0
    if-ge v0, v3, :cond_0

    .line 850
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    aput v0, v4, v1

    .line 849
    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v3

    .line 856
    const/16 v1, 0xa60

    :cond_1
    :goto_1
    iget v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    if-ge v1, v3, :cond_6

    .line 864
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Trie2Writable;->findSameIndex2Block(II)I

    move-result v3

    if-ltz v3, :cond_2

    .line 868
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v5, v1, 0x6

    aput v3, v4, v5

    .line 871
    add-int/lit8 v1, v1, 0x40

    .line 874
    goto :goto_1

    .line 879
    :cond_2
    const/16 v3, 0x3f

    .line 880
    :goto_2
    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    sub-int v5, v0, v3

    invoke-direct {p0, v4, v5, v1, v3}, Lcom/ibm/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v4

    if-nez v4, :cond_3

    .line 881
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 883
    :cond_3
    if-gtz v3, :cond_4

    if-ge v0, v1, :cond_5

    .line 885
    :cond_4
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v5, v1, 0x6

    sub-int v6, v0, v3

    aput v6, v4, v5

    .line 888
    add-int/2addr v1, v3

    .line 889
    rsub-int/lit8 v3, v3, 0x40

    move v5, v3

    :goto_3
    if-lez v5, :cond_1

    .line 890
    iget-object v6, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v7, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v7, v1

    aput v1, v6, v0

    .line 889
    add-int/lit8 v0, v5, -0x1

    move v1, v4

    move v5, v0

    move v0, v3

    goto :goto_3

    .line 893
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v3, v1, 0x6

    aput v1, v0, v3

    .line 894
    add-int/lit8 v0, v1, 0x40

    move v1, v0

    .line 895
    goto :goto_1

    :cond_6
    move v1, v2

    .line 900
    :goto_4
    const/16 v3, 0x220

    if-ge v1, v3, :cond_7

    .line 901
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    iget-object v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x6

    aget v4, v4, v5

    aput v4, v3, v1

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 903
    :cond_7
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    iget v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    shr-int/lit8 v3, v3, 0x6

    aget v1, v1, v3

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 911
    :goto_5
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_8

    .line 913
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v1, v0, 0x1

    const v4, 0x3fffc

    aput v4, v3, v0

    move v0, v1

    goto :goto_5

    .line 916
    :cond_8
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v1, :cond_9

    .line 918
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "compacting UTrie2: count of 16-bit index-2 words %d->%d%n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    .line 919
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 918
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 922
    :cond_9
    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    .line 923
    return-void
.end method

.method private compactTrie()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v2, 0x10000

    const/4 v6, 0x1

    .line 931
    const v0, 0x10ffff

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    .line 932
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Trie2Writable;->findHighStart(I)I

    move-result v1

    .line 933
    add-int/lit16 v1, v1, 0x7ff

    and-int/lit16 v1, v1, -0x800

    .line 934
    const/high16 v3, 0x110000

    if-ne v1, v3, :cond_0

    .line 935
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    .line 942
    :cond_0
    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    .line 944
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v1, :cond_1

    .line 945
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "UTrie2: highStart U+%04x  highValue 0x%x  initialValue 0x%x%n"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    .line 946
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 945
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 949
    :cond_1
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    const/high16 v3, 0x110000

    if-ge v1, v3, :cond_2

    .line 951
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    if-gt v1, v2, :cond_4

    move v1, v2

    .line 952
    :goto_0
    const v3, 0x10ffff

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    invoke-virtual {p0, v1, v3, v4, v6}, Lcom/ibm/icu/impl/Trie2Writable;->setRange(IIIZ)Lcom/ibm/icu/impl/Trie2Writable;

    .line 955
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2Writable;->compactData()V

    .line 956
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    if-le v1, v2, :cond_5

    .line 957
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2Writable;->compactIndex2()V

    .line 970
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    aput v0, v1, v2

    .line 971
    :goto_2
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_6

    .line 972
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    aput v2, v0, v1

    goto :goto_2

    .line 951
    :cond_4
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    goto :goto_0

    .line 959
    :cond_5
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v1, :cond_3

    .line 960
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "UTrie2: highStart U+%04x  count of 16-bit index-2 words %d->%d%n"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    .line 961
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x840

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 960
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    .line 975
    :cond_6
    iput-boolean v6, p0, Lcom/ibm/icu/impl/Trie2Writable;->isCompacted:Z

    .line 976
    return-void
.end method

.method private equal_int([IIII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 618
    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 619
    add-int v2, p2, v1

    aget v2, p1, v2

    add-int v3, p3, v1

    aget v3, p1, v3

    if-eq v2, v3, :cond_0

    .line 623
    :goto_1
    return v0

    .line 618
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private fillBlock(IIIIIZ)V
    .locals 3

    .prologue
    .line 365
    add-int v1, p1, p3

    .line 366
    if-eqz p6, :cond_0

    .line 367
    add-int v0, p1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    .line 368
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    aput p4, v2, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    add-int v0, p1, p2

    :goto_1
    if-ge v0, v1, :cond_2

    .line 372
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    aget v2, v2, v0

    if-ne v2, p5, :cond_1

    .line 373
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    aput p4, v2, v0

    .line 371
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_2
    return-void
.end method

.method private findHighStart(I)I
    .locals 9

    .prologue
    const/4 v0, -0x1

    .line 668
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    if-ne p1, v1, :cond_0

    .line 669
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 670
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 675
    :goto_0
    const/high16 v3, 0x110000

    .line 678
    const/16 v2, 0x220

    move v8, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v8

    .line 680
    :goto_1
    if-lez v0, :cond_7

    .line 681
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    .line 682
    if-ne v4, v2, :cond_1

    .line 684
    add-int/lit16 v0, v0, -0x800

    move v3, v5

    .line 685
    goto :goto_1

    :cond_0
    move v1, v0

    .line 673
    goto :goto_0

    .line 688
    :cond_1
    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    if-ne v4, v2, :cond_4

    .line 690
    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    if-eq p1, v2, :cond_3

    .line 724
    :cond_2
    :goto_2
    return v0

    .line 693
    :cond_3
    add-int/lit16 v0, v0, -0x800

    move v2, v4

    move v3, v5

    goto :goto_1

    .line 696
    :cond_4
    const/16 v2, 0x40

    :goto_3
    if-lez v2, :cond_9

    .line 697
    iget-object v6, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v3, v2, -0x1

    add-int v2, v4, v3

    aget v2, v6, v2

    .line 698
    if-ne v2, v1, :cond_5

    .line 700
    add-int/lit8 v0, v0, -0x20

    move v2, v3

    .line 701
    goto :goto_3

    .line 704
    :cond_5
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    if-ne v2, v1, :cond_6

    .line 706
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    if-ne p1, v1, :cond_2

    .line 709
    add-int/lit8 v0, v0, -0x20

    move v1, v2

    move v2, v3

    goto :goto_3

    .line 711
    :cond_6
    const/16 v1, 0x20

    :goto_4
    if-lez v1, :cond_8

    .line 712
    iget-object v6, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v1, v1, -0x1

    add-int v7, v2, v1

    aget v6, v6, v7

    .line 713
    if-ne v6, p1, :cond_2

    .line 716
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 724
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    move v1, v2

    move v2, v3

    goto :goto_3

    :cond_9
    move v2, v4

    move v3, v5

    goto :goto_1
.end method

.method private findSameDataBlock(III)I
    .locals 3

    .prologue
    .line 646
    sub-int v1, p1, p3

    .line 648
    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_1

    .line 649
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/ibm/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    :goto_1
    return v0

    .line 648
    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findSameIndex2Block(II)I
    .locals 4

    .prologue
    .line 631
    add-int/lit8 v1, p1, -0x40

    .line 633
    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_1

    .line 634
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    const/16 v3, 0x40

    invoke-direct {p0, v2, v0, p2, v3}, Lcom/ibm/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    :goto_1
    return v0

    .line 633
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private freeze(Lcom/ibm/icu/impl/Trie2;Lcom/ibm/icu/impl/Trie2$ValueWidth;)V
    .locals 10

    .prologue
    const/high16 v8, 0x10000

    const v5, 0xffff

    const/4 v2, 0x0

    .line 1025
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->isCompacted:Z

    if-nez v0, :cond_0

    .line 1026
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2Writable;->compactTrie()V

    .line 1029
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    if-gt v0, v8, :cond_2

    .line 1030
    const/16 v0, 0x840

    .line 1034
    :goto_0
    sget-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    if-ne p2, v1, :cond_3

    move v4, v0

    .line 1041
    :goto_1
    if-gt v0, v5, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    add-int/2addr v1, v4

    if-gt v1, v5, :cond_1

    add-int/lit16 v1, v4, 0x880

    if-gt v1, v5, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    add-int/2addr v1, v4

    const v3, 0x3fffc

    if-le v1, v3, :cond_4

    .line 1049
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Trie2 data is too large."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    goto :goto_0

    :cond_3
    move v4, v2

    .line 1037
    goto :goto_1

    .line 1054
    :cond_4
    sget-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    if-ne p2, v1, :cond_5

    .line 1055
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    add-int/2addr v1, v0

    .line 1059
    :goto_2
    new-array v1, v1, [C

    iput-object v1, p1, Lcom/ibm/icu/impl/Trie2;->index:[C

    .line 1061
    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->indexLength:I

    .line 1062
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->dataLength:I

    .line 1063
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    if-gt v0, v8, :cond_6

    .line 1064
    iput v5, p1, Lcom/ibm/icu/impl/Trie2;->index2NullOffset:I

    .line 1068
    :goto_3
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->initialValue:I

    .line 1069
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->errorValue:I

    .line 1070
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->highStart:I

    .line 1071
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x4

    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->highValueIndex:I

    .line 1072
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->dataNullOffset:I

    .line 1077
    new-instance v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Trie2$UTrie2Header;-><init>()V

    iput-object v0, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    .line 1078
    iget-object v0, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    const v1, 0x54726932

    iput v1, v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 1079
    iget-object v1, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    sget-object v0, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    if-ne p2, v0, :cond_7

    move v0, v2

    :goto_4
    iput v0, v1, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->options:I

    .line 1080
    iget-object v0, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->indexLength:I

    iput v1, v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->indexLength:I

    .line 1081
    iget-object v0, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->dataLength:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    .line 1082
    iget-object v0, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->index2NullOffset:I

    iput v1, v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    .line 1083
    iget-object v0, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->dataNullOffset:I

    iput v1, v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    .line 1084
    iget-object v0, p1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->highStart:I

    shr-int/lit8 v1, v1, 0xb

    iput v1, v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    move v0, v2

    move v3, v2

    .line 1090
    :goto_5
    const/16 v1, 0x820

    if-ge v3, v1, :cond_8

    .line 1091
    iget-object v5, p1, Lcom/ibm/icu/impl/Trie2;->index:[C

    add-int/lit8 v1, v0, 0x1

    iget-object v6, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aget v6, v6, v3

    add-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x2

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 1090
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_5

    .line 1057
    :cond_5
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    new-array v1, v1, [I

    iput-object v1, p1, Lcom/ibm/icu/impl/Trie2;->data32:[I

    move v1, v0

    goto/16 :goto_2

    .line 1066
    :cond_6
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->index2NullOffset:I

    goto :goto_3

    .line 1079
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 1093
    :cond_8
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v1, :cond_9

    .line 1094
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n\nIndex2 for BMP limit is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    move v1, v2

    .line 1098
    :goto_6
    const/4 v3, 0x2

    if-ge v1, v3, :cond_12

    .line 1099
    iget-object v5, p1, Lcom/ibm/icu/impl/Trie2;->index:[C

    add-int/lit8 v3, v0, 0x1

    add-int/lit16 v6, v4, 0x80

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 1098
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_6

    .line 1101
    :goto_7
    const/16 v1, 0x20

    if-ge v3, v1, :cond_a

    .line 1102
    iget-object v5, p1, Lcom/ibm/icu/impl/Trie2;->index:[C

    add-int/lit8 v1, v0, 0x1

    iget-object v6, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    shl-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 1101
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_7

    .line 1104
    :cond_a
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v1, :cond_b

    .line 1105
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index2 for UTF-8 2byte values limit is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1108
    :cond_b
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    if-le v1, v8, :cond_f

    .line 1109
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    sub-int/2addr v1, v8

    shr-int/lit8 v5, v1, 0xb

    .line 1110
    add-int/lit16 v6, v5, 0x840

    move v3, v2

    .line 1114
    :goto_8
    if-ge v3, v5, :cond_c

    .line 1116
    iget-object v7, p1, Lcom/ibm/icu/impl/Trie2;->index:[C

    add-int/lit8 v1, v0, 0x1

    iget-object v8, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    add-int/lit8 v9, v3, 0x20

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x0

    int-to-char v8, v8

    aput-char v8, v7, v0

    .line 1114
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_8

    .line 1118
    :cond_c
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v1, :cond_d

    .line 1119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index 1 for supplementals, limit is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    move v3, v2

    .line 1126
    :goto_9
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    sub-int/2addr v1, v6

    if-ge v3, v1, :cond_e

    .line 1127
    iget-object v5, p1, Lcom/ibm/icu/impl/Trie2;->index:[C

    add-int/lit8 v1, v0, 0x1

    iget-object v7, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    add-int v8, v6, v3

    aget v7, v7, v8

    add-int/2addr v7, v4

    shr-int/lit8 v7, v7, 0x2

    int-to-char v7, v7

    aput-char v7, v5, v0

    .line 1126
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_9

    .line 1129
    :cond_e
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v1, :cond_f

    .line 1130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index 2 for supplementals, limit is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1135
    :cond_f
    sget-object v1, Lcom/ibm/icu/impl/Trie2Writable$1;->$SwitchMap$com$ibm$icu$impl$Trie2$ValueWidth:[I

    invoke-virtual {p2}, Lcom/ibm/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 1152
    :cond_10
    return-void

    .line 1138
    :pswitch_0
    sget-boolean v1, Lcom/ibm/icu/impl/Trie2Writable;->$assertionsDisabled:Z

    if-nez v1, :cond_11

    if-eq v0, v4, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1139
    :cond_11
    iput v0, p1, Lcom/ibm/icu/impl/Trie2;->data16:I

    .line 1140
    :goto_a
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    if-ge v2, v1, :cond_10

    .line 1141
    iget-object v3, p1, Lcom/ibm/icu/impl/Trie2;->index:[C

    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    aget v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v3, v0

    .line 1140
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_a

    .line 1146
    :goto_b
    :pswitch_1
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    if-ge v2, v0, :cond_10

    .line 1147
    iget-object v0, p1, Lcom/ibm/icu/impl/Trie2;->data32:[I

    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1146
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    move v3, v1

    goto/16 :goto_7

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private get(IZ)I
    .locals 3

    .prologue
    const v2, 0xdc00

    const v1, 0xd800

    .line 582
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    if-lt p1, v0, :cond_1

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-eqz p2, :cond_1

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    add-int/lit8 v1, v1, -0x4

    aget v0, v0, v1

    .line 594
    :goto_0
    return v0

    .line 586
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    if-eqz p2, :cond_2

    .line 587
    shr-int/lit8 v0, p1, 0x5

    add-int/lit16 v0, v0, 0x140

    .line 593
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aget v0, v1, v0

    .line 594
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v0, v2

    aget v0, v1, v0

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    shr-int/lit8 v1, p1, 0xb

    aget v0, v0, v1

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private getDataBlock(IZ)I
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    move-result v0

    .line 276
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v0

    .line 277
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aget v0, v0, v1

    .line 278
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Trie2Writable;->allocDataBlock(I)I

    move-result v0

    .line 284
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    goto :goto_0
.end method

.method private getIndex2Block(IZ)I
    .locals 3

    .prologue
    .line 189
    const v0, 0xd800

    if-lt p1, v0, :cond_1

    const v0, 0xdc00

    if-ge p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 190
    const/16 v0, 0x800

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    shr-int/lit8 v1, p1, 0xb

    .line 194
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    aget v0, v0, v1

    .line 195
    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    if-ne v0, v2, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2Writable;->allocIndex2Block()I

    move-result v0

    .line 197
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    aput v0, v2, v1

    goto :goto_0
.end method

.method private init(II)V
    .locals 10

    .prologue
    const/16 v9, 0xa60

    const/16 v8, 0x100

    const/16 v0, 0x80

    const/16 v5, 0xc0

    const/4 v1, 0x0

    .line 34
    iput p1, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    .line 35
    iput p2, p0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    .line 36
    const/high16 v2, 0x110000

    iput v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    .line 38
    const/16 v2, 0x4000

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    .line 39
    const/16 v2, 0x4000

    iput v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataCapacity:I

    .line 40
    iput p1, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    .line 41
    iput p2, p0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    .line 42
    const/high16 v2, 0x110000

    iput v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    .line 43
    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->firstFreeBlock:I

    .line 44
    iput-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->isCompacted:Z

    move v2, v1

    .line 53
    :goto_0
    if-ge v2, v0, :cond_0

    .line 54
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    aput v4, v3, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    :goto_1
    if-ge v2, v5, :cond_1

    .line 57
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    aput v4, v3, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v5

    .line 59
    :goto_2
    if-ge v2, v8, :cond_2

    .line 60
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    aput v4, v3, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 62
    :cond_2
    iput v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 63
    iput v8, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    move v2, v1

    move v3, v1

    .line 66
    :goto_3
    if-ge v2, v0, :cond_b

    .line 67
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aput v2, v4, v3

    .line 68
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    const/4 v6, 0x1

    aput v6, v4, v3

    .line 66
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x20

    goto :goto_3

    .line 72
    :goto_4
    if-ge v2, v5, :cond_3

    .line 73
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    aput v1, v3, v4

    .line 72
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, 0x20

    move v4, v3

    goto :goto_4

    .line 82
    :cond_3
    iget-object v6, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v3, v4, 0x1

    const v7, 0x881d

    aput v7, v6, v4

    .line 87
    add-int/lit8 v2, v2, 0x20

    .line 88
    :goto_5
    if-ge v2, v8, :cond_4

    .line 89
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    aput v1, v4, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x20

    goto :goto_5

    .line 96
    :cond_4
    const/4 v2, 0x4

    :goto_6
    const/16 v3, 0x820

    if-ge v2, v3, :cond_5

    .line 97
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aput v5, v3, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    move v2, v1

    .line 104
    :goto_7
    const/16 v3, 0x240

    if-ge v2, v3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    add-int/lit16 v4, v2, 0x820

    const/4 v6, -0x1

    aput v6, v3, v4

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    move v2, v1

    .line 109
    :goto_8
    const/16 v3, 0x40

    if-ge v2, v3, :cond_7

    .line 110
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    add-int/lit16 v4, v2, 0xa60

    aput v5, v3, v4

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 112
    :cond_7
    iput v9, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 113
    const/16 v2, 0xaa0

    iput v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    move v2, v1

    .line 117
    :goto_9
    const/16 v3, 0x20

    if-ge v1, v3, :cond_8

    .line 120
    iget-object v3, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    aput v2, v3, v1

    .line 118
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v2, 0x40

    move v2, v1

    move v1, v3

    goto :goto_9

    .line 124
    :cond_8
    :goto_a
    const/16 v2, 0x220

    if-ge v1, v2, :cond_9

    .line 125
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    aput v9, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 133
    :cond_9
    :goto_b
    const/16 v1, 0x800

    if-ge v0, v1, :cond_a

    .line 134
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 133
    add-int/lit8 v0, v0, 0x20

    goto :goto_b

    .line 137
    :cond_a
    return-void

    :cond_b
    move v4, v3

    goto :goto_4
.end method

.method private isInNullBlock(IZ)Z
    .locals 2

    .prologue
    .line 157
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 158
    shr-int/lit8 v0, p1, 0x5

    add-int/lit16 v0, v0, 0x140

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aget v0, v1, v0

    .line 165
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    shr-int/lit8 v1, p1, 0xb

    aget v0, v0, v1

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isWritableBlock(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 252
    iget v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseDataBlock(I)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v1, p1, 0x5

    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->firstFreeBlock:I

    neg-int v2, v2

    aput v2, v0, v1

    .line 247
    iput p1, p0, Lcom/ibm/icu/impl/Trie2Writable;->firstFreeBlock:I

    .line 248
    return-void
.end method

.method private set(IZI)Lcom/ibm/icu/impl/Trie2Writable;
    .locals 3

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->isCompacted:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2Writable;->uncompact()V

    .line 307
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v0, v2

    aput p3, v1, v0

    .line 309
    return-object p0
.end method

.method private setIndex2Entry(II)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v1, p2, 0x5

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aget v0, v0, p1

    .line 259
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v2, v0, 0x5

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    if-nez v3, :cond_0

    .line 260
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Trie2Writable;->releaseDataBlock(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aput p2, v0, p1

    .line 263
    return-void
.end method

.method private uncompact()V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/ibm/icu/impl/Trie2Writable;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/Trie2Writable;-><init>(Lcom/ibm/icu/impl/Trie2;)V

    .line 328
    iget-object v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    iput-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index1:[I

    .line 329
    iget-object v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    iput-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    .line 330
    iget-object v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    iput-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    .line 331
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2Length:I

    .line 332
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->dataCapacity:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataCapacity:I

    .line 333
    iget-boolean v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->isCompacted:Z

    iput-boolean v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->isCompacted:Z

    .line 336
    iget-object v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    iput-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    .line 337
    iget-object v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->index:[C

    iput-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index:[C

    .line 338
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->data16:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data16:I

    .line 339
    iget-object v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->data32:[I

    iput-object v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->data32:[I

    .line 340
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->indexLength:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->indexLength:I

    .line 341
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataLength:I

    .line 342
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 343
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    .line 344
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    .line 345
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highStart:I

    .line 346
    iget v1, v0, Lcom/ibm/icu/impl/Trie2Writable;->highValueIndex:I

    iput v1, p0, Lcom/ibm/icu/impl/Trie2Writable;->highValueIndex:I

    .line 347
    iget v0, v0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 348
    return-void
.end method

.method private writeBlock(II)V
    .locals 3

    .prologue
    .line 352
    add-int/lit8 v1, p1, 0x20

    .line 353
    :goto_0
    if-ge p1, v1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v0, p1, 0x1

    aput p2, v2, p1

    move p1, v0

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1

    .prologue
    .line 571
    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    .line 572
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->errorValue:I

    .line 574
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->get(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public getFromU16SingleLead(C)I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->get(IZ)I

    move-result v0

    return v0
.end method

.method public set(II)Lcom/ibm/icu/impl/Trie2Writable;
    .locals 2

    .prologue
    .line 294
    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid code point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/Trie2Writable;->set(IZI)Lcom/ibm/icu/impl/Trie2Writable;

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->fHash:I

    .line 299
    return-object p0
.end method

.method public setForLeadSurrogateCodeUnit(CI)Lcom/ibm/icu/impl/Trie2Writable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 557
    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->fHash:I

    .line 558
    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/Trie2Writable;->set(IZI)Lcom/ibm/icu/impl/Trie2Writable;

    .line 559
    return-object p0
.end method

.method public setRange(IIIZ)Lcom/ibm/icu/impl/Trie2Writable;
    .locals 12

    .prologue
    .line 399
    const v0, 0x10ffff

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    if-le p1, p2, :cond_1

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid code point range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    if-nez p4, :cond_3

    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    if-ne p3, v0, :cond_3

    .line 508
    :cond_2
    :goto_0
    return-object p0

    .line 405
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->fHash:I

    .line 406
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->isCompacted:Z

    if-eqz v0, :cond_4

    .line 407
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2Writable;->uncompact()V

    .line 410
    :cond_4
    add-int/lit8 v8, p2, 0x1

    .line 411
    and-int/lit8 v0, p1, 0x1f

    if-eqz v0, :cond_5

    .line 415
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v1

    .line 417
    add-int/lit8 v0, p1, 0x20

    and-int/lit8 v7, v0, -0x20

    .line 418
    if-gt v7, v8, :cond_6

    .line 419
    and-int/lit8 v2, p1, 0x1f

    const/16 v3, 0x20

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    move-object v0, p0

    move v4, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    move p1, v7

    .line 430
    :cond_5
    and-int/lit8 v9, v8, 0x1f

    .line 433
    and-int/lit8 v10, v8, -0x20

    .line 436
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    if-ne p3, v0, :cond_7

    .line 437
    iget v7, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 442
    :goto_1
    if-ge p1, v10, :cond_d

    .line 444
    const/4 v8, 0x0

    .line 446
    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    if-ne p3, v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->isInNullBlock(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 447
    add-int/lit8 p1, p1, 0x20

    .line 448
    goto :goto_1

    .line 423
    :cond_6
    and-int/lit8 v2, p1, 0x1f

    and-int/lit8 v3, v8, 0x1f

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    move-object v0, p0

    move v4, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    goto :goto_0

    .line 439
    :cond_7
    const/4 v7, -0x1

    goto :goto_1

    .line 452
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    move-result v0

    .line 453
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int v11, v0, v1

    .line 454
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->index2:[I

    aget v1, v0, v11

    .line 455
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 457
    if-eqz p4, :cond_9

    const/16 v0, 0x880

    if-lt v1, v0, :cond_9

    .line 463
    const/4 v0, 0x1

    .line 489
    :goto_2
    if-eqz v0, :cond_e

    .line 490
    if-ltz v7, :cond_c

    .line 491
    invoke-direct {p0, v11, v7}, Lcom/ibm/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    move v0, v7

    .line 499
    :goto_3
    add-int/lit8 p1, p1, 0x20

    move v7, v0

    .line 500
    goto :goto_1

    .line 466
    :cond_9
    const/4 v2, 0x0

    const/16 v3, 0x20

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    move-object v0, p0

    move v4, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    move v0, v8

    goto :goto_2

    .line 470
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->data:[I

    aget v0, v0, v1

    if-eq v0, p3, :cond_f

    if-nez p4, :cond_b

    iget v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->dataNullOffset:I

    if-ne v1, v0, :cond_f

    .line 487
    :cond_b
    const/4 v0, 0x1

    goto :goto_2

    .line 494
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v0

    .line 495
    invoke-direct {p0, v0, p3}, Lcom/ibm/icu/impl/Trie2Writable;->writeBlock(II)V

    goto :goto_3

    .line 502
    :cond_d
    if-lez v9, :cond_2

    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v1

    .line 505
    const/4 v2, 0x0

    iget v5, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    move-object v0, p0

    move v3, v9

    move v4, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    goto/16 :goto_0

    :cond_e
    move v0, v7

    goto :goto_3

    :cond_f
    move v0, v8

    goto :goto_2
.end method

.method public setRange(Lcom/ibm/icu/impl/Trie2$Range;Z)Lcom/ibm/icu/impl/Trie2Writable;
    .locals 3

    .prologue
    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Trie2Writable;->fHash:I

    .line 528
    iget-boolean v0, p1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v0, :cond_2

    .line 529
    iget v0, p1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    :goto_0
    iget v1, p1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    if-gt v0, v1, :cond_3

    .line 530
    if-nez p2, :cond_0

    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Trie2Writable;->getFromU16SingleLead(C)I

    move-result v1

    iget v2, p0, Lcom/ibm/icu/impl/Trie2Writable;->initialValue:I

    if-ne v1, v2, :cond_1

    .line 531
    :cond_0
    int-to-char v1, v0

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Lcom/ibm/icu/impl/Trie2Writable;

    .line 529
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_2
    iget v0, p1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v1, p1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/ibm/icu/impl/Trie2Writable;->setRange(IIIZ)Lcom/ibm/icu/impl/Trie2Writable;

    .line 537
    :cond_3
    return-object p0
.end method

.method public toTrie2_32()Lcom/ibm/icu/impl/Trie2_32;
    .locals 2

    .prologue
    .line 996
    new-instance v0, Lcom/ibm/icu/impl/Trie2_32;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Trie2_32;-><init>()V

    .line 997
    sget-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_32:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Trie2Writable;->freeze(Lcom/ibm/icu/impl/Trie2;Lcom/ibm/icu/impl/Trie2$ValueWidth;)V

    .line 998
    return-object v0
.end method
