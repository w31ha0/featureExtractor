.class public final Lcom/ibm/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

.field public static final dummyStringBuilder:Ljava/lang/StringBuilder;

.field private static final flagsOffset:[B


# instance fields
.field private exceptions:Ljava/lang/String;

.field private indexes:[I

.field private trie:Lcom/ibm/icu/impl/Trie2_16;

.field private unfold:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1456
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCaseProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCaseProps;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    return-void

    .line 1457
    :catch_0
    move-exception v0

    .line 1458
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x5t
        0x6t
        0x6t
        0x7t
        0x6t
        0x7t
        0x7t
        0x8t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "ucase.icu"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    .line 44
    return-void
.end method

.method public static final getCaseLocale(Lcom/ibm/icu/util/ULocale;)I
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final getCaseLocale(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 630
    const-string/jumbo v5, "en"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x74

    if-le v5, v6, :cond_2

    :cond_0
    move v0, v4

    .line 652
    :cond_1
    :goto_0
    return v0

    .line 632
    :cond_2
    const-string/jumbo v5, "tr"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "az"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v0, v3

    .line 633
    goto :goto_0

    .line 634
    :cond_4
    const-string/jumbo v3, "el"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 636
    const-string/jumbo v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 637
    goto :goto_0

    .line 638
    :cond_5
    const-string/jumbo v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    .line 639
    goto :goto_0

    .line 641
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v1, :cond_a

    .line 642
    const-string/jumbo v5, "tur"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "aze"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v0, v3

    .line 643
    goto :goto_0

    .line 644
    :cond_8
    const-string/jumbo v3, "ell"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 646
    const-string/jumbo v0, "lit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 647
    goto :goto_0

    .line 648
    :cond_9
    const-string/jumbo v0, "nld"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    .line 649
    goto :goto_0

    :cond_a
    move v0, v4

    .line 652
    goto :goto_0
.end method

.method private static final getDelta(I)I
    .locals 1

    .prologue
    .line 1392
    int-to-short v0, p0

    shr-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private static final getExceptionsOffset(I)I
    .locals 1

    .prologue
    .line 115
    shr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method private final getSlotValue(III)I
    .locals 3

    .prologue
    .line 174
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 175
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    add-int/2addr v0, p3

    .line 176
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 178
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 179
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private final getSlotValueAndOffset(III)J
    .locals 6

    .prologue
    .line 160
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    add-int v2, p3, v0

    .line 162
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    .line 168
    :goto_0
    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 164
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 165
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    .line 166
    const/16 v3, 0x10

    shl-long/2addr v0, v3

    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v4, v3

    or-long/2addr v0, v4

    goto :goto_0
.end method

.method private static final getTypeAndIgnorableFromProps(I)I
    .locals 1

    .prologue
    .line 1372
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method private static final getTypeFromProps(I)I
    .locals 1

    .prologue
    .line 1367
    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method private static final hasSlot(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 659
    if-nez p1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 663
    :cond_1
    invoke-interface {p1, p2}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_2
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_0

    .line 664
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v1

    .line 665
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    .line 667
    if-eqz v1, :cond_0

    .line 668
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 780
    if-nez p1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_2
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_0

    .line 785
    const/16 v3, 0x307

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 786
    goto :goto_0

    .line 788
    :cond_3
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    .line 789
    const/16 v3, 0x60

    if-eq v2, v3, :cond_2

    goto :goto_0
.end method

.method private final isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 759
    if-nez p1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v0

    .line 763
    :cond_1
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_2
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_0

    .line 764
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    .line 765
    const/16 v3, 0x40

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 766
    goto :goto_0

    .line 767
    :cond_3
    const/16 v3, 0x60

    if-eq v2, v3, :cond_2

    goto :goto_0
.end method

.method private final isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 682
    if-nez p1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_2
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_0

    .line 687
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    .line 688
    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 689
    const/4 v0, 0x1

    goto :goto_0

    .line 690
    :cond_3
    const/16 v2, 0x60

    if-eq v1, v2, :cond_2

    goto :goto_0
.end method

.method private final isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 737
    if-nez p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_2
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_0

    .line 742
    const/16 v2, 0x49

    if-ne v1, v2, :cond_3

    .line 743
    const/4 v0, 0x1

    goto :goto_0

    .line 745
    :cond_3
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    .line 746
    const/16 v2, 0x60

    if-eq v1, v2, :cond_2

    goto :goto_0
.end method

.method private static final propsHasException(I)Z
    .locals 1

    .prologue
    .line 119
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final readData(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    const v0, 0x63415345

    new-instance v1, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCaseProps$1;)V

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 52
    const/16 v0, 0x10

    if-ge v1, v0, :cond_0

    .line 53
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "indexes[0] too small in ucase.icu"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    .line 57
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    aput v1, v0, v4

    .line 58
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 59
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 65
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v1

    .line 66
    if-le v1, v0, :cond_2

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ucase.icu: not enough bytes for the trie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 73
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 74
    if-lez v0, :cond_3

    .line 75
    invoke-static {p1, v0, v4}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    .line 80
    if-lez v0, :cond_4

    .line 81
    invoke-static {p1, v0, v4}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    .line 83
    :cond_4
    return-void
.end method

.method private static final slotOffset(II)B
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    aget-byte v0, v0, v1

    return v0
.end method

.method private final strcmpMax(Ljava/lang/String;II)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 368
    sub-int v5, p3, v0

    move v1, v2

    .line 371
    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 372
    iget-object v6, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    add-int/lit8 v1, p2, 0x1

    aget-char v6, v6, p2

    .line 373
    if-nez v6, :cond_1

    .line 374
    const/4 v2, 0x1

    .line 386
    :cond_0
    :goto_1
    return v2

    .line 376
    :cond_1
    sub-int/2addr v4, v6

    .line 377
    if-eqz v4, :cond_2

    move v2, v4

    .line 378
    goto :goto_1

    .line 380
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_3

    .line 383
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    aget-char v0, v0, v1

    if-eqz v0, :cond_0

    .line 386
    neg-int v2, v5

    goto :goto_1

    :cond_3
    move p2, v1

    move v1, v3

    goto :goto_0
.end method

.method private final toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I
    .locals 8

    .prologue
    const/4 v6, 0x7

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 981
    .line 982
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v2

    .line 983
    invoke-static {v2}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 984
    invoke-static {v2}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 985
    invoke-static {v2}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 1068
    :goto_0
    if-ne v0, p1, :cond_0

    xor-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_1
    return v0

    .line 988
    :cond_1
    invoke-static {v2}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v2

    .line 989
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 994
    and-int/lit16 v2, v5, 0x4000

    if-eqz v2, :cond_3

    .line 996
    if-ne p4, v1, :cond_2

    const/16 v2, 0x69

    if-ne p1, v2, :cond_2

    .line 1008
    const/16 v0, 0x130

    goto :goto_1

    .line 1009
    :cond_2
    if-ne p4, v0, :cond_5

    const/16 v2, 0x307

    if-ne p1, v2, :cond_5

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1019
    const/4 v0, 0x0

    goto :goto_1

    .line 1023
    :cond_3
    invoke-static {v5, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1024
    invoke-direct {p0, v5, v6, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v2

    .line 1025
    long-to-int v6, v2

    const v7, 0xffff

    and-int/2addr v6, v7

    .line 1028
    const/16 v7, 0x20

    shr-long/2addr v2, v7

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 1031
    and-int/lit8 v3, v6, 0xf

    add-int/2addr v2, v3

    .line 1032
    shr-int/lit8 v6, v6, 0x4

    .line 1033
    and-int/lit8 v3, v6, 0xf

    add-int/2addr v3, v2

    .line 1034
    shr-int/lit8 v2, v6, 0x4

    .line 1036
    if-eqz p5, :cond_4

    .line 1037
    and-int/lit8 v2, v2, 0xf

    .line 1044
    :goto_2
    if-eqz v2, :cond_5

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v1, v3, v2

    invoke-interface {p3, v0, v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1050
    goto :goto_1

    .line 1040
    :cond_4
    and-int/lit8 v6, v2, 0xf

    add-int/2addr v3, v6

    .line 1041
    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    goto :goto_2

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1057
    :cond_5
    if-nez p5, :cond_6

    invoke-static {v5, v0}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1065
    :goto_3
    invoke-direct {p0, v5, v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    goto :goto_0

    .line 1059
    :cond_6
    invoke-static {v5, v1}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 1061
    goto :goto_3

    .line 1063
    :cond_7
    xor-int/lit8 v0, p1, -0x1

    goto :goto_1

    :cond_8
    move v0, p1

    goto/16 :goto_0
.end method


# virtual methods
.method public final addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v0, 0x0

    .line 259
    sparse-switch p1, :sswitch_data_0

    .line 279
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v1

    .line 280
    invoke-static {v1}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    invoke-static {v1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {v1}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 358
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 262
    :sswitch_1
    const/16 v0, 0x69

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 265
    :sswitch_2
    const/16 v0, 0x49

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 269
    :sswitch_3
    const-string/jumbo v0, "i\u0307"

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {v1}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 295
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v1, v0

    .line 301
    :goto_1
    const/4 v4, 0x3

    if-gt v1, v4, :cond_3

    .line 302
    invoke-static {v2, v1}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 304
    invoke-direct {p0, v2, v1, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v4

    .line 305
    invoke-virtual {p2, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 301
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_3
    invoke-static {v2, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    invoke-direct {p0, v2, v5, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v4

    .line 313
    long-to-int v0, v4

    and-int/lit8 v0, v0, 0xf

    .line 314
    shr-long/2addr v4, v7

    long-to-int v1, v4

    add-int/lit8 v1, v1, 0x1

    .line 321
    :goto_2
    invoke-static {v2, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 323
    invoke-direct {p0, v2, v6, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v2

    .line 324
    long-to-int v1, v2

    .line 327
    shr-long/2addr v2, v7

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 329
    const v3, 0xffff

    and-int/2addr v3, v1

    .line 332
    and-int/lit8 v1, v3, 0xf

    add-int/2addr v1, v2

    .line 333
    shr-int/lit8 v2, v3, 0x4

    .line 336
    and-int/lit8 v3, v2, 0xf

    .line 337
    if-eqz v3, :cond_4

    .line 338
    iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v5, v1, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 339
    add-int/2addr v1, v3

    .line 343
    :cond_4
    shr-int/lit8 v2, v2, 0x4

    .line 344
    and-int/lit8 v3, v2, 0xf

    add-int/2addr v1, v3

    .line 345
    shr-int/lit8 v2, v2, 0x4

    .line 346
    add-int/2addr v1, v2

    .line 352
    :cond_5
    add-int/2addr v0, v1

    .line 353
    :goto_3
    if-ge v1, v0, :cond_0

    .line 354
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 355
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 353
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_6
    move v1, v0

    .line 317
    goto :goto_2

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_1
        0x69 -> :sswitch_2
        0x130 -> :sswitch_3
        0x131 -> :sswitch_0
    .end sparse-switch
.end method

.method public final addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 100
    iget v0, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public final addStringCaseClosure(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 404
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 408
    if-le v4, v1, :cond_0

    .line 419
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    aget-char v3, v2, v0

    .line 420
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    aget-char v6, v2, v1

    .line 421
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    const/4 v5, 0x2

    aget-char v2, v2, v5

    .line 424
    if-gt v4, v2, :cond_0

    move v5, v0

    .line 432
    :goto_1
    if-ge v5, v3, :cond_0

    .line 433
    add-int v4, v5, v3

    div-int/lit8 v4, v4, 0x2

    .line 434
    add-int/lit8 v7, v4, 0x1

    mul-int/2addr v7, v6

    .line 435
    invoke-direct {p0, p1, v7, v2}, Lcom/ibm/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    move-result v8

    .line 437
    if-nez v8, :cond_3

    move v0, v2

    .line 441
    :goto_2
    if-ge v0, v6, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    add-int v3, v7, v0

    aget-char v2, v2, v3

    if-eqz v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    array-length v3, v3

    invoke-static {v2, v7, v3, v0}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I

    move-result v2

    .line 443
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 444
    invoke-virtual {p0, v2, p2}, Lcom/ibm/icu/impl/UCaseProps;->addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V

    .line 441
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 446
    goto :goto_0

    .line 447
    :cond_3
    if-gez v8, :cond_4

    move v3, v4

    .line 448
    goto :goto_1

    .line 450
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    goto :goto_1
.end method

.method public final fold(II)I
    .locals 8

    .prologue
    const/16 v7, 0x130

    const/16 v2, 0x69

    const/16 v6, 0x49

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1133
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v3, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v3

    .line 1134
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1135
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1136
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 1173
    :cond_0
    :goto_0
    return p1

    .line 1139
    :cond_1
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v3

    .line 1140
    iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1142
    const v4, 0x8000

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 1144
    and-int/lit16 v4, p2, 0xff

    if-nez v4, :cond_4

    .line 1146
    if-ne p1, v6, :cond_2

    move p1, v2

    .line 1148
    goto :goto_0

    .line 1149
    :cond_2
    if-eq p1, v7, :cond_0

    .line 1164
    :cond_3
    invoke-static {v3, v0}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1171
    :goto_1
    invoke-direct {p0, v3, v0, v5}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    goto :goto_0

    .line 1155
    :cond_4
    if-ne p1, v6, :cond_5

    .line 1157
    const/16 p1, 0x131

    goto :goto_0

    .line 1158
    :cond_5
    if-ne p1, v7, :cond_3

    move p1, v2

    .line 1160
    goto :goto_0

    .line 1166
    :cond_6
    invoke-static {v3, v1}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1167
    goto :goto_1
.end method

.method public final getDotType(I)I
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 470
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    and-int/lit8 v0, v0, 0x60

    .line 473
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x60

    goto :goto_0
.end method

.method public final getType(I)I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    return v0
.end method

.method public final getTypeOrIgnorable(I)I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeAndIgnorableFromProps(I)I

    move-result v0

    return v0
.end method

.method public final hasBinaryProperty(II)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1285
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 1327
    :cond_0
    :goto_0
    return v0

    .line 1287
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v2

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1289
    :sswitch_1
    const/4 v2, 0x2

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1291
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->isSoftDotted(I)Z

    move-result v0

    goto :goto_0

    .line 1293
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    move-result v0

    goto :goto_0

    .line 1295
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1297
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1311
    :sswitch_6
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1312
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1314
    :sswitch_7
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1315
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1317
    :sswitch_8
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1318
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1321
    :sswitch_9
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1322
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    if-gez v2, :cond_1

    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    if-gez v2, :cond_1

    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v2

    if-ltz v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    move v0, v1

    .line 1322
    goto :goto_0

    .line 1285
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1e -> :sswitch_1
        0x22 -> :sswitch_3
        0x31 -> :sswitch_4
        0x32 -> :sswitch_5
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x37 -> :sswitch_9
    .end sparse-switch
.end method

.method public final isCaseSensitive(I)Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSoftDotted(I)Z
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toFullFolding(ILjava/lang/Appendable;I)I
    .locals 8

    .prologue
    const/16 v7, 0x49

    const/4 v6, 0x7

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1195
    .line 1196
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v3, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v3

    .line 1197
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1198
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    if-lt v0, v2, :cond_9

    .line 1199
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 1268
    :goto_0
    if-ne v0, p1, :cond_0

    xor-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_1
    return v0

    .line 1202
    :cond_1
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v3

    .line 1203
    iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1208
    const v4, 0x8000

    and-int/2addr v4, v3

    if-eqz v4, :cond_5

    .line 1210
    and-int/lit16 v4, p3, 0xff

    if-nez v4, :cond_3

    .line 1212
    if-ne p1, v7, :cond_2

    .line 1214
    const/16 v0, 0x69

    goto :goto_1

    .line 1215
    :cond_2
    const/16 v4, 0x130

    if-ne p1, v4, :cond_6

    .line 1218
    :try_start_0
    const-string/jumbo v0, "i\u0307"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1219
    goto :goto_1

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1226
    :cond_3
    if-ne p1, v7, :cond_4

    .line 1228
    const/16 v0, 0x131

    goto :goto_1

    .line 1229
    :cond_4
    const/16 v2, 0x130

    if-ne p1, v2, :cond_6

    .line 1231
    const/16 v0, 0x69

    goto :goto_1

    .line 1234
    :cond_5
    invoke-static {v3, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1235
    invoke-direct {p0, v3, v6, v5}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v6

    .line 1236
    long-to-int v2, v6

    const v4, 0xffff

    and-int/2addr v2, v4

    .line 1239
    const/16 v4, 0x20

    shr-long/2addr v6, v4

    long-to-int v4, v6

    add-int/lit8 v4, v4, 0x1

    .line 1242
    and-int/lit8 v6, v2, 0xf

    add-int/2addr v4, v6

    .line 1243
    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 1245
    if-eqz v2, :cond_6

    .line 1248
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v1, v4, v2

    invoke-interface {p2, v0, v4, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 1251
    goto :goto_1

    .line 1252
    :catch_1
    move-exception v0

    .line 1253
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1258
    :cond_6
    invoke-static {v3, v0}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1265
    :goto_2
    invoke-direct {p0, v3, v0, v5}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    goto :goto_0

    .line 1260
    :cond_7
    invoke-static {v3, v1}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1261
    goto :goto_2

    .line 1263
    :cond_8
    xor-int/lit8 v0, p1, -0x1

    goto :goto_1

    :cond_9
    move v0, p1

    goto/16 :goto_0
.end method

.method public final toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 8

    .prologue
    const/16 v7, 0x49

    const/4 v6, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x2

    .line 823
    .line 824
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v3, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v3

    .line 825
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 826
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-lt v1, v0, :cond_c

    .line 827
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 970
    :goto_0
    if-ne v0, p1, :cond_0

    xor-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_1
    return v0

    .line 830
    :cond_1
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v3

    .line 831
    iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 836
    and-int/lit16 v4, v3, 0x4000

    if-eqz v4, :cond_a

    .line 844
    if-ne p4, v1, :cond_5

    if-eq p1, v7, :cond_2

    const/16 v4, 0x4a

    if-eq p1, v4, :cond_2

    const/16 v4, 0x12e

    if-ne p1, v4, :cond_3

    .line 847
    :cond_2
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const/16 v4, 0xcc

    if-eq p1, v4, :cond_4

    const/16 v4, 0xcd

    if-eq p1, v4, :cond_4

    const/16 v4, 0x128

    if-ne p1, v4, :cond_5

    .line 868
    :cond_4
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 888
    goto :goto_1

    .line 870
    :sswitch_0
    :try_start_0
    const-string/jumbo v1, "i\u0307"

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 873
    :sswitch_1
    :try_start_1
    const-string/jumbo v1, "j\u0307"

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 876
    :sswitch_2
    const-string/jumbo v1, "\u012f\u0307"

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 879
    :sswitch_3
    const-string/jumbo v0, "i\u0307\u0300"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move v0, v1

    .line 880
    goto :goto_1

    .line 882
    :sswitch_4
    const-string/jumbo v0, "i\u0307\u0301"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move v0, v1

    .line 883
    goto :goto_1

    .line 885
    :sswitch_5
    const-string/jumbo v0, "i\u0307\u0303"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 886
    goto :goto_1

    .line 894
    :cond_5
    if-ne p4, v0, :cond_6

    const/16 v1, 0x130

    if-ne p1, v1, :cond_6

    .line 902
    const/16 v0, 0x69

    goto :goto_1

    .line 903
    :cond_6
    if-ne p4, v0, :cond_7

    const/16 v1, 0x307

    if-ne p1, v1, :cond_7

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 911
    goto :goto_1

    .line 912
    :cond_7
    if-ne p4, v0, :cond_8

    if-ne p1, v7, :cond_8

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 919
    const/16 v0, 0x131

    goto/16 :goto_1

    .line 920
    :cond_8
    const/16 v1, 0x130

    if-ne p1, v1, :cond_9

    .line 927
    :try_start_2
    const-string/jumbo v1, "i\u0307"

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 929
    :catch_1
    move-exception v0

    .line 930
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 932
    :cond_9
    const/16 v0, 0x3a3

    if-ne p1, v0, :cond_b

    const/4 v0, 0x1

    .line 933
    invoke-direct {p0, p2, v0}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    .line 934
    invoke-direct {p0, p2, v0}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 942
    const/16 v0, 0x3c2

    goto/16 :goto_1

    .line 946
    :cond_a
    invoke-static {v3, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 947
    invoke-direct {p0, v3, v6, v5}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v6

    .line 948
    long-to-int v0, v6

    and-int/lit8 v0, v0, 0xf

    .line 949
    if-eqz v0, :cond_b

    .line 951
    const/16 v1, 0x20

    shr-long v2, v6, v1

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 955
    :try_start_3
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v3, v1, v0

    invoke-interface {p3, v2, v1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 959
    :catch_2
    move-exception v0

    .line 960
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 965
    :cond_b
    invoke-static {v3, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 966
    invoke-direct {p0, v3, v2, v5}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    goto/16 :goto_0

    :cond_c
    move v0, p1

    goto/16 :goto_0

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0x128 -> :sswitch_5
        0x12e -> :sswitch_2
    .end sparse-switch
.end method

.method public final toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    .prologue
    .line 1080
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result v0

    return v0
.end method

.method public final toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    .prologue
    .line 1074
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result v0

    return v0
.end method
