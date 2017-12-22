.class public final Lcom/ibm/icu/impl/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field static final DIGITS:[C

.field static final HEX_DIGIT:[C

.field public static LINE_SEPARATOR:Ljava/lang/String;

.field private static final UNESCAPE_MAP:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 648
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    .line 703
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C

    .line 773
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    .line 1355
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    return-void

    .line 703
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 773
    :array_1
    .array-data 2
        0x61s
        0x7s
        0x62s
        0x8s
        0x65s
        0x1bs
        0x66s
        0xcs
        0x6es
        0xas
        0x72s
        0xds
        0x74s
        0x9s
        0x76s
        0xbs
    .end array-data

    .line 1355
    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public static final arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 80
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 81
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 82
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 84
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([DLjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 85
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 86
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final arrayEquals([BLjava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    instance-of v2, p1, [B

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 66
    :cond_3
    check-cast p1, [B

    check-cast p1, [B

    .line 67
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_4

    array-length v2, p0

    .line 68
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static final arrayEquals([DLjava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    instance-of v2, p1, [D

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 59
    :cond_3
    check-cast p1, [D

    check-cast p1, [D

    .line 60
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_4

    array-length v2, p0

    .line 61
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static final arrayEquals([ILjava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    instance-of v2, p1, [I

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 47
    :cond_3
    check-cast p1, [I

    check-cast p1, [I

    .line 48
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_4

    array-length v2, p0

    .line 49
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([II[III)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static final arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 35
    :cond_3
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 36
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_4

    array-length v2, p0

    .line 37
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static final arrayRegionMatches([BI[BII)Z
    .locals 4

    .prologue
    .line 167
    add-int v0, p1, p4

    .line 168
    sub-int v1, p3, p1

    .line 169
    :goto_0
    if-ge p1, v0, :cond_1

    .line 170
    aget-byte v2, p0, p1

    add-int v3, p1, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_1
    return v0

    .line 169
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static final arrayRegionMatches([DI[DII)Z
    .locals 6

    .prologue
    .line 157
    add-int v0, p1, p4

    .line 158
    sub-int v1, p3, p1

    .line 159
    :goto_0
    if-ge p1, v0, :cond_1

    .line 160
    aget-wide v2, p0, p1

    add-int v4, p1, v1

    aget-wide v4, p2, v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_1
    return v0

    .line 159
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static final arrayRegionMatches([II[III)Z
    .locals 4

    .prologue
    .line 138
    add-int v0, p1, p4

    .line 139
    sub-int v1, p3, p1

    .line 140
    :goto_0
    if-ge p1, v0, :cond_1

    .line 141
    aget v2, p0, p1

    add-int v3, p1, v1

    aget v3, p2, v3

    if-eq v2, v3, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_1
    return v0

    .line 140
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static final arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
    .locals 4

    .prologue
    .line 100
    add-int v0, p1, p4

    .line 101
    sub-int v1, p3, p1

    .line 102
    :goto_0
    if-ge p1, v0, :cond_1

    .line 103
    aget-object v2, p0, p1

    add-int v3, p1, v1

    aget-object v3, p2, v3

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_1
    return v0

    .line 102
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 754
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 755
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 756
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 757
    const/16 v2, 0x20

    if-lt v5, v2, :cond_1

    const/16 v2, 0x7f

    if-gt v5, v2, :cond_1

    .line 758
    const/16 v2, 0x5c

    if-ne v5, v2, :cond_0

    .line 759
    const-string/jumbo v2, "\\\\"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 761
    :cond_0
    int-to-char v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 764
    :cond_1
    const v2, 0xffff

    if-gt v5, v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 765
    :goto_1
    if-eqz v3, :cond_3

    const-string/jumbo v2, "\\u"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    int-to-long v6, v5

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    :goto_3
    invoke-static {v6, v7, v2}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    move v3, v1

    .line 764
    goto :goto_1

    .line 765
    :cond_3
    const-string/jumbo v2, "\\U"

    goto :goto_2

    .line 766
    :cond_4
    const/16 v2, 0x8

    goto :goto_3

    .line 769
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUnprintable(Ljava/lang/Appendable;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 1487
    :try_start_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    const/16 v0, 0x5c

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1489
    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1490
    const/16 v0, 0x55

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1491
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1492
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x18

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1493
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1494
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1498
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1499
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1500
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1501
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1502
    const/4 v0, 0x1

    .line 1504
    :goto_1
    return v0

    .line 1496
    :cond_0
    const/16 v0, 0x75

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    new-instance v1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1504
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static hex(JI)Ljava/lang/String;
    .locals 6

    .prologue
    .line 978
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-8000000000000000"

    .line 990
    :cond_0
    :goto_0
    return-object v0

    .line 979
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 980
    :goto_1
    if-eqz v1, :cond_2

    .line 981
    neg-long p0, p0

    .line 983
    :cond_2
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_3

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0000000000000000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    :cond_3
    if-eqz v1, :cond_0

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 979
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1
.end method

.method public static isUnprintable(I)Z
    .locals 1

    .prologue
    .line 1475
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 182
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unescapeAt(Ljava/lang/String;[I)I
    .locals 11

    .prologue
    .line 798
    const/4 v7, 0x0

    .line 799
    const/4 v6, 0x0

    .line 800
    const/4 v5, 0x0

    .line 801
    const/4 v4, 0x0

    .line 802
    const/4 v3, 0x4

    .line 805
    const/4 v0, 0x0

    .line 808
    const/4 v1, 0x0

    aget v2, p1, v1

    .line 809
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 810
    if-ltz v2, :cond_0

    if-lt v2, v9, :cond_1

    .line 811
    :cond_0
    const/4 v1, -0x1

    .line 912
    :goto_0
    return v1

    .line 815
    :cond_1
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 816
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v8

    add-int/2addr v2, v8

    .line 819
    sparse-switch v1, :sswitch_data_0

    .line 837
    const/16 v8, 0x8

    invoke-static {v1, v8}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v8

    .line 838
    if-ltz v8, :cond_12

    .line 839
    const/4 v5, 0x1

    .line 840
    const/4 v4, 0x3

    .line 841
    const/4 v6, 0x1

    .line 842
    const/4 v3, 0x3

    move v7, v4

    move v10, v3

    move v3, v8

    move v8, v5

    move v5, v0

    move v0, v6

    move v6, v10

    .line 847
    :goto_1
    if-eqz v8, :cond_c

    move v4, v0

    move v0, v1

    .line 848
    :goto_2
    if-ge v2, v9, :cond_2

    if-ge v4, v7, :cond_2

    .line 849
    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 850
    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    const/16 v0, 0x8

    :goto_3
    invoke-static {v1, v0}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v0

    .line 851
    if-gez v0, :cond_5

    move v0, v1

    .line 858
    :cond_2
    if-ge v4, v8, :cond_6

    .line 859
    const/4 v1, -0x1

    goto :goto_0

    .line 821
    :sswitch_0
    const/4 v4, 0x4

    move v5, v0

    move v8, v4

    move v0, v6

    move v6, v3

    move v3, v7

    move v7, v4

    .line 822
    goto :goto_1

    .line 824
    :sswitch_1
    const/16 v4, 0x8

    move v5, v0

    move v8, v4

    move v0, v6

    move v6, v3

    move v3, v7

    move v7, v4

    .line 825
    goto :goto_1

    .line 827
    :sswitch_2
    const/4 v5, 0x1

    .line 828
    if-ge v2, v9, :cond_3

    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    const/16 v8, 0x7b

    if-ne v4, v8, :cond_3

    .line 829
    add-int/lit8 v2, v2, 0x1

    .line 830
    const/4 v0, 0x1

    .line 831
    const/16 v4, 0x8

    move v8, v5

    move v5, v0

    move v0, v6

    move v6, v3

    move v3, v7

    move v7, v4

    goto :goto_1

    .line 833
    :cond_3
    const/4 v4, 0x2

    move v8, v5

    move v5, v0

    move v0, v6

    move v6, v3

    move v3, v7

    move v7, v4

    .line 835
    goto :goto_1

    .line 850
    :cond_4
    const/16 v0, 0x10

    goto :goto_3

    .line 854
    :cond_5
    shl-int/2addr v3, v6

    or-int/2addr v3, v0

    .line 855
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 856
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    goto :goto_2

    .line 861
    :cond_6
    if-eqz v5, :cond_8

    .line 862
    const/16 v1, 0x7d

    if-eq v0, v1, :cond_7

    .line 863
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 865
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 867
    :cond_8
    if-ltz v3, :cond_9

    const/high16 v0, 0x110000

    if-lt v3, v0, :cond_a

    .line 868
    :cond_9
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 874
    :cond_a
    if-ge v2, v9, :cond_11

    int-to-char v0, v3

    .line 875
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 876
    add-int/lit8 v0, v2, 0x1

    .line 877
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 878
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_b

    if-ge v0, v9, :cond_b

    .line 879
    const/4 v1, 0x1

    new-array v4, v1, [I

    const/4 v1, 0x0

    aput v0, v4, v1

    .line 880
    invoke-static {p0, v4}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v1

    .line 881
    const/4 v0, 0x0

    aget v0, v4, v0

    .line 883
    :cond_b
    int-to-char v4, v1

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 885
    int-to-char v2, v3

    int-to-char v1, v1

    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 888
    :goto_4
    const/4 v2, 0x0

    aput v0, p1, v2

    goto/16 :goto_0

    .line 893
    :cond_c
    const/4 v0, 0x0

    :goto_5
    sget-object v3, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    array-length v3, v3

    if-ge v0, v3, :cond_e

    .line 894
    sget-object v3, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    aget-char v3, v3, v0

    if-ne v1, v3, :cond_d

    .line 895
    const/4 v1, 0x0

    aput v2, p1, v1

    .line 896
    sget-object v1, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    goto/16 :goto_0

    .line 897
    :cond_d
    sget-object v3, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    aget-char v3, v3, v0

    if-ge v1, v3, :cond_f

    .line 903
    :cond_e
    const/16 v0, 0x63

    if-ne v1, v0, :cond_10

    if-ge v2, v9, :cond_10

    .line 904
    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 905
    const/4 v1, 0x0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 906
    and-int/lit8 v1, v0, 0x1f

    goto/16 :goto_0

    .line 893
    :cond_f
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 911
    :cond_10
    const/4 v0, 0x0

    aput v2, p1, v0

    goto/16 :goto_0

    :cond_11
    move v0, v2

    move v1, v3

    goto :goto_4

    :cond_12
    move v8, v5

    move v5, v0

    move v0, v6

    move v6, v3

    move v3, v7

    move v7, v4

    goto/16 :goto_1

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_1
        0x75 -> :sswitch_0
        0x78 -> :sswitch_2
    .end sparse-switch
.end method
