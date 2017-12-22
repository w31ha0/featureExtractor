.class public final Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# direct methods
.method public static equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    sub-int v2, p2, p1

    sub-int v3, p5, p4

    if-eq v2, v3, :cond_0

    .line 411
    :goto_0
    return v0

    .line 403
    :cond_0
    if-ne p0, p3, :cond_2

    if-ne p1, p4, :cond_2

    move v0, v1

    .line 404
    goto :goto_0

    :cond_1
    move p4, v2

    move p1, v3

    .line 406
    :cond_2
    if-ge p1, p2, :cond_3

    .line 407
    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v2, p4, 0x1

    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 411
    goto :goto_0
.end method

.method public static equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    if-ne p0, p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 377
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v3, v2, :cond_2

    move v0, v1

    .line 378
    goto :goto_0

    :cond_2
    move v2, v1

    .line 380
    :goto_1
    if-ge v2, v3, :cond_0

    .line 381
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    move v0, v1

    .line 382
    goto :goto_0

    .line 380
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSurrogateLead(I)Z
    .locals 1

    .prologue
    .line 365
    and-int/lit16 v0, p0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
