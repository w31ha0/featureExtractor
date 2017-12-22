.class public final Lcom/ibm/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# static fields
.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

.field private static final segmentStarterMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;


# instance fields
.field private canonIterData:Lcom/ibm/icu/impl/Trie2_32;

.field private canonStartSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field

.field private dataVersion:Lcom/ibm/icu/util/VersionInfo;

.field private extraData:Ljava/lang/String;

.field private limitNoNo:I

.field private maybeYesCompositions:Ljava/lang/String;

.field private minCompNoMaybeCP:I

.field private minDecompNoCP:I

.field private minMaybeYes:I

.field private minNoNo:I

.field private minYesNo:I

.field private minYesNoMappingsOnly:I

.field private normTrie:Lcom/ibm/icu/impl/Trie2_16;

.field private smallFCD:[B

.field private tccc180:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 424
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl$1;)V

    sput-object v0, Lcom/ibm/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    .line 566
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/Normalizer2Impl;->segmentStarterMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToStartSet(Lcom/ibm/icu/impl/Trie2Writable;II)V
    .locals 4

    .prologue
    const/high16 v3, 0x200000

    const v2, 0x1fffff

    .line 2169
    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    .line 2170
    const v1, 0x3fffff

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 2173
    or-int/2addr v0, p2

    invoke-virtual {p1, p3, v0}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 2190
    :goto_0
    return-void

    .line 2177
    :cond_0
    and-int v1, v0, v3

    if-nez v1, :cond_2

    .line 2178
    and-int v1, v0, v2

    .line 2179
    const/high16 v2, -0x200000

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    or-int/2addr v0, v2

    .line 2180
    invoke-virtual {p1, p3, v0}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 2181
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    if-eqz v1, :cond_1

    .line 2183
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 2188
    :cond_1
    :goto_1
    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 2186
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1
.end method

.method private static combine(Ljava/lang/String;II)I
    .locals 4

    .prologue
    .line 1828
    const/16 v0, 0x3400

    if-ge p2, v0, :cond_2

    .line 1831
    shl-int/lit8 v0, p2, 0x1

    .line 1832
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v0, v1, :cond_0

    .line 1833
    and-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    goto :goto_0

    .line 1835
    :cond_0
    and-int/lit16 v2, v1, 0x7ffe

    if-ne v0, v2, :cond_4

    .line 1836
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_1

    .line 1837
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    .line 1868
    :goto_1
    return v0

    .line 1839
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 1845
    :cond_2
    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, -0x2

    add-int/lit16 v0, v0, 0x3400

    .line 1846
    shl-int/lit8 v1, p2, 0x6

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 1849
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le v0, v2, :cond_3

    .line 1850
    and-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    goto :goto_2

    .line 1851
    :cond_3
    and-int/lit16 v3, v2, 0x7ffe

    if-ne v0, v3, :cond_4

    .line 1852
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v1, v3, :cond_6

    .line 1853
    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 1868
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 1856
    :cond_5
    add-int/lit8 p1, p1, 0x3

    goto :goto_2

    .line 1858
    :cond_6
    const v0, 0xffc0

    and-int/2addr v0, v3

    if-ne v1, v0, :cond_4

    .line 1859
    const v0, -0xffc1

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method private decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 6

    .prologue
    .line 1774
    :goto_0
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    invoke-static {p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    .line 1798
    :goto_1
    return-void

    .line 1777
    :cond_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    invoke-static {p1, p3}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    goto :goto_1

    .line 1780
    :cond_1
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1781
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 1782
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p2

    goto :goto_0

    .line 1786
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1787
    and-int/lit8 v3, v0, 0x1f

    .line 1789
    shr-int/lit8 v5, v0, 0x8

    .line 1790
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 1791
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shr-int/lit8 v4, v0, 0x8

    .line 1795
    :goto_2
    add-int/lit8 v2, p2, 0x1

    .line 1796
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v3, v2

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    goto :goto_1

    .line 1793
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private enumNorm16PropertyStartsRange(IIILcom/ibm/icu/text/UnicodeSet;)V
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p4, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 516
    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    .line 520
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, p2, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    .line 522
    if-eq v0, v1, :cond_1

    .line 523
    invoke-virtual {p4, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :goto_1
    move v1, v0

    .line 526
    goto :goto_0

    .line 528
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private findNextCompBoundary(Ljava/lang/CharSequence;II)I
    .locals 2

    .prologue
    .line 2136
    :goto_0
    if-ge p2, p3, :cond_0

    .line 2137
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2138
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v1

    .line 2139
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2144
    :cond_0
    return p2

    .line 2142
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 2143
    goto :goto_0
.end method

.method private findNextFCDBoundary(Ljava/lang/CharSequence;II)I
    .locals 3

    .prologue
    .line 2158
    :goto_0
    if-ge p2, p3, :cond_0

    .line 2159
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2160
    const/16 v1, 0x300

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    .line 2165
    :cond_0
    return p2

    .line 2163
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 2164
    goto :goto_0
.end method

.method private findPreviousCompBoundary(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 2124
    move v0, p2

    :cond_0
    if-lez v0, :cond_1

    .line 2125
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2126
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2127
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2133
    :cond_1
    return v0
.end method

.method private findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 2148
    move v0, p2

    :cond_0
    if-lez v0, :cond_1

    .line 2149
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2150
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2151
    const/16 v2, 0x300

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 2155
    :cond_1
    return v0
.end method

.method private getCCFromNoNo(I)I
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCCFromYesOrMaybe(I)I
    .locals 1

    .prologue
    .line 697
    const v0, 0xfe00

    if-lt p0, v0, :cond_0

    and-int/lit16 v0, p0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCompositionsListForComposite(I)I
    .locals 3

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1742
    const v1, 0xfe00

    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method private getCompositionsListForDecompYes(I)I
    .locals 2

    .prologue
    const v1, 0xfe00

    .line 1724
    if-eqz p1, :cond_0

    if-gt v1, p1, :cond_2

    .line 1725
    :cond_0
    const/4 v0, -0x1

    .line 1733
    :cond_1
    :goto_0
    return v0

    .line 1727
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    .line 1731
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private hasCompBoundaryBefore(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2103
    :goto_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    const/4 v0, 0x1

    .line 2119
    :cond_0
    :goto_1
    return v0

    .line 2105
    :cond_1
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2107
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2108
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 2109
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p2

    goto :goto_0

    .line 2112
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2113
    and-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_0

    .line 2116
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 2119
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v0

    goto :goto_1
.end method

.method private isCompYesAndZeroCC(I)Z
    .locals 1

    .prologue
    .line 1659
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDecompNoAlgorithmic(I)Z
    .locals 1

    .prologue
    .line 1682
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDecompYesAndZeroCC(I)Z
    .locals 1

    .prologue
    .line 1670
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_0

    const v0, 0xff00

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_1

    const v0, 0xfe00

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHangul(I)Z
    .locals 1

    .prologue
    .line 1658
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInert(I)Z
    .locals 1

    .prologue
    .line 1655
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJamoVT(I)Z
    .locals 1

    .prologue
    .line 1657
    const v0, 0xff00

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaybe(I)Z
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_0

    const v0, 0xff00

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaybeOrNonZeroCC(I)Z
    .locals 1

    .prologue
    .line 1654
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMostDecompYesAndZeroCC(I)Z
    .locals 1

    .prologue
    .line 1680
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_0

    const v0, 0xfe00

    if-eq p1, v0, :cond_0

    const v0, 0xff00

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapAlgorithmic(II)I
    .locals 2

    .prologue
    .line 1714
    add-int v0, p1, p2

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    add-int/lit8 v1, v1, -0x40

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private recompose(Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V
    .locals 9

    .prologue
    .line 1905
    invoke-virtual {p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1907
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2047
    :goto_0
    return-void

    .line 1920
    :cond_0
    const/4 v2, -0x1

    .line 1921
    const/4 v3, -0x1

    .line 1922
    const/4 v0, 0x0

    .line 1923
    const/4 v1, 0x0

    move v4, v3

    move v3, v2

    .line 1926
    :goto_1
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v6

    .line 1927
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    .line 1928
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v7

    .line 1929
    invoke-static {v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v2

    .line 1931
    invoke-direct {p0, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    move-result v8

    if-eqz v8, :cond_b

    if-ltz v3, :cond_b

    if-lt v1, v2, :cond_1

    if-nez v1, :cond_b

    .line 1937
    :cond_1
    invoke-static {v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1939
    const/16 v2, 0x11a7

    if-ge v6, v2, :cond_3

    .line 1941
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    add-int/lit16 v2, v2, -0x1100

    int-to-char v2, v2

    .line 1942
    const/16 v3, 0x13

    if-ge v2, v3, :cond_3

    .line 1943
    add-int/lit8 v3, p2, -0x1

    .line 1944
    const v7, 0xac00

    mul-int/lit8 v2, v2, 0x15

    add-int/lit16 v6, v6, -0x1161

    add-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v2, v7

    int-to-char v2, v2

    .line 1949
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eq p2, v6, :cond_2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    add-int/lit16 v6, v6, -0x11a7

    int-to-char v6, v6

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_2

    .line 1950
    add-int/lit8 p2, p2, 0x1

    .line 1951
    add-int/2addr v2, v6

    int-to-char v2, v2

    .line 1953
    :cond_2
    invoke-virtual {v5, v4, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1955
    invoke-virtual {v5, v3, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move p2, v3

    .line 1965
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 2046
    :cond_4
    invoke-virtual {p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    goto :goto_0

    .line 1968
    :cond_5
    const/4 v2, -0x1

    move v3, v2

    .line 1969
    goto :goto_1

    .line 1970
    :cond_6
    iget-object v8, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-static {v8, v3, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result v8

    if-ltz v8, :cond_b

    .line 1972
    shr-int/lit8 v3, v8, 0x1

    .line 1975
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int v2, p2, v2

    .line 1976
    invoke-virtual {v5, v2, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1979
    if-eqz v0, :cond_8

    .line 1980
    const v7, 0xffff

    if-le v3, v7, :cond_7

    .line 1982
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1983
    add-int/lit8 v6, v4, 0x1

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move p2, v2

    .line 2006
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eq p2, v2, :cond_4

    .line 2010
    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_a

    .line 2012
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v2

    move v3, v2

    goto/16 :goto_1

    .line 1985
    :cond_7
    int-to-char v0, v6

    invoke-virtual {v5, v4, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1986
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1989
    const/4 v0, 0x0

    .line 1990
    add-int/lit8 p2, v2, -0x1

    goto :goto_2

    .line 1992
    :cond_8
    const v6, 0xffff

    if-le v3, v6, :cond_9

    .line 1995
    const/4 v0, 0x1

    .line 1996
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1997
    add-int/lit8 v6, v4, 0x1

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1998
    add-int/lit8 p2, v2, 0x1

    goto :goto_2

    .line 2001
    :cond_9
    int-to-char v6, v3

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move p2, v2

    goto :goto_2

    .line 2014
    :cond_a
    const/4 v2, -0x1

    move v3, v2

    .line 2018
    goto/16 :goto_1

    .line 2024
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq p2, v1, :cond_4

    .line 2029
    if-nez v2, :cond_d

    .line 2031
    invoke-direct {p0, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v1

    if-ltz v1, :cond_f

    .line 2033
    const v0, 0xffff

    if-gt v6, v0, :cond_c

    .line 2034
    const/4 v0, 0x0

    .line 2035
    add-int/lit8 v3, p2, -0x1

    move v4, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_1

    .line 2037
    :cond_c
    const/4 v0, 0x1

    .line 2038
    add-int/lit8 v3, p2, -0x2

    move v4, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_1

    .line 2041
    :cond_d
    if-eqz p3, :cond_e

    .line 2043
    const/4 v1, -0x1

    move v3, v1

    move v1, v2

    goto/16 :goto_1

    :cond_e
    move v1, v2

    goto/16 :goto_1

    :cond_f
    move v3, v1

    move v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public addCanonIterPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Normalizer2Impl;->ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 559
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;

    sget-object v1, Lcom/ibm/icu/impl/Normalizer2Impl;->segmentStarterMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Trie2_32;->iterator(Lcom/ibm/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object v1

    .line 561
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 563
    iget v0, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method public addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 5

    .prologue
    const v4, 0xd7a4

    .line 541
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 543
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 544
    iget v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v0, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v0, v0, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->enumNorm16PropertyStartsRange(IIILcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 548
    :cond_0
    const v0, 0xac00

    :goto_1
    if-ge v0, v4, :cond_1

    .line 549
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 550
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 548
    add-int/lit8 v0, v0, 0x1c

    goto :goto_1

    .line 552
    :cond_1
    invoke-virtual {p1, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 553
    return-void
.end method

.method public compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z
    .locals 11

    .prologue
    .line 1054
    iget v8, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    .line 1070
    const/4 v3, 0x0

    .line 1071
    const/4 v2, 0x0

    .line 1074
    const/4 v1, 0x0

    move v5, p2

    :goto_0
    move v4, v5

    .line 1078
    :goto_1
    if-eq v4, p3, :cond_1c

    .line 1079
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v8, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    int-to-char v6, v3

    .line 1080
    invoke-virtual {v2, v6}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1082
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1083
    :cond_1
    int-to-char v6, v3

    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_3

    move v10, v2

    move v2, v4

    move v4, v3

    move v3, v10

    .line 1105
    :goto_2
    if-eq v2, v5, :cond_8

    .line 1106
    if-ne v2, p3, :cond_5

    .line 1107
    if-eqz p5, :cond_2

    .line 1108
    move-object/from16 v0, p6

    invoke-virtual {v0, p1, v5, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1287
    :cond_2
    const/4 v1, 0x1

    :goto_3
    return v1

    .line 1087
    :cond_3
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1088
    add-int/lit8 v2, v4, 0x1

    if-eq v2, p3, :cond_1b

    add-int/lit8 v2, v4, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1089
    int-to-char v3, v3

    invoke-static {v3, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v3, v4

    .line 1097
    :goto_4
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1098
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    move v10, v4

    move v4, v3

    move v3, v2

    move v2, v10

    goto :goto_1

    .line 1092
    :cond_4
    if-ge v5, v4, :cond_1b

    add-int/lit8 v2, v4, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1093
    add-int/lit8 v4, v4, -0x1

    .line 1094
    int-to-char v3, v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v3, v4

    goto :goto_4

    .line 1113
    :cond_5
    add-int/lit8 p2, v2, -0x1

    .line 1114
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_6

    if-ge v5, p2, :cond_6

    add-int/lit8 v6, p2, -0x1

    .line 1115
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1117
    add-int/lit8 p2, p2, -0x1

    .line 1119
    :cond_6
    if-eqz p5, :cond_7

    .line 1122
    move-object/from16 v0, p6

    invoke-virtual {v0, p1, v5, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1123
    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_5
    move v6, v2

    move v5, p2

    .line 1133
    :goto_6
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int p2, v2, v7

    .line 1141
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eq v5, v6, :cond_f

    .line 1142
    add-int/lit8 v2, v6, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 1143
    const/4 v2, 0x0

    .line 1144
    const/16 v9, 0x11a7

    if-ge v4, v9, :cond_c

    .line 1146
    add-int/lit16 v7, v7, -0x1100

    int-to-char v7, v7

    .line 1147
    const/16 v9, 0x13

    if-ge v7, v9, :cond_b

    .line 1148
    if-nez p5, :cond_9

    .line 1149
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1125
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 1129
    :cond_8
    if-eq v2, p3, :cond_2

    move v6, v5

    move v5, p2

    goto :goto_6

    .line 1151
    :cond_9
    const v2, 0xac00

    mul-int/lit8 v7, v7, 0x15

    add-int/lit16 v9, v4, -0x1161

    add-int/2addr v7, v9

    mul-int/lit8 v7, v7, 0x1c

    add-int/2addr v2, v7

    int-to-char v2, v2

    .line 1156
    if-eq p2, p3, :cond_a

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit16 v7, v7, -0x11a7

    int-to-char v7, v7

    const/16 v9, 0x1c

    if-ge v7, v9, :cond_a

    .line 1157
    add-int/lit8 p2, p2, 0x1

    .line 1158
    add-int/2addr v2, v7

    int-to-char v2, v2

    .line 1160
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    move v2, v3

    move v5, p2

    move v3, v4

    .line 1161
    goto/16 :goto_0

    .line 1172
    :cond_a
    const/4 v2, 0x1

    .line 1184
    :cond_b
    if-nez v2, :cond_f

    .line 1186
    if-eqz p5, :cond_e

    .line 1187
    int-to-char v2, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move v2, v3

    move v3, v4

    move v10, v5

    move v5, p2

    move p2, v10

    goto/16 :goto_0

    .line 1174
    :cond_c
    invoke-static {v7}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1177
    if-nez p5, :cond_d

    .line 1178
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1180
    :cond_d
    add-int v2, v7, v4

    add-int/lit16 v2, v2, -0x11a7

    int-to-char v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    move v2, v3

    move v5, p2

    move v3, v4

    .line 1182
    goto/16 :goto_0

    .line 1189
    :cond_e
    const/4 v1, 0x0

    move v2, v3

    move v3, v4

    move v10, v5

    move v5, p2

    move p2, v10

    .line 1191
    goto/16 :goto_0

    .line 1216
    :cond_f
    const v2, 0xff01

    if-lt v3, v2, :cond_14

    .line 1217
    and-int/lit16 v2, v3, 0xff

    .line 1218
    if-eqz p4, :cond_11

    if-eqz p5, :cond_10

    .line 1219
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getLastCC()I

    move-result v7

    :goto_7
    if-nez v7, :cond_11

    if-ge v5, v6, :cond_11

    .line 1228
    invoke-virtual {p0, p1, v5, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    move-result v7

    if-le v7, v2, :cond_11

    .line 1231
    if-nez p5, :cond_15

    .line 1232
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_10
    move v7, v1

    .line 1219
    goto :goto_7

    .line 1234
    :cond_11
    if-eqz p5, :cond_12

    .line 1235
    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    move v2, v3

    move v3, v4

    move v10, v5

    move v5, p2

    move p2, v10

    .line 1236
    goto/16 :goto_0

    .line 1237
    :cond_12
    if-gt v1, v2, :cond_13

    move v1, v2

    move v2, v3

    move v3, v4

    move v10, v5

    move v5, p2

    move p2, v10

    .line 1239
    goto/16 :goto_0

    .line 1241
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1243
    :cond_14
    if-nez p5, :cond_15

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1244
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1262
    :cond_15
    invoke-direct {p0, v4, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v2

    if-eqz v2, :cond_17

    move v5, v6

    .line 1270
    :cond_16
    :goto_8
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 1273
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v2

    .line 1274
    move-object/from16 v0, p6

    invoke-virtual {p0, p1, v5, p2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 1275
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v2, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->recompose(Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    .line 1276
    if-nez p5, :cond_19

    .line 1277
    move-object/from16 v0, p6

    invoke-virtual {v0, p1, v5, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->equals(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1278
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1264
    :cond_17
    if-eqz p5, :cond_16

    .line 1265
    sub-int v2, v6, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    goto :goto_8

    .line 1280
    :cond_18
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    .line 1281
    const/4 v1, 0x0

    :cond_19
    move v2, v3

    move v5, p2

    move v3, v4

    .line 1286
    goto/16 :goto_0

    :cond_1a
    move v10, v4

    move v4, v2

    move v2, v3

    move v3, v10

    goto/16 :goto_2

    :cond_1b
    move v2, v3

    move v3, v4

    goto/16 :goto_4

    :cond_1c
    move v10, v2

    move v2, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_2
.end method

.method public composeAndAppend(Ljava/lang/CharSequence;ZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1397
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1398
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    invoke-direct {p0, p1, v2, v8}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    move-result v7

    .line 1400
    if-eqz v7, :cond_0

    .line 1401
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1402
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v1

    .line 1401
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1405
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v3, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1406
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v3

    sub-int v0, v3, v0

    invoke-virtual {p4, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1407
    invoke-virtual {v1, p1, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object v0, p0

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move v2, v7

    .line 1412
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v3, v8

    move v4, p3

    move-object v6, p4

    .line 1413
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    .line 1417
    :goto_0
    return-void

    .line 1415
    :cond_1
    invoke-virtual {p4, p1, v2, v8}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_0
.end method

.method public composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1299
    .line 1300
    iget v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    move v0, v1

    move v2, v1

    move v3, p2

    :cond_0
    :goto_0
    move v5, v3

    .line 1315
    :goto_1
    if-ne v5, p3, :cond_1

    .line 1316
    shl-int/lit8 v0, v5, 0x1

    or-int/2addr v0, v2

    .line 1390
    :goto_2
    return v0

    .line 1318
    :cond_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_2

    iget-object v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    int-to-char v7, v4

    .line 1319
    invoke-virtual {v6, v7}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1321
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1322
    :cond_3
    int-to-char v7, v4

    invoke-static {v7}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v6

    move v8, v4

    move v6, v5

    .line 1343
    :goto_3
    if-eq v6, v3, :cond_c

    .line 1345
    add-int/lit8 v0, v6, -0x1

    .line 1346
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v3, v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    .line 1347
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1349
    add-int/lit8 v0, v0, -0x1

    :cond_4
    move v4, v1

    move v5, v6

    move p2, v0

    .line 1356
    :goto_4
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int v3, v6, v0

    .line 1362
    invoke-direct {p0, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1363
    invoke-static {v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v0

    .line 1364
    if-eqz p4, :cond_9

    if-eqz v0, :cond_9

    if-nez v4, :cond_9

    if-ge p2, v5, :cond_9

    .line 1375
    invoke-virtual {p0, p1, p2, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    move-result v5

    if-le v5, v0, :cond_9

    .line 1390
    :cond_5
    shl-int/lit8 v0, p2, 0x1

    goto :goto_2

    .line 1326
    :cond_6
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1327
    add-int/lit8 v6, v5, 0x1

    if-eq v6, p3, :cond_7

    add-int/lit8 v6, v5, 0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1328
    int-to-char v4, v4

    invoke-static {v4, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 1336
    :cond_7
    :goto_5
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1337
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_1

    .line 1331
    :cond_8
    if-ge v3, v5, :cond_7

    add-int/lit8 v6, v5, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1332
    add-int/lit8 v5, v5, -0x1

    .line 1333
    int-to-char v4, v4

    invoke-static {v6, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_5

    .line 1378
    :cond_9
    if-le v4, v0, :cond_a

    if-nez v0, :cond_5

    .line 1380
    :cond_a
    const v4, 0xff01

    if-ge v7, v4, :cond_0

    .line 1381
    if-nez p5, :cond_b

    .line 1382
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1384
    :cond_b
    shl-int/lit8 v0, p2, 0x1

    goto/16 :goto_2

    :cond_c
    move v4, v0

    move v5, v3

    goto :goto_4

    :cond_d
    move v7, v6

    move v8, v4

    move v6, v5

    goto/16 :goto_3
.end method

.method public decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 950
    iget v7, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    move v0, v1

    move v2, v1

    move v3, v1

    move v6, p2

    :goto_0
    move v5, v3

    move v4, v6

    .line 962
    :goto_1
    if-eq v4, p3, :cond_d

    .line 963
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    int-to-char v5, v3

    .line 964
    invoke-virtual {v2, v5}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 966
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_1

    .line 967
    :cond_1
    int-to-char v5, v3

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    move v8, v2

    move v2, v4

    move v4, v8

    .line 989
    :goto_2
    if-eq v2, v6, :cond_2

    .line 990
    if-eqz p4, :cond_6

    .line 991
    invoke-virtual {p4, p1, v6, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 997
    :cond_2
    :goto_3
    if-ne v2, p3, :cond_7

    move p2, v2

    .line 1019
    :cond_3
    return p2

    .line 971
    :cond_4
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 972
    add-int/lit8 v2, v4, 0x1

    if-eq v2, p3, :cond_c

    add-int/lit8 v2, v4, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 973
    int-to-char v3, v3

    invoke-static {v3, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v3, v4

    .line 981
    :goto_4
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 982
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    move v5, v2

    move v2, v4

    move v4, v3

    goto :goto_1

    .line 976
    :cond_5
    if-ge v6, v4, :cond_c

    add-int/lit8 v2, v4, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 977
    add-int/lit8 v4, v4, -0x1

    .line 978
    int-to-char v3, v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v3, v4

    goto :goto_4

    :cond_6
    move v0, v1

    move p2, v2

    .line 994
    goto :goto_3

    .line 1002
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 1003
    if-eqz p4, :cond_8

    .line 1004
    invoke-direct {p0, v5, v4, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    move v2, v4

    move v6, v3

    move v3, v5

    goto/16 :goto_0

    .line 1006
    :cond_8
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1007
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v2

    .line 1008
    if-le v0, v2, :cond_9

    if-nez v2, :cond_3

    .line 1010
    :cond_9
    const/4 v0, 0x1

    if-gt v2, v0, :cond_a

    move v0, v2

    move p2, v3

    move v6, v3

    move v3, v5

    move v2, v4

    .line 1011
    goto/16 :goto_0

    :cond_a
    move v0, v2

    move v6, v3

    move v3, v5

    move v2, v4

    goto/16 :goto_0

    :cond_b
    move v5, v2

    move v2, v3

    goto/16 :goto_2

    :cond_c
    move v2, v3

    move v3, v4

    goto :goto_4

    :cond_d
    move v8, v2

    move v2, v4

    move v4, v8

    goto/16 :goto_2
.end method

.method public decomposeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1022
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1023
    if-nez v6, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1026
    :cond_0
    if-eqz p2, :cond_1

    .line 1027
    invoke-virtual {p0, p1, v2, v6, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    goto :goto_0

    .line 1031
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1034
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v4

    move v5, v4

    move v3, v2

    move v1, v0

    move v0, v4

    .line 1035
    :goto_1
    if-eqz v5, :cond_3

    .line 1037
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1038
    if-lt v3, v6, :cond_2

    :goto_2
    move-object v0, p3

    move-object v1, p1

    .line 1044
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    .line 1045
    invoke-virtual {p3, p1, v3, v6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_0

    .line 1041
    :cond_2
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1042
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v0

    move v7, v0

    move v0, v5

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v0

    goto :goto_2
.end method

.method public decomposeShort(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2

    .prologue
    .line 1763
    :goto_0
    if-ge p2, p3, :cond_0

    .line 1764
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1765
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 1766
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    goto :goto_0

    .line 1768
    :cond_0
    return-void
.end method

.method public declared-synchronized ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 15

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v12, -0x80000000

    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;

    if-nez v0, :cond_a

    .line 594
    new-instance v7, Lcom/ibm/icu/impl/Trie2Writable;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcom/ibm/icu/impl/Trie2Writable;-><init>(II)V

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    .line 596
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 598
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_9

    .line 599
    iget v5, v0, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    .line 600
    if-eqz v5, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v1, v5, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v5, v1, :cond_0

    .line 609
    :cond_1
    iget v6, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    :goto_0
    iget v1, v0, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    if-gt v6, v1, :cond_0

    .line 610
    invoke-virtual {v7, v6}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    .line 612
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v5, v1, :cond_4

    .line 614
    or-int v1, v2, v12

    .line 615
    const v3, 0xfe00

    if-ge v5, v3, :cond_2

    .line 616
    or-int/2addr v1, v13

    .line 662
    :cond_2
    :goto_1
    if-eq v1, v2, :cond_3

    .line 663
    invoke-virtual {v7, v6, v1}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 609
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 618
    :cond_4
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v5, v1, :cond_5

    .line 619
    or-int v1, v2, v13

    goto :goto_1

    :cond_5
    move v3, v5

    move v1, v6

    .line 624
    :goto_2
    iget v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v4, v3, :cond_6

    iget v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge v3, v4, :cond_6

    .line 625
    invoke-direct {p0, v1, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v3

    .line 626
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    move v14, v1

    move v1, v3

    move v3, v14

    goto :goto_2

    .line 628
    :cond_6
    iget v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v4, v3, :cond_8

    iget v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-ge v3, v4, :cond_8

    .line 630
    iget-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 631
    and-int/lit8 v9, v4, 0x1f

    .line 632
    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    .line 633
    if-ne v6, v1, :cond_b

    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_b

    .line 634
    or-int v1, v2, v12

    .line 638
    :goto_3
    if-eqz v9, :cond_2

    .line 639
    add-int/lit8 v3, v3, 0x1

    .line 641
    add-int/2addr v9, v3

    .line 642
    iget-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 643
    invoke-direct {p0, v7, v6, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->addToStartSet(Lcom/ibm/icu/impl/Trie2Writable;II)V

    .line 647
    iget v10, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v3, v10, :cond_2

    .line 648
    :cond_7
    :goto_4
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v9, :cond_2

    .line 649
    iget-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 650
    invoke-virtual {v7, v4}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v10

    .line 651
    and-int v11, v10, v12

    if-nez v11, :cond_7

    .line 652
    or-int/2addr v10, v12

    invoke-virtual {v7, v4, v10}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 659
    :cond_8
    :try_start_1
    invoke-direct {p0, v7, v6, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->addToStartSet(Lcom/ibm/icu/impl/Trie2Writable;II)V

    move v1, v2

    goto :goto_1

    .line 667
    :cond_9
    invoke-virtual {v7}, Lcom/ibm/icu/impl/Trie2Writable;->toTrie2_32()Lcom/ibm/icu/impl/Trie2_32;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    :cond_a
    monitor-exit p0

    return-object p0

    :cond_b
    move v1, v2

    goto :goto_3
.end method

.method public getCC(I)I
    .locals 1

    .prologue
    .line 688
    const v0, 0xfe00

    if-lt p1, v0, :cond_0

    .line 689
    and-int/lit16 v0, p1, 0xff

    .line 694
    :goto_0
    return v0

    .line 691
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_2

    .line 692
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 694
    :cond_2
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNoNo(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCompQuickCheck(I)I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_0

    const v0, 0xff01

    if-gt v0, p1, :cond_1

    .line 676
    :cond_0
    const/4 v0, 0x1

    .line 680
    :goto_0
    return v0

    .line 677
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_2

    .line 678
    const/4 v0, 0x2

    goto :goto_0

    .line 680
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 766
    const/4 v0, -0x1

    .line 769
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    :cond_0
    if-gez v0, :cond_4

    .line 785
    const/4 v0, 0x0

    .line 787
    :goto_1
    return-object v0

    .line 771
    :cond_1
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 776
    :cond_2
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v0

    move p1, v0

    .line 778
    goto :goto_0

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 782
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 787
    :cond_4
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getFCD16(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 706
    if-gez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v0

    .line 708
    :cond_1
    const/16 v1, 0x180

    if-ge p1, v1, :cond_2

    .line 709
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    aget v0, v0, p1

    goto :goto_0

    .line 710
    :cond_2
    const v1, 0xffff

    if-gt p1, v1, :cond_3

    .line 711
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v0

    goto :goto_0
.end method

.method public getFCD16FromNormData(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 729
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    .line 730
    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v1, v2, :cond_1

    .line 754
    :cond_0
    :goto_1
    return v0

    .line 733
    :cond_1
    const v2, 0xfe00

    if-lt v1, v2, :cond_2

    .line 735
    and-int/lit16 v0, v1, 0xff

    .line 736
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    goto :goto_1

    .line 737
    :cond_2
    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge v1, v2, :cond_0

    .line 739
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 740
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 744
    and-int/lit8 v0, v2, 0x1f

    if-nez v0, :cond_4

    .line 748
    const/16 v0, 0x1ff

    goto :goto_1

    .line 750
    :cond_4
    shr-int/lit8 v0, v2, 0x8

    .line 751
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method public getNorm16(I)I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    return v0
.end method

.method getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I
    .locals 2

    .prologue
    .line 1699
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_0

    .line 1700
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1704
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 1705
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v0, v1, :cond_1

    .line 1706
    const/4 v0, 0x0

    .line 1708
    :goto_1
    return v0

    .line 1702
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    .line 1708
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public hasCompBoundaryAfter(IZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1616
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v3

    .line 1617
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1639
    :cond_0
    :goto_1
    return v0

    .line 1619
    :cond_1
    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v3, v2, :cond_3

    .line 1623
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1624
    :cond_3
    if-eqz p3, :cond_4

    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    :goto_2
    if-lt v3, v2, :cond_5

    move v0, v1

    .line 1625
    goto :goto_1

    .line 1624
    :cond_4
    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    goto :goto_2

    .line 1626
    :cond_5
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1627
    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    .line 1632
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1639
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_7

    if-eqz p2, :cond_0

    const/16 v3, 0x1ff

    if-le v2, v3, :cond_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public hasCompBoundaryBefore(I)Z
    .locals 1

    .prologue
    .line 1612
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

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

.method public hasDecompBoundary(IZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1577
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-ge p1, v2, :cond_1

    move v0, v1

    .line 1605
    :cond_0
    :goto_1
    return v0

    .line 1580
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    .line 1581
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    .line 1582
    goto :goto_1

    .line 1583
    :cond_3
    const v3, 0xfe00

    if-gt v2, v3, :cond_0

    .line 1585
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1586
    invoke-direct {p0, p1, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    .line 1589
    :cond_4
    iget-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1590
    and-int/lit8 v4, v3, 0x1f

    if-eqz v4, :cond_0

    .line 1593
    if-nez p2, :cond_5

    .line 1596
    const/16 v4, 0x1ff

    if-gt v3, v4, :cond_0

    .line 1599
    const/16 v4, 0xff

    if-gt v3, v4, :cond_5

    move v0, v1

    .line 1600
    goto :goto_1

    .line 1605
    :cond_5
    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public hasFCDBoundaryBefore(I)Z
    .locals 2

    .prologue
    .line 1646
    const/16 v0, 0x300

    if-lt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlgorithmicNoNo(I)Z
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanonSegmentStarter(I)Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_32;->get(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompNo(I)Z
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecompInert(I)Z
    .locals 1

    .prologue
    .line 1609
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result v0

    return v0
.end method

.method public isDecompYes(I)Z
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFCDInert(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1651
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 1

    .prologue
    .line 496
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Normalizer2Impl;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 7

    .prologue
    const/16 v6, 0x180

    const/16 v4, 0xd

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 429
    const v1, 0x4e726d32

    :try_start_0
    sget-object v3, Lcom/ibm/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    invoke-static {p1, v1, v3}, Lcom/ibm/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->dataVersion:Lcom/ibm/icu/util/VersionInfo;

    .line 430
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 431
    if-gt v1, v4, :cond_0

    .line 432
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string/jumbo v1, "Normalizer2 data: not enough indexes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 434
    :cond_0
    :try_start_1
    new-array v3, v1, [I

    .line 435
    const/4 v4, 0x0

    mul-int/lit8 v5, v1, 0x4

    aput v5, v3, v4

    .line 436
    :goto_0
    if-ge v0, v1, :cond_1

    .line 437
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    const/16 v0, 0x8

    aget v0, v3, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    .line 441
    const/16 v0, 0x9

    aget v0, v3, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    .line 443
    const/16 v0, 0xa

    aget v0, v3, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    .line 444
    const/16 v0, 0xe

    aget v0, v3, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    .line 445
    const/16 v0, 0xb

    aget v0, v3, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    .line 446
    const/16 v0, 0xc

    aget v0, v3, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    .line 447
    const/16 v0, 0xd

    aget v0, v3, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    .line 450
    const/4 v0, 0x0

    aget v0, v3, v0

    .line 451
    const/4 v1, 0x1

    aget v1, v3, v1

    .line 452
    invoke-static {p1}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    .line 453
    iget-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v4

    .line 454
    sub-int v5, v1, v0

    if-le v4, v5, :cond_2

    .line 455
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string/jumbo v1, "Normalizer2 data: not enough bytes for normTrie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_2
    sub-int v0, v1, v0

    sub-int/2addr v0, v4

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 461
    const/4 v0, 0x2

    aget v0, v3, v0

    .line 462
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 463
    if-eqz v0, :cond_3

    .line 464
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    const v1, 0xfe00

    iget v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    .line 470
    :cond_3
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    .line 471
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 475
    const/16 v0, 0x180

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    move v0, v2

    move v1, v2

    .line 477
    :goto_1
    if-ge v0, v6, :cond_6

    .line 478
    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_7

    .line 479
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v3, v0, 0x8

    aget-byte v1, v1, v3

    move v3, v1

    .line 481
    :goto_2
    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    .line 482
    :goto_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_5

    .line 483
    iget-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 482
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 486
    :cond_4
    add-int/lit8 v0, v0, 0x20

    .line 477
    :cond_5
    shr-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 490
    :cond_6
    return-object p0

    :cond_7
    move v3, v1

    goto :goto_2
.end method

.method public makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1430
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, p2

    :goto_0
    move v5, v0

    move v0, v3

    move v3, v2

    move v2, v4

    .line 1438
    :goto_1
    if-eq v2, p3, :cond_4

    .line 1439
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x300

    if-ge v0, v6, :cond_0

    .line 1440
    xor-int/lit8 v3, v0, -0x1

    .line 1441
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1442
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1444
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    .line 1446
    :cond_1
    int-to-char v5, v0

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1448
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1449
    add-int/lit8 v5, v2, 0x1

    if-eq v5, p3, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1450
    int-to-char v0, v0

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 1459
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_4

    .line 1461
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v5

    goto :goto_1

    .line 1453
    :cond_3
    if-ge v4, v2, :cond_2

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1454
    add-int/lit8 v2, v2, -0x1

    .line 1455
    int-to-char v0, v0

    invoke-static {v5, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_2

    :cond_4
    move v9, v5

    move v5, v2

    move v2, v0

    move v0, v9

    .line 1468
    if-eq v5, v4, :cond_e

    .line 1469
    if-ne v5, p3, :cond_7

    .line 1470
    if-eqz p4, :cond_5

    .line 1471
    invoke-virtual {p4, p1, v4, v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_5
    move v7, v5

    .line 1547
    :cond_6
    return v7

    .line 1477
    :cond_7
    if-gez v3, :cond_c

    .line 1479
    xor-int/lit8 v3, v3, -0x1

    .line 1480
    const/16 v6, 0x180

    if-ge v3, v6, :cond_b

    iget-object v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    aget v6, v6, v3

    .line 1481
    :goto_3
    if-le v6, v8, :cond_11

    .line 1482
    add-int/lit8 v3, v5, -0x1

    :goto_4
    move p2, v3

    move v3, v6

    .line 1499
    :cond_8
    :goto_5
    if-eqz p4, :cond_9

    .line 1502
    invoke-virtual {p4, p1, v4, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1503
    invoke-virtual {p4, p1, p2, v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_9
    move v4, v3

    move v6, v5

    move v7, p2

    .line 1511
    :goto_6
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 1514
    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v0, 0x8

    if-gt v4, v5, :cond_f

    .line 1516
    and-int/lit16 v4, v0, 0xff

    if-gt v4, v8, :cond_10

    move p2, v3

    .line 1519
    :goto_7
    if-eqz p4, :cond_a

    .line 1520
    invoke-virtual {p4, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    :cond_a
    move v4, v3

    move v3, v2

    move v2, v0

    .line 1523
    goto/16 :goto_0

    .line 1480
    :cond_b
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v6

    goto :goto_3

    .line 1485
    :cond_c
    add-int/lit8 p2, v5, -0x1

    .line 1486
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_d

    if-ge v4, p2, :cond_d

    add-int/lit8 v6, p2, -0x1

    .line 1487
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1489
    add-int/lit8 p2, p2, -0x1

    .line 1492
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v6, p2, 0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v3

    .line 1495
    :cond_d
    if-gt v3, v8, :cond_8

    move p2, v5

    goto :goto_5

    .line 1507
    :cond_e
    if-eq v5, p3, :cond_5

    move v6, v4

    move v7, p2

    move v4, v3

    goto :goto_6

    .line 1524
    :cond_f
    if-eqz p4, :cond_6

    .line 1532
    sub-int v4, v6, v7

    invoke-virtual {p4, v4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1537
    invoke-direct {p0, p1, v3, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 1542
    invoke-virtual {p0, p1, v7, p2, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    move v3, v2

    move v4, p2

    move v2, v1

    .line 1544
    goto/16 :goto_0

    :cond_10
    move p2, v7

    goto :goto_7

    :cond_11
    move v3, v5

    goto :goto_4
.end method

.method public makeFCDAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1550
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1551
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1552
    invoke-direct {p0, p1, v1, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 1553
    if-eqz v0, :cond_1

    .line 1554
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1555
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    .line 1554
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1558
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int v3, v5, v3

    invoke-virtual {p3, v3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1560
    invoke-virtual {v4, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, v4, v1, v3, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1565
    :goto_0
    if-eqz p2, :cond_0

    .line 1566
    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1570
    :goto_1
    return-void

    .line 1568
    :cond_0
    invoke-virtual {p3, p1, v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public singleLeadMightHaveNonZeroFCD16(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 720
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v2, p1, 0x8

    aget-byte v1, v1, v2

    .line 721
    if-nez v1, :cond_1

    .line 722
    :cond_0
    :goto_0
    return v0

    :cond_1
    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x7

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
