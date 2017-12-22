.class public final Lcom/ibm/icu/impl/UPropertyAliases;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;


# instance fields
.field private bytesTries:[B

.field private nameGroups:Ljava/lang/String;

.field private valueMaps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 77
    new-instance v0, Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UPropertyAliases$1;)V

    sput-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;

    .line 226
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UPropertyAliases;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/util/MissingResourceException;

    const-string/jumbo v2, "Could not construct UPropertyAliases. Missing pnames.icu"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, v0}, Ljava/util/MissingResourceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 232
    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string/jumbo v0, "pnames.icu"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UPropertyAliases;->load(Ljava/nio/ByteBuffer;)V

    .line 120
    return-void
.end method

.method private static asciiToLowercase(I)I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :cond_0
    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 335
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 339
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 340
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 341
    sparse-switch v2, :sswitch_data_0

    .line 350
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 351
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 352
    sparse-switch v0, :sswitch_data_1

    .line 362
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v5, v6

    .line 363
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_3

    move v7, v6

    .line 364
    :goto_3
    if-eqz v5, :cond_6

    .line 365
    if-eqz v7, :cond_4

    .line 373
    :goto_4
    return v1

    .line 344
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    .line 345
    goto :goto_0

    .line 355
    :sswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 356
    goto :goto_1

    :cond_2
    move v5, v1

    .line 362
    goto :goto_2

    :cond_3
    move v7, v1

    .line 363
    goto :goto_3

    :cond_4
    move v2, v1

    .line 371
    :cond_5
    :goto_5
    invoke-static {v2}, Lcom/ibm/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v5

    invoke-static {v0}, Lcom/ibm/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v7

    sub-int/2addr v5, v7

    .line 372
    if-eqz v5, :cond_7

    move v1, v5

    .line 373
    goto :goto_4

    .line 367
    :cond_6
    if-eqz v7, :cond_5

    move v0, v1

    .line 368
    goto :goto_5

    .line 376
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 377
    add-int/lit8 v3, v3, 0x1

    .line 378
    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2d -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch

    .line 352
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method private containsName(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 203
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    move-object v2, v0

    move v0, v1

    .line 204
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 205
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 207
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-gt v4, v3, :cond_1

    const/16 v4, 0xd

    if-gt v3, v4, :cond_1

    .line 204
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    :goto_2
    return v1

    .line 213
    :cond_2
    invoke-static {v3}, Lcom/ibm/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v2

    .line 214
    invoke-virtual {p1, v2}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v2

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v1

    goto :goto_2
.end method

.method private findProperty(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 123
    const/4 v2, 0x1

    .line 124
    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v0

    :goto_0
    if-lez v1, :cond_0

    .line 126
    iget-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v3, v3, v2

    .line 127
    iget-object v4, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 128
    add-int/lit8 v2, v2, 0x2

    .line 129
    if-ge p1, v3, :cond_1

    .line 137
    :cond_0
    :goto_1
    return v0

    .line 132
    :cond_1
    if-ge p1, v4, :cond_2

    .line 133
    sub-int v0, p1, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    goto :goto_1

    .line 135
    :cond_2
    sub-int v3, v4, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 124
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getPropertyOrValueEnum(ILjava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/ibm/icu/util/BytesTrie;

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/BytesTrie;-><init>([BI)V

    .line 273
    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->containsName(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result v0

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private load(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 82
    const v1, 0x706e616d

    sget-object v3, Lcom/ibm/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;

    invoke-static {p1, v1, v3}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    div-int/lit8 v3, v1, 0x4

    .line 84
    const/16 v1, 0x8

    if-ge v3, v1, :cond_0

    .line 85
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "pnames.icu: not enough indexes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    new-array v4, v3, [I

    .line 88
    mul-int/lit8 v1, v3, 0x4

    aput v1, v4, v0

    move v1, v2

    .line 89
    :goto_0
    if-ge v1, v3, :cond_1

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    aget v1, v4, v0

    .line 95
    aget v2, v4, v2

    .line 96
    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x4

    .line 97
    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    .line 101
    const/4 v1, 0x2

    aget v1, v4, v1

    .line 102
    sub-int v2, v1, v2

    .line 103
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases;->bytesTries:[B

    .line 104
    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 108
    const/4 v2, 0x3

    aget v2, v4, v2

    .line 109
    sub-int v1, v2, v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    :goto_1
    if-ge v0, v1, :cond_2

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 3

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    .line 294
    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid property enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 299
    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") does not have named values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v0, v1, v0

    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v0

    return v0
.end method
