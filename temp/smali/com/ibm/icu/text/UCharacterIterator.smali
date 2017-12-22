.class public abstract Lcom/ibm/icu/text/UCharacterIterator;
.super Ljava/lang/Object;
.source "UCharacterIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public abstract getLength()I
.end method

.method public moveCodePointIndex(I)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 381
    if-lez p1, :cond_2

    move v0, p1

    .line 382
    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 383
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 386
    :goto_1
    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_0
    if-eqz v0, :cond_1

    .line 391
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0

    :cond_2
    move v0, p1

    goto :goto_1
.end method

.method public abstract next()I
.end method

.method public nextCodePoint()I
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 214
    int-to-char v1, v0

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v1

    .line 216
    int-to-char v2, v1

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    int-to-char v0, v0

    int-to-char v1, v1

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    goto :goto_0
.end method

.method public abstract previous()I
.end method

.method public previousCodePoint()I
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v0

    .line 246
    int-to-char v1, v0

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v1

    .line 248
    int-to-char v2, v1

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    int-to-char v1, v1

    int-to-char v0, v0

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    goto :goto_0
.end method

.method public abstract setIndex(I)V
.end method
