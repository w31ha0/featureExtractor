.class Lcom/ibm/icu/text/BytesDictionaryMatcher;
.super Lcom/ibm/icu/text/DictionaryMatcher;
.source "BytesDictionaryMatcher.java"


# instance fields
.field private final characters:[B

.field private final transform:I


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ibm/icu/text/DictionaryMatcher;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->characters:[B

    .line 23
    const/high16 v0, 0x7f000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 27
    iput p2, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform:I

    .line 28
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transform(I)I
    .locals 2

    .prologue
    .line 31
    const/16 v0, 0x200d

    if-ne p1, v0, :cond_1

    .line 32
    const/16 v0, 0xff

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    const/16 v0, 0x200c

    if-ne p1, v0, :cond_2

    .line 34
    const/16 v0, 0xfe

    goto :goto_0

    .line 37
    :cond_2
    iget v0, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform:I

    const v1, 0x1fffff

    and-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 38
    if-ltz v0, :cond_3

    const/16 v1, 0xfd

    if-ge v1, v0, :cond_0

    .line 39
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 46
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object v4

    .line 47
    new-instance v5, Lcom/ibm/icu/util/BytesTrie;

    iget-object v0, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->characters:[B

    invoke-direct {v5, v0, v1}, Lcom/ibm/icu/util/BytesTrie;-><init>([BI)V

    .line 48
    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    .line 49
    if-ne v0, v7, :cond_0

    .line 84
    :goto_0
    return v1

    .line 52
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/util/BytesTrie;->first(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v2

    .line 54
    const/4 v0, 0x1

    move-object v3, v2

    move v2, v0

    move v0, v1

    .line 57
    :goto_1
    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 58
    if-ge v0, p5, :cond_2

    .line 59
    if-eqz p6, :cond_1

    .line 60
    invoke-virtual {v5}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result v6

    aput v6, p6, v0

    .line 62
    :cond_1
    aput v2, p3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    :cond_2
    sget-object v6, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v3, v6, :cond_5

    .line 83
    :cond_3
    aput v0, p4, v1

    move v1, v2

    .line 84
    goto :goto_0

    .line 68
    :cond_4
    sget-object v6, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-eq v3, v6, :cond_3

    .line 72
    :cond_5
    if-ge v2, p2, :cond_3

    .line 76
    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v3

    .line 77
    if-eq v3, v7, :cond_3

    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v3

    goto :goto_1
.end method
