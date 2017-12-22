.class public Lcom/netflix/msl/io/MslEncoderUtils;
.super Ljava/lang/Object;
.source "MslEncoderUtils.java"


# static fields
.field private static final CHAR_EQUALS:C = '='

.field private static final CHAR_MINUS:C = '-'

.field private static final CHAR_PLUS:C = '+'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_UNDERSCORE:C = '_'

.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/io/MslEncoderUtils;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b64urlDecode(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 80
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 84
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    .line 85
    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 86
    :cond_0
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 87
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 89
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b64urlDecodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/netflix/msl/io/MslEncoderUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/io/MslEncoderUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static b64urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/netflix/msl/io/MslEncoderUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b64urlEncode([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 68
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 69
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static createArray(Lcom/netflix/msl/util/MslContext;Ljava/util/Collection;)Lcom/netflix/msl/io/MslArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/netflix/msl/io/MslArray;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 119
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/netflix/msl/io/MslEncoderFactory;->createArray()Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 122
    instance-of v4, v0, [B

    if-nez v4, :cond_0

    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    instance-of v4, v0, Lcom/netflix/msl/io/MslArray;

    if-nez v4, :cond_0

    instance-of v4, v0, Lcom/netflix/msl/io/MslObject;

    if-nez v4, :cond_0

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_0

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_0

    instance-of v4, v0, Ljava/util/Map;

    if-nez v4, :cond_0

    instance-of v4, v0, Ljava/util/Collection;

    if-nez v4, :cond_0

    instance-of v4, v0, [Ljava/lang/Object;

    if-nez v4, :cond_0

    instance-of v4, v0, Ljava/lang/Enum;

    if-nez v4, :cond_0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    invoke-virtual {v2, v5, v0}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    goto :goto_0

    .line 135
    :cond_1
    instance-of v4, v0, Lcom/netflix/msl/io/MslEncodable;

    if-eqz v4, :cond_2

    .line 136
    check-cast v0, Lcom/netflix/msl/io/MslEncodable;

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/netflix/msl/io/MslEncoderFactory;->getPreferredFormat(Ljava/util/Set;)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/netflix/msl/io/MslEncodable;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 138
    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 139
    invoke-virtual {v2, v5, v0}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    goto :goto_0

    .line 141
    :cond_2
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not MSL encoding-compatible."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_3
    return-object v2
.end method

.method public static equalArrays(Lcom/netflix/msl/io/MslArray;Lcom/netflix/msl/io/MslArray;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    if-ne p0, p1, :cond_1

    move v3, v4

    .line 305
    :cond_0
    :goto_0
    return v3

    .line 271
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 276
    invoke-virtual {p0, v2}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 277
    invoke-virtual {p1, v2}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 279
    if-ne v0, v1, :cond_3

    .line 275
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 281
    :cond_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 285
    instance-of v5, v0, [B

    if-nez v5, :cond_4

    instance-of v5, v1, [B

    if-eqz v5, :cond_5

    .line 286
    :cond_4
    invoke-virtual {p0, v2}, Lcom/netflix/msl/io/MslArray;->getBytes(I)[B

    move-result-object v0

    .line 287
    invoke-virtual {p1, v2}, Lcom/netflix/msl/io/MslArray;->getBytes(I)[B

    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 290
    :cond_5
    instance-of v5, v0, Lcom/netflix/msl/io/MslObject;

    if-eqz v5, :cond_6

    instance-of v5, v1, Lcom/netflix/msl/io/MslObject;

    if-eqz v5, :cond_6

    .line 291
    check-cast v0, Lcom/netflix/msl/io/MslObject;

    check-cast v1, Lcom/netflix/msl/io/MslObject;

    invoke-static {v0, v1}, Lcom/netflix/msl/io/MslEncoderUtils;->equalObjects(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslObject;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 293
    :cond_6
    instance-of v5, v0, Lcom/netflix/msl/io/MslArray;

    if-eqz v5, :cond_7

    instance-of v5, v1, Lcom/netflix/msl/io/MslArray;

    if-eqz v5, :cond_7

    .line 294
    check-cast v0, Lcom/netflix/msl/io/MslArray;

    check-cast v1, Lcom/netflix/msl/io/MslArray;

    invoke-static {v0, v1}, Lcom/netflix/msl/io/MslEncoderUtils;->equalArrays(Lcom/netflix/msl/io/MslArray;Lcom/netflix/msl/io/MslArray;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 297
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_8
    move v3, v4

    .line 305
    goto :goto_0
.end method

.method public static equalObjects(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslObject;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 210
    :goto_0
    return v0

    .line 162
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v4

    .line 163
    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/io/MslObject;->getKeys()Ljava/util/Set;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslObject;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 170
    if-eq v0, v1, :cond_5

    .line 172
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v2, v5, :cond_4

    :cond_3
    move v0, v4

    .line 173
    goto :goto_0

    .line 175
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v4

    .line 176
    goto :goto_0

    .line 180
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 184
    if-eq v1, v2, :cond_6

    .line 186
    if-eqz v1, :cond_7

    if-nez v2, :cond_8

    :cond_7
    move v0, v4

    .line 187
    goto :goto_0

    .line 190
    :cond_8
    instance-of v6, v1, [B

    if-nez v6, :cond_9

    instance-of v6, v2, [B

    if-eqz v6, :cond_a

    .line 191
    :cond_9
    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 192
    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    .line 194
    goto :goto_0

    .line 195
    :cond_a
    instance-of v0, v1, Lcom/netflix/msl/io/MslObject;

    if-eqz v0, :cond_b

    instance-of v0, v2, Lcom/netflix/msl/io/MslObject;

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 196
    check-cast v0, Lcom/netflix/msl/io/MslObject;

    move-object v1, v2

    check-cast v1, Lcom/netflix/msl/io/MslObject;

    invoke-static {v0, v1}, Lcom/netflix/msl/io/MslEncoderUtils;->equalObjects(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslObject;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    .line 197
    goto :goto_0

    .line 198
    :cond_b
    instance-of v0, v1, Lcom/netflix/msl/io/MslArray;

    if-eqz v0, :cond_c

    instance-of v0, v2, Lcom/netflix/msl/io/MslArray;

    if-eqz v0, :cond_c

    .line 199
    check-cast v1, Lcom/netflix/msl/io/MslArray;

    check-cast v2, Lcom/netflix/msl/io/MslArray;

    invoke-static {v1, v2}, Lcom/netflix/msl/io/MslEncoderUtils;->equalArrays(Lcom/netflix/msl/io/MslArray;Lcom/netflix/msl/io/MslArray;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    .line 200
    goto/16 :goto_0

    .line 202
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v0, v6, :cond_d

    move v0, v4

    .line 203
    goto/16 :goto_0

    .line 204
    :cond_d
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    .line 205
    goto/16 :goto_0

    :cond_e
    move v0, v3

    .line 210
    goto/16 :goto_0
.end method

.method public static equalSets(Lcom/netflix/msl/io/MslArray;Lcom/netflix/msl/io/MslArray;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 357
    if-ne p0, p1, :cond_1

    .line 358
    const/4 v0, 0x1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 364
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 365
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 366
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 367
    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hashArray(Lcom/netflix/msl/io/MslArray;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 316
    if-nez p0, :cond_1

    const/4 v2, -0x1

    .line 339
    :cond_0
    return v2

    :cond_1
    move v1, v0

    move v2, v0

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/msl/io/MslArray;->optBytes(I[B)[B

    move-result-object v0

    .line 322
    if-eqz v0, :cond_2

    .line 323
    mul-int/lit8 v2, v2, 0x25

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v2, v0

    .line 318
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 329
    instance-of v3, v0, Lcom/netflix/msl/io/MslObject;

    if-eqz v3, :cond_3

    .line 330
    mul-int/lit8 v2, v2, 0x25

    check-cast v0, Lcom/netflix/msl/io/MslObject;

    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderUtils;->hashObject(Lcom/netflix/msl/io/MslObject;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 331
    :cond_3
    instance-of v3, v0, Lcom/netflix/msl/io/MslArray;

    if-eqz v3, :cond_4

    .line 332
    mul-int/lit8 v2, v2, 0x25

    check-cast v0, Lcom/netflix/msl/io/MslArray;

    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderUtils;->hashArray(Lcom/netflix/msl/io/MslArray;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 333
    :cond_4
    if-eqz v0, :cond_5

    .line 334
    mul-int/lit8 v2, v2, 0x25

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 336
    :cond_5
    mul-int/lit8 v0, v2, 0x25

    add-int/lit8 v2, v0, 0x1

    goto :goto_1
.end method

.method public static hashObject(Lcom/netflix/msl/io/MslObject;)I
    .locals 5

    .prologue
    .line 221
    if-nez p0, :cond_1

    const/4 v2, -0x1

    .line 250
    :cond_0
    return v2

    .line 222
    :cond_1
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/netflix/msl/io/MslObject;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 224
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/msl/io/MslObject;->optBytes(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 229
    if-eqz v1, :cond_2

    .line 230
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    .line 248
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    xor-int/2addr v0, v2

    move v2, v0

    .line 249
    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 236
    instance-of v4, v1, Lcom/netflix/msl/io/MslObject;

    if-eqz v4, :cond_3

    .line 237
    check-cast v1, Lcom/netflix/msl/io/MslObject;

    invoke-static {v1}, Lcom/netflix/msl/io/MslEncoderUtils;->hashObject(Lcom/netflix/msl/io/MslObject;)I

    move-result v1

    goto :goto_1

    .line 238
    :cond_3
    instance-of v4, v1, Lcom/netflix/msl/io/MslArray;

    if-eqz v4, :cond_4

    .line 239
    check-cast v1, Lcom/netflix/msl/io/MslArray;

    invoke-static {v1}, Lcom/netflix/msl/io/MslEncoderUtils;->hashArray(Lcom/netflix/msl/io/MslArray;)I

    move-result v1

    goto :goto_1

    .line 240
    :cond_4
    if-eqz v1, :cond_5

    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 243
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static merge(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/io/MslObject;
    .locals 4

    .prologue
    .line 386
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 401
    :goto_0
    return-object v0

    .line 390
    :cond_0
    if-eqz p0, :cond_1

    new-instance v1, Lcom/netflix/msl/io/MslObject;

    .line 391
    invoke-virtual {p0}, Lcom/netflix/msl/io/MslObject;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    .line 395
    :goto_1
    if-nez p1, :cond_2

    move-object v0, v1

    .line 396
    goto :goto_0

    .line 391
    :cond_1
    new-instance v1, Lcom/netflix/msl/io/MslObject;

    invoke-direct {v1}, Lcom/netflix/msl/io/MslObject;-><init>()V

    goto :goto_1

    .line 399
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslObject;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 401
    goto :goto_0
.end method
