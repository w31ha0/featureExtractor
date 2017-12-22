.class public Lcom/ibm/icu/impl/Trie2_32;
.super Lcom/ibm/icu/impl/Trie2;
.source "Trie2_32.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie2;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public final get(I)I
    .locals 3

    .prologue
    const v2, 0xffff

    const v1, 0xd800

    .line 71
    if-ltz p1, :cond_4

    .line 72
    if-lt p1, v1, :cond_0

    const v0, 0xdbff

    if-le p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 77
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->data32:[I

    aget v0, v1, v0

    .line 110
    :goto_0
    return v0

    .line 81
    :cond_1
    if-gt p1, v2, :cond_2

    .line 88
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    sub-int v1, p1, v1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0x800

    aget-char v0, v0, v1

    .line 89
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 90
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->data32:[I

    aget v0, v1, v0

    goto :goto_0

    .line 93
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_32;->highStart:I

    if-ge p1, v0, :cond_3

    .line 95
    shr-int/lit8 v0, p1, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 96
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    .line 97
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    .line 99
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->data32:[I

    aget v0, v1, v0

    goto :goto_0

    .line 103
    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_32;->data32:[I

    iget v1, p0, Lcom/ibm/icu/impl/Trie2_32;->highValueIndex:I

    aget v0, v0, v1

    goto :goto_0

    .line 110
    :cond_4
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_32;->errorValue:I

    goto :goto_0
.end method

.method public getFromU16SingleLead(C)I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    .line 133
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 134
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->data32:[I

    aget v0, v1, v0

    .line 135
    return v0
.end method

.method rangeEnd(III)I
    .locals 7

    .prologue
    const v6, 0xffff

    const v5, 0xd800

    .line 180
    move v2, p1

    .line 191
    :goto_0
    if-lt v2, p2, :cond_0

    move v0, v2

    .line 249
    :goto_1
    if-le v0, p2, :cond_b

    .line 253
    :goto_2
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 194
    :cond_0
    if-lt v2, v5, :cond_1

    const v0, 0xdbff

    if-le v2, v0, :cond_2

    if-gt v2, v6, :cond_2

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v3, v2, 0x5

    aget-char v1, v1, v3

    shl-int/lit8 v1, v1, 0x2

    .line 217
    :goto_3
    iget v3, p0, Lcom/ibm/icu/impl/Trie2_32;->index2NullOffset:I

    if-ne v0, v3, :cond_6

    .line 218
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_32;->initialValue:I

    if-eq p3, v0, :cond_5

    move v0, v2

    .line 219
    goto :goto_1

    .line 200
    :cond_2
    if-ge v2, v6, :cond_3

    .line 202
    const/16 v0, 0x800

    .line 203
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    sub-int v3, v2, v5

    shr-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    shl-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 204
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_32;->highStart:I

    if-ge v2, v0, :cond_4

    .line 206
    shr-int/lit8 v0, v2, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 207
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    .line 208
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v3, v2, 0x5

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    shl-int/lit8 v1, v1, 0x2

    .line 209
    goto :goto_3

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2_32;->data32:[I

    iget v1, p0, Lcom/ibm/icu/impl/Trie2_32;->highValueIndex:I

    aget v0, v0, v1

    if-ne p3, v0, :cond_c

    move v0, p2

    .line 212
    goto :goto_1

    .line 221
    :cond_5
    add-int/lit16 v2, v2, 0x800

    goto :goto_0

    .line 222
    :cond_6
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_32;->dataNullOffset:I

    if-ne v1, v0, :cond_8

    .line 227
    iget v0, p0, Lcom/ibm/icu/impl/Trie2_32;->initialValue:I

    if-eq p3, v0, :cond_7

    move v0, v2

    .line 228
    goto :goto_1

    .line 230
    :cond_7
    add-int/lit8 v2, v2, 0x20

    goto :goto_0

    .line 234
    :cond_8
    and-int/lit8 v0, v2, 0x1f

    add-int v3, v1, v0

    .line 235
    add-int/lit8 v1, v1, 0x20

    move v0, v3

    .line 236
    :goto_4
    if-ge v0, v1, :cond_a

    .line 237
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2_32;->data32:[I

    aget v4, v4, v0

    if-eq v4, p3, :cond_9

    .line 240
    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 241
    goto :goto_1

    .line 236
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 246
    :cond_a
    sub-int v0, v1, v3

    add-int/2addr v2, v0

    .line 247
    goto :goto_0

    :cond_b
    move p2, v0

    goto :goto_2

    :cond_c
    move v0, v2

    goto :goto_1
.end method
