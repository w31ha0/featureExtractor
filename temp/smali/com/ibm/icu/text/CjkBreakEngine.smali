.class Lcom/ibm/icu/text/CjkBreakEngine;
.super Lcom/ibm/icu/text/DictionaryBreakEngine;
.source "CjkBreakEngine.java"


# static fields
.field private static final fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 22
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 23
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 24
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 26
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[\\uac00-\\ud7a3]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 27
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:Han:]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 28
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Katakana:]\\uff9e\\uff9f]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 29
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:Hiragana:]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 32
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 33
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 34
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 35
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 41
    new-array v0, v2, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    .line 42
    const-string/jumbo v0, "Hira"

    invoke-static {v0}, Lcom/ibm/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Lcom/ibm/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/CjkBreakEngine;->setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 54
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 47
    sget-object v1, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 48
    sget-object v1, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 49
    sget-object v1, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 50
    const v1, 0xff70

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 51
    const/16 v1, 0x30fc

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 52
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/CjkBreakEngine;->setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0
.end method

.method private static getKatakanaCost(I)I
    .locals 2

    .prologue
    .line 75
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 76
    const/16 v1, 0x8

    if-le p0, v1, :cond_0

    const/16 v0, 0x2000

    :goto_0
    return v0

    :cond_0
    aget v0, v0, p0

    goto :goto_0

    .line 75
    nop

    :array_0
    .array-data 4
        0x2000
        0x3d8
        0x198
        0xf0
        0xcc
        0xfc
        0x12c
        0x174
        0x1e0
    .end array-data
.end method

.method private static isKatakana(I)Z
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x30a1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-ne p0, v0, :cond_1

    :cond_0
    const v0, 0xff66

    if-lt p0, v0, :cond_2

    const v0, 0xff9f

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 16

    .prologue
    .line 87
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    .line 88
    const/4 v2, 0x0

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 91
    :cond_1
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 93
    sub-int v2, p3, p2

    .line 94
    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [I

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 97
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    move/from16 v0, p3

    if-ge v3, v0, :cond_2

    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    sget-object v2, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {v6, v2}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    const/4 v3, 0x0

    .line 103
    invoke-static {v6, v2, v3}, Lcom/ibm/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 105
    :goto_2
    const/4 v3, 0x0

    .line 106
    if-eqz v2, :cond_6

    .line 107
    new-instance v4, Ljava/text/StringCharacterIterator;

    invoke-direct {v4, v6}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x0

    .line 109
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v5, v7

    .line 110
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 111
    invoke-virtual {v6, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 112
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v2, v7

    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    aput v2, v5, v3

    goto :goto_3

    .line 103
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move v9, v3

    move-object v10, v5

    move-object v3, v4

    .line 133
    :goto_4
    add-int/lit8 v2, v9, 0x1

    new-array v13, v2, [I

    .line 134
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v13, v2

    .line 135
    const/4 v2, 0x1

    :goto_5
    if-gt v2, v9, :cond_7

    .line 136
    const v4, 0x7fffffff

    aput v4, v13, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 117
    :cond_6
    sget-object v2, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {v6, v2}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v4, Ljava/text/StringCharacterIterator;

    invoke-direct {v4, v2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [I

    .line 120
    new-instance v7, Lcom/ibm/icu/text/Normalizer;

    sget-object v2, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v2, v8}, Lcom/ibm/icu/text/Normalizer;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)V

    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v6, 0x0

    const/4 v8, 0x0

    aput v8, v5, v6

    .line 123
    :goto_6
    invoke-virtual {v7}, Lcom/ibm/icu/text/Normalizer;->endIndex()I

    move-result v6

    if-ge v2, v6, :cond_1a

    .line 124
    invoke-virtual {v7}, Lcom/ibm/icu/text/Normalizer;->next()I

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    invoke-virtual {v7}, Lcom/ibm/icu/text/Normalizer;->getIndex()I

    move-result v2

    .line 127
    aput v2, v5, v3

    goto :goto_6

    .line 139
    :cond_7
    add-int/lit8 v2, v9, 0x1

    new-array v14, v2, [I

    .line 140
    const/4 v2, 0x0

    :goto_7
    if-gt v2, v9, :cond_8

    .line 141
    const/4 v4, -0x1

    aput v4, v14, v2

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 145
    :cond_8
    new-array v8, v9, [I

    .line 146
    new-array v5, v9, [I

    .line 148
    const/4 v11, 0x0

    .line 149
    const/4 v2, 0x0

    move v12, v2

    :goto_8
    if-ge v12, v9, :cond_11

    .line 150
    invoke-interface {v3, v12}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 151
    aget v2, v13, v12

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_a

    move v2, v11

    .line 149
    :cond_9
    :goto_9
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move v11, v2

    goto :goto_8

    .line 155
    :cond_a
    add-int/lit8 v2, v12, 0x14

    if-ge v2, v9, :cond_e

    const/16 v4, 0x14

    .line 156
    :goto_a
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    move v7, v4

    invoke-virtual/range {v2 .. v8}, Lcom/ibm/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    .line 158
    const/4 v2, 0x0

    aget v2, v6, v2

    .line 165
    invoke-interface {v3, v12}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 166
    if-eqz v2, :cond_b

    const/4 v4, 0x0

    aget v4, v5, v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_c

    :cond_b
    invoke-static {v3}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v4

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_c

    sget-object v4, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v3}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 167
    const/16 v4, 0xff

    aput v4, v8, v2

    .line 168
    const/4 v4, 0x1

    aput v4, v5, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 172
    :cond_c
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_f

    .line 173
    aget v6, v13, v12

    aget v7, v8, v4

    add-int/2addr v6, v7

    .line 174
    aget v7, v5, v4

    add-int/2addr v7, v12

    aget v7, v13, v7

    if-ge v6, v7, :cond_d

    .line 175
    aget v7, v5, v4

    add-int/2addr v7, v12

    aput v6, v13, v7

    .line 176
    aget v6, v5, v4

    add-int/2addr v6, v12

    aput v12, v14, v6

    .line 172
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 155
    :cond_e
    sub-int v4, v9, v12

    goto :goto_a

    .line 185
    :cond_f
    invoke-static {v3}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v2

    .line 186
    if-nez v11, :cond_9

    if-eqz v2, :cond_9

    .line 187
    add-int/lit8 v4, v12, 0x1

    .line 188
    invoke-static {v3}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 189
    :goto_c
    if-ge v4, v9, :cond_10

    sub-int v6, v4, v12

    const/16 v7, 0x14

    if-ge v6, v7, :cond_10

    invoke-static {v3}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v6

    invoke-static {v6}, Lcom/ibm/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 190
    invoke-static {v3}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 194
    :cond_10
    sub-int v6, v4, v12

    const/16 v7, 0x14

    if-ge v6, v7, :cond_9

    .line 195
    aget v6, v13, v12

    sub-int v7, v4, v12

    invoke-static {v7}, Lcom/ibm/icu/text/CjkBreakEngine;->getKatakanaCost(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 196
    aget v7, v13, v4

    if-ge v6, v7, :cond_9

    .line 197
    aput v6, v13, v4

    .line 198
    aput v12, v14, v4

    goto/16 :goto_9

    .line 205
    :cond_11
    add-int/lit8 v2, v9, 0x1

    new-array v4, v2, [I

    .line 206
    const/4 v3, 0x0

    .line 207
    aget v2, v13, v9

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_15

    .line 208
    aput v9, v4, v3

    .line 209
    const/4 v2, 0x1

    .line 218
    :goto_d
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v3

    move/from16 v0, p2

    if-ge v3, v0, :cond_13

    .line 219
    :cond_12
    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x0

    aput v5, v4, v2

    move v2, v3

    .line 222
    :cond_13
    const/4 v3, 0x0

    .line 223
    add-int/lit8 v2, v2, -0x1

    move v15, v2

    move v2, v3

    move v3, v15

    :goto_e
    if-ltz v3, :cond_18

    .line 224
    aget v5, v4, v3

    aget v5, v10, v5

    add-int v5, v5, p2

    .line 225
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->contains(I)Z

    move-result v6

    if-nez v6, :cond_14

    move/from16 v0, p2

    if-eq v5, v0, :cond_14

    .line 226
    aget v5, v4, v3

    aget v5, v10, v5

    add-int v5, v5, p2

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 223
    :cond_14
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 211
    :cond_15
    :goto_f
    if-lez v9, :cond_16

    .line 212
    aput v9, v4, v3

    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 211
    aget v9, v14, v9

    goto :goto_f

    .line 215
    :cond_16
    add-int/lit8 v2, v3, -0x1

    aget v2, v4, v2

    aget v2, v14, v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    move v2, v3

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    goto :goto_10

    .line 231
    :cond_18
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_19

    .line 232
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    .line 233
    add-int/lit8 v2, v2, -0x1

    .line 235
    :cond_19
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto/16 :goto_0

    :cond_1a
    move v9, v3

    move-object v10, v5

    move-object v3, v4

    goto/16 :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 58
    instance-of v0, p1, Lcom/ibm/icu/text/CjkBreakEngine;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/ibm/icu/text/CjkBreakEngine;

    .line 60
    iget-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object v1, p1, Lcom/ibm/icu/text/CjkBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
