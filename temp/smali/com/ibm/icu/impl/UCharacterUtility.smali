.class public final Lcom/ibm/icu/impl/UCharacterUtility;
.super Ljava/lang/Object;
.source "UCharacterUtility.java"


# direct methods
.method static compareNullTermByteSubString(Ljava/lang/String;[BII)I
    .locals 5

    .prologue
    .line 92
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    move v0, p2

    .line 95
    :goto_0
    if-eqz v1, :cond_0

    .line 97
    aget-byte v1, p1, p3

    .line 98
    add-int/lit8 p3, p3, 0x1

    .line 99
    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_1
    return v0

    .line 104
    :cond_1
    if-eq v0, v2, :cond_2

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v4, v1, 0xff

    int-to-char v4, v4

    if-eq v3, v4, :cond_3

    .line 106
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 108
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isNonCharacter(I)Z
    .locals 3

    .prologue
    const v2, 0xfffe

    const/4 v0, 0x1

    .line 29
    and-int v1, p0, v2

    if-ne v1, v2, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0xfdd0

    if-lt p0, v1, :cond_2

    const v1, 0xfdef

    if-le p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static skipByteSubString([BIIB)I
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 158
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    .line 159
    if-ne v1, p3, :cond_1

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_0
    return v0

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static skipNullTermByteSubString([BII)I
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x0

    move v2, v0

    move v1, p1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 129
    const/4 v0, 0x1

    .line 130
    :goto_1
    if-eqz v0, :cond_0

    .line 132
    aget-byte v0, p0, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 136
    :cond_1
    return v1
.end method

.method static toInt(CC)I
    .locals 1

    .prologue
    .line 47
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method
