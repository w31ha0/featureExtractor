.class public Lcom/ibm/icu/text/FilteredNormalizer2;
.super Lcom/ibm/icu/text/Normalizer2;
.source "FilteredNormalizer2.java"


# instance fields
.field private norm2:Lcom/ibm/icu/text/Normalizer2;

.field private set:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer2;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 39
    iput-object p2, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    .line 40
    return-void
.end method

.method private normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;
    .locals 5

    .prologue
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p1, v0, p3}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    .line 235
    sub-int v3, v1, v0

    .line 236
    sget-object v4, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v4, :cond_1

    .line 237
    if-eqz v3, :cond_0

    .line 238
    invoke-interface {p2, p1, v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 240
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move-object p3, v0

    move v0, v1

    .line 250
    goto :goto_0

    .line 242
    :cond_1
    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 247
    :cond_2
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :cond_3
    return-object p2
.end method

.method private normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    const v5, 0x7fffffff

    const/4 v2, 0x0

    .line 259
    if-ne p1, p2, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 263
    if-eqz p3, :cond_2

    .line 264
    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 299
    :cond_1
    :goto_0
    return-object p1

    .line 266
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0, p2, v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 271
    if-eqz v0, :cond_4

    .line 272
    invoke-interface {p2, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v2, p1, v5, v3}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 274
    if-nez v2, :cond_6

    .line 275
    if-eqz p3, :cond_5

    .line 276
    iget-object v2, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 291
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 292
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 293
    if-eqz p3, :cond_8

    .line 294
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, v0, p1, v1}, Lcom/ibm/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    goto :goto_0

    .line 278
    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 283
    if-eqz p3, :cond_7

    .line 284
    iget-object v4, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v4, v3, v1}, Lcom/ibm/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 288
    :goto_2
    invoke-virtual {p1, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 286
    :cond_7
    iget-object v4, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v4, v3, v1}, Lcom/ibm/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 296
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getCombiningClass(I)I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInert(I)Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->isInert(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 127
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object v3, v0

    move v0, v1

    .line 128
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 130
    sget-object v4, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne v3, v4, :cond_0

    .line 131
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move-object v3, v0

    move v0, v2

    .line 139
    goto :goto_0

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :goto_2
    return v1

    .line 136
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    .line 140
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 48
    if-ne p2, p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 52
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    .line 53
    return-object p2
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 5

    .prologue
    .line 149
    sget-object v2, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    .line 150
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 151
    const/4 v0, 0x0

    move-object v3, v2

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    .line 153
    sget-object v4, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne v2, v4, :cond_0

    .line 154
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object v2, v3

    :goto_1
    move-object v3, v2

    move-object v2, v0

    move v0, v1

    .line 166
    goto :goto_0

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 157
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    .line 158
    sget-object v2, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-ne v0, v2, :cond_1

    .line 167
    :goto_2
    return-object v0

    .line 160
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-ne v0, v2, :cond_2

    move-object v3, v0

    .line 163
    :cond_2
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 167
    goto :goto_2
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    .line 175
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 176
    const/4 v0, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->set:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    .line 178
    sget-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne v2, v3, :cond_0

    .line 179
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move-object v2, v0

    move v0, v1

    .line 190
    goto :goto_0

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/FilteredNormalizer2;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 183
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v0, v2

    .line 184
    if-ge v0, v1, :cond_1

    .line 191
    :goto_2
    return v0

    .line 187
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    .line 191
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_2
.end method
