.class final Lcom/ibm/icu/text/DictionaryData;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# direct methods
.method public static loadDictionaryFor(Ljava/lang/String;)Lcom/ibm/icu/text/DictionaryMatcher;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x20

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b/brkitr"

    invoke-static {v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dictionaries/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "brkitr/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 51
    const v0, 0x44696374

    invoke-static {v4, v0, v3}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 52
    new-array v5, v7, [I

    move v0, v2

    .line 54
    :goto_0
    if-ge v0, v7, :cond_0

    .line 55
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    aget v6, v5, v2

    .line 58
    if-lt v6, v8, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 59
    if-le v6, v8, :cond_1

    .line 60
    add-int/lit8 v0, v6, -0x20

    .line 61
    invoke-static {v4, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 63
    :cond_1
    const/4 v0, 0x4

    aget v0, v5, v0

    and-int/lit8 v0, v0, 0x7

    .line 64
    const/4 v7, 0x3

    aget v7, v5, v7

    sub-int v6, v7, v6

    .line 66
    if-nez v0, :cond_3

    .line 67
    const/4 v0, 0x5

    aget v1, v5, v0

    .line 68
    new-array v2, v6, [B

    .line 69
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    new-instance v0, Lcom/ibm/icu/text/BytesDictionaryMatcher;

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/BytesDictionaryMatcher;-><init>([BI)V

    .line 78
    :goto_2
    return-object v0

    :cond_2
    move v0, v2

    .line 58
    goto :goto_1

    .line 71
    :cond_3
    if-ne v0, v1, :cond_5

    .line 72
    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_4

    :goto_3
    invoke-static {v1}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 73
    div-int/lit8 v0, v6, 0x2

    and-int/lit8 v1, v6, 0x1

    invoke-static {v4, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v0, Lcom/ibm/icu/text/CharsDictionaryMatcher;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CharsDictionaryMatcher;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 72
    goto :goto_3

    :cond_5
    move-object v0, v3

    .line 76
    goto :goto_2
.end method
