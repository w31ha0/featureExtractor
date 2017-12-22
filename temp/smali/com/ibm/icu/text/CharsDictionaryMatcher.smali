.class Lcom/ibm/icu/text/CharsDictionaryMatcher;
.super Lcom/ibm/icu/text/DictionaryMatcher;
.source "CharsDictionaryMatcher.java"


# instance fields
.field private characters:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ibm/icu/text/DictionaryMatcher;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ibm/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    .line 21
    return-void
.end method


# virtual methods
.method public matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 25
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object v4

    .line 26
    new-instance v5, Lcom/ibm/icu/util/CharsTrie;

    iget-object v0, p0, Lcom/ibm/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    invoke-direct {v5, v0, v1}, Lcom/ibm/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 27
    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    .line 28
    if-ne v0, v7, :cond_0

    .line 63
    :goto_0
    return v1

    .line 31
    :cond_0
    invoke-virtual {v5, v0}, Lcom/ibm/icu/util/CharsTrie;->firstForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v2

    .line 33
    const/4 v0, 0x1

    move-object v3, v2

    move v2, v0

    move v0, v1

    .line 36
    :goto_1
    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 37
    if-ge v0, p5, :cond_2

    .line 38
    if-eqz p6, :cond_1

    .line 39
    invoke-virtual {v5}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result v6

    aput v6, p6, v0

    .line 41
    :cond_1
    aput v2, p3, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 45
    :cond_2
    sget-object v6, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v3, v6, :cond_5

    .line 62
    :cond_3
    aput v0, p4, v1

    move v1, v2

    .line 63
    goto :goto_0

    .line 48
    :cond_4
    sget-object v6, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-eq v3, v6, :cond_3

    .line 52
    :cond_5
    if-ge v2, p2, :cond_3

    .line 55
    invoke-virtual {v4}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v3

    .line 56
    if-eq v3, v7, :cond_3

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    invoke-virtual {v5, v3}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v3

    goto :goto_1
.end method
