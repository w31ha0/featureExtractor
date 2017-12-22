.class public Lcom/ibm/icu/impl/CharacterIteratorWrapper;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source "CharacterIteratorWrapper.java"


# instance fields
.field private iterator:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    .line 31
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 132
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;

    .line 133
    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public next()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 68
    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 69
    const/4 v0, -0x1

    .line 71
    :cond_0
    return v0
.end method

.method public previous()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    .line 80
    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 83
    :cond_0
    return v0
.end method

.method public setIndex(I)V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
