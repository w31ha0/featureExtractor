.class public final Lcom/ibm/icu/impl/DateNumberFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source "DateNumberFormat.java"


# static fields
.field private static CACHE:Lcom/ibm/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SimpleCache",
            "<",
            "Lcom/ibm/icu/util/ULocale;",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field private transient decimalBuf:[C

.field private digits:[C

.field private maxIntDigits:I

.field private minIntDigits:I

.field private minusSign:C

.field private positiveOnly:Z

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/DateNumberFormat;->CACHE:Lcom/ibm/icu/impl/SimpleCache;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z

    .line 40
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/DateNumberFormat;->initialize(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x0

    .line 60
    sget-object v0, Lcom/ibm/icu/impl/DateNumberFormat;->CACHE:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 61
    if-nez v0, :cond_2

    .line 64
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NumberElements/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/symbols/minusSign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    const/16 v1, 0xb

    new-array v1, v1, [C

    move v2, v3

    .line 79
    :goto_1
    if-ge v2, v5, :cond_1

    .line 80
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string/jumbo v1, "latn"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :try_start_1
    const-string/jumbo v1, "NumberElements/latn/symbols/minusSign"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    const-string/jumbo v0, "-"

    goto :goto_0

    .line 75
    :cond_0
    const-string/jumbo v0, "-"

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v5

    .line 83
    sget-object v0, Lcom/ibm/icu/impl/DateNumberFormat;->CACHE:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 86
    :cond_2
    new-array v1, v5, [C

    iput-object v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    .line 87
    iget-object v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    invoke-static {v0, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    aget-char v1, v1, v3

    iput-char v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C

    .line 90
    aget-char v0, v0, v5

    iput-char v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C

    .line 91
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    .line 279
    iget-object v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    .line 280
    const/16 v1, 0x14

    new-array v1, v1, [C

    iput-object v1, v0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 281
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/ibm/icu/impl/DateNumberFormat;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/DateNumberFormat;

    .line 255
    iget v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I

    iget v2, p1, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I

    iget v2, p1, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I

    if-ne v1, v2, :cond_0

    iget-char v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C

    iget-char v2, p1, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z

    iget-boolean v2, p1, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    iget-object v2, p1, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    .line 259
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(double, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 149
    iget-char v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    neg-long p1, p1

    .line 156
    :cond_0
    long-to-int v2, p1

    .line 158
    iget-object v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C

    array-length v0, v0

    iget v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C

    array-length v0, v0

    .line 159
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 161
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C

    iget-object v4, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    rem-int/lit8 v5, v2, 0xa

    aget-char v4, v4, v5

    aput-char v4, v3, v1

    .line 162
    div-int/lit8 v2, v2, 0xa

    .line 163
    if-eqz v1, :cond_1

    if-nez v2, :cond_3

    .line 168
    :cond_1
    iget v2, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I

    sub-int v3, v0, v1

    sub-int/2addr v2, v3

    move v7, v2

    move v2, v1

    move v1, v7

    .line 169
    :goto_2
    if-lez v1, :cond_4

    .line 170
    iget-object v3, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    aget-char v4, v4, v6

    aput-char v4, v3, v2

    .line 169
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 158
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I

    goto :goto_0

    .line 166
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 172
    :cond_4
    sub-int/2addr v0, v2

    .line 173
    iget-object v1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C

    invoke-virtual {p3, v1, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {p4, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 175
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    if-nez v1, :cond_5

    .line 176
    invoke-virtual {p4, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 180
    :goto_3
    return-object p3

    .line 178
    :cond_5
    invoke-virtual {p4, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_3
.end method

.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(BigInteger, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigits()[C
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/16 v12, 0x9

    const/4 v1, 0x0

    .line 208
    const-wide/16 v2, 0x0

    .line 211
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v0, v1

    move-wide v4, v2

    move v3, v1

    move v2, v1

    .line 213
    :goto_0
    add-int v7, v8, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 214
    add-int v7, v8, v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 215
    if-nez v0, :cond_3

    iget-char v7, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v9, v7, :cond_3

    .line 216
    iget-boolean v7, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-eqz v7, :cond_2

    .line 240
    :cond_0
    const/4 v1, 0x0

    .line 241
    if-eqz v3, :cond_9

    .line 242
    if-eqz v2, :cond_1

    const-wide/16 v2, -0x1

    mul-long/2addr v4, v2

    .line 243
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 244
    add-int/2addr v0, v8

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v0, v1

    .line 246
    :goto_1
    return-object v0

    :cond_2
    move v2, v6

    .line 213
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_3
    iget-object v7, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    aget-char v7, v7, v1

    sub-int v7, v9, v7

    .line 222
    if-ltz v7, :cond_4

    if-ge v12, v7, :cond_5

    .line 223
    :cond_4
    invoke-static {v9}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v7

    .line 225
    :cond_5
    if-ltz v7, :cond_6

    if-ge v12, v7, :cond_7

    :cond_6
    move v7, v1

    .line 226
    :goto_3
    const/16 v10, 0xa

    if-ge v7, v10, :cond_7

    .line 227
    iget-object v10, p0, Lcom/ibm/icu/impl/DateNumberFormat;->digits:[C

    aget-char v10, v10, v7

    if-ne v9, v10, :cond_8

    .line 232
    :cond_7
    if-ltz v7, :cond_0

    if-gt v7, v12, :cond_0

    const-wide v10, 0xccccccccccccccbL

    cmp-long v9, v4, v10

    if-gez v9, :cond_0

    .line 234
    const-wide/16 v10, 0xa

    mul-long/2addr v4, v10

    int-to-long v10, v7

    add-long/2addr v4, v10

    move v3, v6

    goto :goto_2

    .line 226
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I

    .line 96
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I

    .line 106
    return-void
.end method

.method public setParsePositiveOnly(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z

    .line 116
    return-void
.end method
