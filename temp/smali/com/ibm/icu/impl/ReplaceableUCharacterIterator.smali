.class public Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source "ReplaceableUCharacterIterator.java"


# instance fields
.field private currentIndex:I

.field private replaceable:Lcom/ibm/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 3

    .prologue
    .line 150
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public previous()I
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 1

    .prologue
    .line 185
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 188
    :cond_1
    iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    .line 189
    return-void
.end method
