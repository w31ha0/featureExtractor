.class public final Lcom/ibm/icu/impl/UCharacterName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

.field private static final TYPE_NAMES_:[Ljava/lang/String;


# instance fields
.field private m_ISOCommentSet_:[I

.field private m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

.field public m_groupcount_:I

.field private m_groupinfo_:[C

.field private m_grouplengths_:[C

.field private m_groupoffsets_:[C

.field m_groupsize_:I

.field private m_groupstring_:[B

.field private m_nameSet_:[I

.field private m_tokenstring_:[B

.field private m_tokentable_:[C

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCharacterName;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCharacterName;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "unassigned"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "uppercase letter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "lowercase letter"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "titlecase letter"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "modifier letter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "other letter"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "non spacing mark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "enclosing mark"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "combining spacing mark"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "decimal digit number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "letter number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "other number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "space separator"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "line separator"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "paragraph separator"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "control"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "format"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "private use area"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "surrogate"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "dash punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "start punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "end punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "connector punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "other punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "math symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "currency symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "modifier symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "other symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "initial punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "final punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "noncharacter"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "lead surrogate"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "trail surrogate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    new-instance v0, Ljava/util/MissingResourceException;

    const-string/jumbo v1, "Could not construct UCharacterName. Missing unames.icu"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x21

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    .line 954
    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    .line 1036
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    .line 1037
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    .line 1080
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    .line 1085
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    .line 1089
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    .line 1093
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    .line 1171
    const-string/jumbo v0, "unames.icu"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1172
    new-instance v1, Lcom/ibm/icu/impl/UCharacterNameReader;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/UCharacterNameReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1173
    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/UCharacterNameReader;->read(Lcom/ibm/icu/impl/UCharacterName;)V

    .line 1174
    return-void
.end method

.method private static getExtendedChar(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1346
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_2

    .line 1347
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1349
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    .line 1350
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1351
    if-ltz v3, :cond_1

    .line 1352
    add-int/lit8 v3, v3, 0x1

    .line 1356
    :try_start_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    .line 1355
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1364
    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1365
    sget-object v4, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v4, v4

    .line 1366
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1367
    sget-object v5, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1368
    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1379
    :goto_1
    return v0

    .line 1359
    :catch_0
    move-exception v0

    move v0, v1

    .line 1360
    goto :goto_1

    .line 1366
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1377
    goto :goto_1

    .line 1379
    :cond_2
    const/4 v0, -0x2

    goto :goto_1
.end method

.method private getGroupChar(I[CLjava/lang/String;I)I
    .locals 11

    .prologue
    .line 1244
    .line 1247
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 1251
    const/4 v4, 0x0

    move v2, p1

    :goto_0
    const/16 v0, 0x20

    if-gt v4, v0, :cond_8

    .line 1252
    const/4 v5, 0x0

    .line 1253
    aget-char v1, p2, v4

    .line 1255
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    .line 1262
    const/4 v0, 0x4

    if-ne p4, v0, :cond_1

    const/4 v0, 0x2

    .line 1265
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    const/16 v7, 0x3b

    invoke-static {v3, v2, v1, v7}, Lcom/ibm/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v3

    add-int/2addr v3, v2

    .line 1267
    sub-int v2, v3, v2

    sub-int/2addr v1, v2

    .line 1268
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_a

    move v2, v3

    .line 1273
    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    const/4 v3, -0x1

    if-eq v5, v3, :cond_5

    if-ge v5, v6, :cond_5

    .line 1275
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v7, v2, v0

    aget-byte v7, v3, v7

    .line 1276
    add-int/lit8 v0, v0, 0x1

    .line 1278
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v3, v3

    if-lt v7, v3, :cond_2

    .line 1279
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v7, v7, 0xff

    if-eq v5, v7, :cond_9

    .line 1280
    const/4 v3, -0x1

    move v5, v3

    goto :goto_2

    :cond_1
    move v0, p4

    .line 1262
    goto :goto_1

    .line 1284
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v8, v7, 0xff

    aget-char v3, v3, v8

    .line 1285
    const v8, 0xfffe

    if-ne v3, v8, :cond_3

    .line 1287
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    shl-int/lit8 v8, v7, 0x8

    iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v10, v2, v0

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aget-char v3, v3, v8

    .line 1289
    add-int/lit8 v0, v0, 0x1

    .line 1291
    :cond_3
    const v8, 0xffff

    if-ne v3, v8, :cond_4

    .line 1292
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v7, v7, 0xff

    if-eq v5, v7, :cond_9

    .line 1293
    const/4 v3, -0x1

    move v5, v3

    goto :goto_2

    .line 1298
    :cond_4
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {p3, v7, v5, v3}, Lcom/ibm/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v3

    move v5, v3

    goto :goto_2

    .line 1304
    :cond_5
    if-ne v6, v5, :cond_7

    if-eq v0, v1, :cond_6

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int/2addr v0, v2

    aget-byte v0, v3, v0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_7

    :cond_6
    move v0, v4

    .line 1311
    :goto_3
    return v0

    .line 1309
    :cond_7
    add-int/2addr v2, v1

    .line 1251
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1311
    :cond_8
    const/4 v0, -0x1

    goto :goto_3

    :cond_9
    move v5, v3

    goto :goto_2

    :cond_a
    move v2, v3

    goto/16 :goto_1
.end method

.method private declared-synchronized getGroupChar(Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1214
    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge v1, v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v1, v2, v3}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v2

    .line 1221
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I

    move-result v2

    .line 1223
    if-eq v2, v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v1, v3

    aget-char v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v2

    .line 1228
    :cond_0
    monitor-exit p0

    return v0

    .line 1214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getType(I)I
    .locals 2

    .prologue
    .line 1321
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    const/16 v0, 0x1e

    .line 1334
    :cond_0
    :goto_0
    return v0

    .line 1325
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    .line 1326
    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1327
    const v0, 0xdbff

    if-gt p0, v0, :cond_2

    .line 1328
    const/16 v0, 0x1f

    goto :goto_0

    .line 1331
    :cond_2
    const/16 v0, 0x20

    goto :goto_0
.end method


# virtual methods
.method public getCharFromName(ILjava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 114
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 155
    :cond_1
    :goto_0
    return v0

    .line 120
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I

    move-result v0

    .line 121
    if-ge v0, v2, :cond_1

    .line 125
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 129
    if-eqz p1, :cond_3

    if-ne p1, v5, :cond_4

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    .line 136
    :goto_1
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_4

    .line 137
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I

    move-result v0

    .line 138
    if-gez v0, :cond_1

    .line 136
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 144
    :cond_4
    if-ne p1, v5, :cond_5

    .line 145
    invoke-direct {p0, v4, v1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v0

    .line 147
    if-ne v0, v2, :cond_1

    .line 148
    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 153
    :cond_5
    invoke-direct {p0, v4, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public getGroupLengths(I[C[C)I
    .locals 10

    .prologue
    const/16 v8, 0x20

    const/4 v0, 0x0

    const v2, 0xffff

    .line 178
    .line 182
    iget v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v1, p1

    .line 183
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v3, v3, v4

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v1, v1, 0x2

    aget-char v1, v4, v1

    invoke-static {v3, v1}, Lcom/ibm/icu/impl/UCharacterUtility;->toInt(CC)I

    move-result v1

    .line 187
    aput-char v0, p2, v0

    move v4, v1

    move v3, v2

    .line 191
    :goto_0
    if-ge v0, v8, :cond_4

    .line 192
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    aget-byte v5, v1, v4

    .line 193
    const/4 v1, 0x4

    move v9, v1

    move v1, v3

    move v3, v9

    .line 195
    :goto_1
    if-ltz v3, :cond_3

    .line 197
    shr-int v6, v5, v3

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    .line 198
    if-ne v1, v2, :cond_0

    const/16 v7, 0xb

    if-le v6, v7, :cond_0

    .line 199
    add-int/lit8 v1, v6, -0xc

    shl-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 217
    :goto_2
    add-int/lit8 v3, v3, -0x4

    goto :goto_1

    .line 202
    :cond_0
    if-eq v1, v2, :cond_2

    .line 203
    or-int/2addr v1, v6

    add-int/lit8 v1, v1, 0xc

    int-to-char v1, v1

    aput-char v1, p3, v0

    .line 209
    :goto_3
    if-ge v0, v8, :cond_1

    .line 210
    add-int/lit8 v1, v0, 0x1

    aget-char v6, p2, v0

    aget-char v7, p3, v0

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, p2, v1

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    .line 206
    :cond_2
    int-to-char v1, v6

    aput-char v1, p3, v0

    goto :goto_3

    .line 191
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_0

    .line 220
    :cond_4
    return v4
.end method

.method setAlgorithm([Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)Z
    .locals 1

    .prologue
    .line 982
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 983
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    .line 984
    const/4 v0, 0x1

    .line 986
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setGroup([C[B)Z
    .locals 1

    .prologue
    .line 1013
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1015
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    .line 1016
    iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    .line 1017
    const/4 v0, 0x1

    .line 1019
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setGroupCountSize(II)Z
    .locals 1

    .prologue
    .line 997
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 998
    :cond_0
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return v0

    .line 1000
    :cond_1
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    .line 1001
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    .line 1002
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setToken([C[B)Z
    .locals 1

    .prologue
    .line 966
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 968
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    .line 969
    iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    .line 970
    const/4 v0, 0x1

    .line 972
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
