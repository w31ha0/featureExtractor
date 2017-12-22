.class public final Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;
.super Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source "Norm2AllModes.java"


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    .line 168
    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasDecompBoundary(IZ)Z

    move-result v0

    return v0
.end method

.method public isInert(I)Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompInert(I)Z

    move-result v0

    return v0
.end method

.method protected normalize(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 173
    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 178
    return-void
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v0

    return v0
.end method
