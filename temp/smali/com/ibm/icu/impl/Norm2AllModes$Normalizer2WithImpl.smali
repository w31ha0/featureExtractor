.class public abstract Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.super Lcom/ibm/icu/text/Normalizer2;
.source "Norm2AllModes.java"


# instance fields
.field public final impl:Lcom/ibm/icu/impl/Normalizer2Impl;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer2;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 85
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getCombiningClass(I)I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v0

    return v0
.end method

.method public abstract getQuickCheck(I)I
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 90
    if-ne p2, p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalize(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 95
    return-object p2
.end method

.method protected abstract normalize(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method protected abstract normalizeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 121
    if-ne p1, p2, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, p1, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 124
    invoke-virtual {p0, p2, p3, v0}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 127
    return-object p1
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    goto :goto_0
.end method
