.class Lcom/ibm/icu/text/ThaiBreakEngine;
.super Lcom/ibm/icu/text/DictionaryBreakEngine;
.source "ThaiBreakEngine.java"


# static fields
.field private static fBeginWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static fEndWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static fMarkSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static fThaiWordSet:Lcom/ibm/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xe44

    const/16 v3, 0xe40

    .line 46
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fThaiWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 47
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fMarkSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 48
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fBeginWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 49
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 51
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fThaiWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Thai:]&[:LineBreak=SA:]]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 52
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fThaiWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 54
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fMarkSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Thai:]&[:LineBreak=SA:]&[:M:]]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 55
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fMarkSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 56
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    sget-object v1, Lcom/ibm/icu/text/ThaiBreakEngine;->fThaiWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    sput-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fEndWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 57
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fEndWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0xe31

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->remove(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 58
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fEndWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 59
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fBeginWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0xe01

    const/16 v2, 0xe2e

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 60
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fBeginWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 61
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0xe2f

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 62
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0xe46

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 65
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fMarkSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 66
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fEndWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 67
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fBeginWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 68
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 71
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fThaiWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 72
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fMarkSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 73
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fEndWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 74
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fBeginWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 75
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 79
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    .line 80
    sget-object v0, Lcom/ibm/icu/text/ThaiBreakEngine;->fThaiWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/ThaiBreakEngine;->setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 82
    const-string/jumbo v0, "Thai"

    invoke-static {v0}, Lcom/ibm/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Lcom/ibm/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/ThaiBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    .line 83
    return-void
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 10

    .prologue
    .line 106
    sub-int v0, p3, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 111
    const/4 v1, 0x3

    new-array v6, v1, [Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;

    .line 112
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 113
    new-instance v2, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;

    invoke-direct {v2}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;-><init>()V

    aput-object v2, v6, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_2
    invoke-interface {p1, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 119
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    if-ge v7, p3, :cond_17

    .line 120
    const/4 v1, 0x0

    .line 123
    rem-int/lit8 v2, v0, 0x3

    aget-object v2, v6, v2

    iget-object v3, p0, Lcom/ibm/icu/text/ThaiBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    invoke-virtual {v2, p1, v3, p3}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/DictionaryMatcher;I)I

    move-result v2

    .line 126
    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 127
    rem-int/lit8 v1, v0, 0x3

    aget-object v1, v6, v1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 128
    add-int/lit8 v0, v0, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    .line 172
    :goto_3
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-ge v2, p3, :cond_10

    const/4 v2, 0x3

    if-ge v0, v2, :cond_10

    .line 176
    rem-int/lit8 v2, v1, 0x3

    aget-object v2, v6, v2

    iget-object v3, p0, Lcom/ibm/icu/text/ThaiBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    invoke-virtual {v2, p1, v3, p3}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/DictionaryMatcher;I)I

    move-result v2

    if-gtz v2, :cond_f

    if-eqz v0, :cond_4

    rem-int/lit8 v2, v1, 0x3

    aget-object v2, v6, v2

    .line 178
    invoke-virtual {v2}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_f

    .line 180
    :cond_4
    add-int v2, v7, v0

    sub-int v4, p3, v2

    .line 181
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    .line 182
    const/4 v2, 0x0

    move v5, v4

    .line 184
    :goto_4
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    .line 185
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v4

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_d

    .line 206
    :cond_5
    if-gtz v0, :cond_6

    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 211
    :cond_6
    add-int/2addr v0, v2

    move v9, v0

    move v0, v1

    move v1, v9

    .line 220
    :goto_5
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-ge v2, p3, :cond_11

    sget-object v3, Lcom/ibm/icu/text/ThaiBreakEngine;->fMarkSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 221
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    .line 222
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 132
    :cond_7
    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 134
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ge v1, p3, :cond_9

    .line 138
    :cond_8
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x3

    aget-object v1, v6, v1

    iget-object v2, p0, Lcom/ibm/icu/text/ThaiBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    invoke-virtual {v1, p1, v2, p3}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/DictionaryMatcher;I)I

    move-result v1

    if-lez v1, :cond_c

    .line 141
    rem-int/lit8 v1, v0, 0x3

    aget-object v1, v6, v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    .line 146
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-lt v1, p3, :cond_a

    .line 163
    :cond_9
    :goto_6
    rem-int/lit8 v1, v0, 0x3

    aget-object v1, v6, v1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 164
    add-int/lit8 v0, v0, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_3

    .line 153
    :cond_a
    add-int/lit8 v1, v0, 0x2

    rem-int/lit8 v1, v1, 0x3

    aget-object v1, v6, v1

    iget-object v2, p0, Lcom/ibm/icu/text/ThaiBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    invoke-virtual {v1, p1, v2, p3}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/DictionaryMatcher;I)I

    move-result v1

    if-lez v1, :cond_b

    .line 154
    rem-int/lit8 v1, v0, 0x3

    aget-object v1, v6, v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    goto :goto_6

    .line 157
    :cond_b
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x3

    aget-object v1, v6, v1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 160
    :cond_c
    rem-int/lit8 v1, v0, 0x3

    aget-object v1, v6, v1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    .line 190
    :cond_d
    sget-object v8, Lcom/ibm/icu/text/ThaiBreakEngine;->fEndWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v8, v3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/ibm/icu/text/ThaiBreakEngine;->fBeginWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 196
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x3

    aget-object v3, v6, v3

    iget-object v8, p0, Lcom/ibm/icu/text/ThaiBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    invoke-virtual {v3, p1, v8, p3}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/DictionaryMatcher;I)I

    move-result v3

    .line 197
    add-int v8, v7, v0

    add-int/2addr v8, v2

    invoke-interface {p1, v8}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 198
    if-gtz v3, :cond_5

    :cond_e
    move v3, v4

    .line 202
    goto/16 :goto_4

    .line 214
    :cond_f
    add-int v2, v7, v0

    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_10
    move v9, v0

    move v0, v1

    move v1, v9

    goto/16 :goto_5

    .line 229
    :cond_11
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-ge v2, p3, :cond_13

    if-lez v1, :cond_13

    .line 230
    rem-int/lit8 v2, v0, 0x3

    aget-object v2, v6, v2

    iget-object v3, p0, Lcom/ibm/icu/text/ThaiBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    invoke-virtual {v2, p1, v3, p3}, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/DictionaryMatcher;I)I

    move-result v2

    if-gtz v2, :cond_16

    sget-object v3, Lcom/ibm/icu/text/ThaiBreakEngine;->fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 231
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v2

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 232
    const/16 v3, 0xe2f

    if-ne v2, v3, :cond_12

    .line 233
    sget-object v3, Lcom/ibm/icu/text/ThaiBreakEngine;->fSuffixSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->previous()C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 235
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    .line 236
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    .line 237
    add-int/lit8 v2, v1, 0x1

    .line 238
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v1

    move v9, v1

    move v1, v2

    move v2, v9

    .line 244
    :cond_12
    :goto_7
    const/16 v3, 0xe46

    if-ne v2, v3, :cond_13

    .line 245
    invoke-interface {p1}, Ljava/text/CharacterIterator;->previous()C

    move-result v2

    const/16 v3, 0xe46

    if-eq v2, v3, :cond_15

    .line 247
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    .line 248
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 261
    :cond_13
    :goto_8
    if-lez v1, :cond_3

    .line 262
    add-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    goto/16 :goto_2

    .line 241
    :cond_14
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_7

    .line 252
    :cond_15
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_8

    .line 256
    :cond_16
    add-int v2, v7, v1

    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_8

    .line 267
    :cond_17
    invoke-virtual {p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v1

    if-lt v1, p3, :cond_0

    .line 268
    invoke-virtual {p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_18
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 88
    instance-of v0, p1, Lcom/ibm/icu/text/ThaiBreakEngine;

    return v0
.end method

.method public handles(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-eq p2, v0, :cond_0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 97
    :cond_0
    const/16 v2, 0x100a

    invoke-static {p1, v2}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v2

    .line 98
    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    :goto_0
    move v1, v0

    .line 100
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
