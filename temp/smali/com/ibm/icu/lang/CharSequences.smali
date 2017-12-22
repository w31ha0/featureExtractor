.class public Lcom/ibm/icu/lang/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static codePoints(Ljava/lang/CharSequence;)[I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 290
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 291
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 292
    const v3, 0xdc00

    if-lt v5, v3, :cond_0

    const v3, 0xdfff

    if-gt v5, v3, :cond_0

    if-eqz v0, :cond_0

    .line 293
    add-int/lit8 v3, v2, -0x1

    aget v3, v4, v3

    int-to-char v3, v3

    .line 294
    const v6, 0xd800

    if-lt v3, v6, :cond_0

    const v6, 0xdbff

    if-gt v3, v6, :cond_0

    .line 296
    add-int/lit8 v6, v2, -0x1

    invoke-static {v3, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    aput v3, v4, v6

    .line 290
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput v5, v4, v2

    move v2, v3

    goto :goto_1

    .line 302
    :cond_1
    array-length v0, v4

    if-ne v2, v0, :cond_2

    move-object v0, v4

    .line 307
    :goto_2
    return-object v0

    .line 305
    :cond_2
    new-array v0, v2, [I

    .line 306
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 133
    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 137
    if-nez v1, :cond_3

    .line 138
    const/4 v0, -0x1

    .line 163
    :cond_2
    :goto_0
    return v0

    .line 140
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 141
    const/high16 v2, 0x10000

    sub-int v2, p1, v2

    .line 143
    if-gez v2, :cond_4

    .line 144
    sub-int/2addr v0, p1

    .line 145
    if-nez v0, :cond_2

    .line 148
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 151
    :cond_4
    ushr-int/lit8 v3, v2, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 152
    sub-int/2addr v0, v3

    .line 153
    if-nez v0, :cond_2

    .line 156
    if-le v1, v5, :cond_5

    .line 157
    and-int/lit16 v0, v2, 0x3ff

    const v2, 0xdc00

    add-int/2addr v0, v2

    int-to-char v0, v0

    .line 158
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int v0, v2, v0

    .line 159
    if-nez v0, :cond_2

    .line 163
    :cond_5
    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v1, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 189
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 190
    if-lt v5, v2, :cond_0

    const/4 v0, 0x2

    if-le v5, v0, :cond_2

    :cond_0
    move v0, v1

    .line 194
    :cond_1
    :goto_0
    return v0

    .line 193
    :cond_2
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 194
    const/high16 v4, 0x10000

    if-ge v0, v4, :cond_3

    move v4, v2

    :goto_1
    if-ne v5, v2, :cond_4

    :goto_2
    if-eq v4, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method
