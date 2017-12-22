.class public Lcom/netflix/mediaclient/util/BaseConverter;
.super Ljava/lang/Object;
.source "BaseConverter.java"


# static fields
.field protected static final baseChars:[C

.field protected static final hashCharToIntMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x4b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/util/BaseConverter;->baseChars:[C

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/BaseConverter;->hashCharToIntMap:Landroid/util/SparseIntArray;

    .line 24
    invoke-static {}, Lcom/netflix/mediaclient/util/BaseConverter;->initMap()V

    .line 25
    return-void

    .line 16
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x5fs
        0x2ds
        0x2es
        0x2as
        0x28s
        0x29s
        0x2cs
        0x40s
        0x27s
        0x24s
        0x3as
        0x3bs
        0x21s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertFromBaseToBigInteger(Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 95
    new-instance v4, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "0"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v1

    move v1, v0

    .line 99
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 100
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 101
    invoke-static {v2}, Lcom/netflix/mediaclient/util/BaseConverter;->getIntValue(C)I

    move-result v6

    .line 102
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 103
    new-instance v7, Ljava/math/BigInteger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 104
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 99
    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    move v1, v2

    goto :goto_0

    .line 106
    :cond_0
    return-object v3
.end method

.method public static convertFromBaseToInteger(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/BaseConverter;->convertFromBaseToBigInteger(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFromBaseToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/BaseConverter;->convertFromBaseToBigInteger(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static convertToBase(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 42
    new-instance v4, Ljava/math/BigInteger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 46
    aget-object v2, v0, v8

    .line 47
    aget-object v0, v0, v1

    .line 50
    sget-object v3, Lcom/netflix/mediaclient/util/BaseConverter;->baseChars:[C

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aget-char v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    .line 52
    :goto_0
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 55
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 56
    aget-object v3, v2, v8

    .line 57
    aget-object v2, v2, v1

    .line 58
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 59
    sget-object v7, Lcom/netflix/mediaclient/util/BaseConverter;->baseChars:[C

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aget-char v6, v7, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntValue(C)I
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/netflix/mediaclient/util/BaseConverter;->hashCharToIntMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static initMap()V
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/util/BaseConverter;->baseChars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 29
    sget-object v1, Lcom/netflix/mediaclient/util/BaseConverter;->baseChars:[C

    aget-char v1, v1, v0

    .line 30
    sget-object v2, Lcom/netflix/mediaclient/util/BaseConverter;->hashCharToIntMap:Landroid/util/SparseIntArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
