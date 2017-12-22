.class public final Lcom/ibm/icu/impl/Trie2_16;
.super Lcom/ibm/icu/impl/Trie2;
.source "Trie2_16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2;-><init>()V

    .line 39
    return-void
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/ibm/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2_16;

    return-object v0
.end method


# virtual methods
.method public final get(I)I
    .locals 3

    .prologue
    const v2, 0xffff

    const v1, 0xd800

    .line 72
    if-ltz p1, :cond_4

    .line 73
    if-lt p1, v1, :cond_0

    const v0, 0xdbff

    if-le p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 78
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    .line 111
    :goto_0
    return v0

    .line 82
    :cond_1
    if-gt p1, v2, :cond_2

    .line 89
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    sub-int v1, p1, v1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0x800

    aget-char v0, v0, v1

    .line 90
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    goto :goto_0

    .line 94
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_16;->highStart:I

    if-ge p1, v0, :cond_3

    .line 96
    shr-int/lit8 v0, p1, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 97
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    .line 98
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    .line 100
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    goto :goto_0

    .line 104
    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    iget v1, p0, Lcom/ibm/icu/impl/Trie2_16;->highValueIndex:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 111
    :cond_4
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_16;->errorValue:I

    goto :goto_0
.end method

.method public getFromU16SingleLead(C)I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 136
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 137
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    .line 138
    return v0
.end method

.method public getSerializedLength()I
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_16;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->indexLength:I

    iget v1, p0, Lcom/ibm/icu/impl/Trie2_16;->dataLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method rangeEnd(III)I
    .locals 7

    .prologue
    const v6, 0xffff

    const v5, 0xd800

    .line 183
    move v2, p1

    .line 194
    :goto_0
    if-lt v2, p2, :cond_0

    move v0, v2

    .line 252
    :goto_1
    if-le v0, p2, :cond_b

    .line 256
    :goto_2
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 197
    :cond_0
    if-lt v2, v5, :cond_1

    const v0, 0xdbff

    if-le v2, v0, :cond_2

    if-gt v2, v6, :cond_2

    .line 201
    :cond_1
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v3, v2, 0x5

    aget-char v1, v1, v3

    shl-int/lit8 v1, v1, 0x2

    .line 220
    :goto_3
    iget v3, p0, Lcom/ibm/icu/impl/Trie2_16;->index2NullOffset:I

    if-ne v0, v3, :cond_6

    .line 221
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_16;->initialValue:I

    if-eq p3, v0, :cond_5

    move v0, v2

    .line 222
    goto :goto_1

    .line 203
    :cond_2
    if-ge v2, v6, :cond_3

    .line 205
    const/16 v0, 0x800

    .line 206
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    sub-int v3, v2, v5

    shr-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    shl-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 207
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_16;->highStart:I

    if-ge v2, v0, :cond_4

    .line 209
    shr-int/lit8 v0, v2, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 210
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v0, v1, v0

    .line 211
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    shr-int/lit8 v3, v2, 0x5

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    shl-int/lit8 v1, v1, 0x2

    .line 212
    goto :goto_3

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    iget v1, p0, Lcom/ibm/icu/impl/Trie2_16;->highValueIndex:I

    aget-char v0, v0, v1

    if-ne p3, v0, :cond_c

    move v0, p2

    .line 215
    goto :goto_1

    .line 224
    :cond_5
    add-int/lit16 v2, v2, 0x800

    goto :goto_0

    .line 225
    :cond_6
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_16;->dataNullOffset:I

    if-ne v1, v0, :cond_8

    .line 230
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_16;->initialValue:I

    if-eq p3, v0, :cond_7

    move v0, v2

    .line 231
    goto :goto_1

    .line 233
    :cond_7
    add-int/lit8 v2, v2, 0x20

    goto :goto_0

    .line 237
    :cond_8
    and-int/lit8 v0, v2, 0x1f

    add-int v3, v1, v0

    .line 238
    add-int/lit8 v1, v1, 0x20

    move v0, v3

    .line 239
    :goto_4
    if-ge v0, v1, :cond_a

    .line 240
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2_16;->index:[C

    aget-char v4, v4, v0

    if-eq v4, p3, :cond_9

    .line 243
    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 244
    goto :goto_1

    .line 239
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 249
    :cond_a
    sub-int v0, v1, v3

    add-int/2addr v2, v0

    .line 250
    goto :goto_0

    :cond_b
    move p2, v0

    goto :goto_2

    :cond_c
    move v0, v2

    goto :goto_1
.end method
