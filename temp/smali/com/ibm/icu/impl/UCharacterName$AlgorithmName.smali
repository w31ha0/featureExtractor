.class final Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# instance fields
.field private m_factor_:[C

.field private m_factorstring_:[B

.field private m_prefix_:Ljava/lang/String;

.field private m_rangeend_:I

.field private m_rangestart_:I

.field private m_type_:B

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;

.field private m_variant_:B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    .line 866
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    .line 602
    return-void
.end method

.method private compareFactorString([IILjava/lang/String;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 918
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v0, v0

    .line 919
    if-eqz p1, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 945
    :goto_0
    return v0

    .line 925
    :cond_1
    add-int/lit8 v3, v0, -0x1

    move v2, v1

    move v0, v1

    .line 926
    :goto_1
    if-gt v2, v3, :cond_4

    .line 928
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v4, v4, v2

    .line 929
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    invoke-static {v5, v0, v6}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    .line 931
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {p3, v5, p4, v0}, Lcom/ibm/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result p4

    .line 933
    if-gez p4, :cond_2

    move v0, v1

    .line 934
    goto :goto_0

    .line 937
    :cond_2
    if-eq v2, v3, :cond_3

    .line 938
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    sub-int/2addr v4, v6

    invoke-static {v5, v0, v4}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    .line 926
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 942
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p4, v0, :cond_5

    move v0, v1

    .line 943
    goto :goto_0

    .line 945
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getChar(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 731
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 732
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    .line 733
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 788
    :goto_0
    return v0

    .line 737
    :cond_1
    iget-byte v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v0, v1

    .line 788
    goto :goto_0

    .line 742
    :pswitch_0
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 745
    iget v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v2, v0, :cond_2

    iget v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v2, :cond_2

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    move v0, v1

    .line 751
    goto :goto_0

    .line 757
    :pswitch_1
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt v0, v2, :cond_2

    .line 759
    iget v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v3, v0, v2

    .line 760
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    .line 766
    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    monitor-enter v6

    .line 767
    :try_start_1
    iget-byte v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lez v2, :cond_3

    .line 769
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v7, v7, v2

    and-int/lit16 v7, v7, 0xff

    .line 770
    rem-int v8, v3, v7

    aput v8, v5, v2

    .line 771
    div-int/2addr v3, v7

    .line 767
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 777
    :cond_3
    const/4 v2, 0x0

    aput v3, v5, v2

    .line 780
    iget-byte v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v5, v2, p1, v4}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->compareFactorString([IILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 782
    monitor-exit v6

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setFactor([C)Z
    .locals 2

    .prologue
    .line 637
    array-length v0, p1

    iget-byte v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    if-ne v0, v1, :cond_0

    .line 638
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    .line 639
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFactorString([B)Z
    .locals 1

    .prologue
    .line 667
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    .line 668
    const/4 v0, 0x1

    return v0
.end method

.method setInfo(IIBB)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 618
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    const v1, 0x10ffff

    if-gt p2, v1, :cond_1

    if-eqz p3, :cond_0

    if-ne p3, v0, :cond_1

    .line 621
    :cond_0
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    .line 622
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    .line 623
    iput-byte p3, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    .line 624
    iput-byte p4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    .line 627
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setPrefix(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 651
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 652
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    .line 653
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
