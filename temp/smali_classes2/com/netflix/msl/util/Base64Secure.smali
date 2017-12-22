.class public Lcom/netflix/msl/util/Base64Secure;
.super Ljava/lang/Object;
.source "Base64Secure.java"

# interfaces
.implements Lcom/netflix/msl/util/Base64$Base64Impl;


# static fields
.field private static final CARRIAGE_RETURN:B = 0xdt

.field private static final DECODE_MAP:[B

.field private static final ENCODE_MAP:[C

.field private static final NEWLINE:B = 0xat

.field private static final PADDING:B = 0x7ft

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/netflix/msl/util/Base64Secure;->initEncodeMap()[C

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/util/Base64Secure;->ENCODE_MAP:[C

    .line 21
    invoke-static {}, Lcom/netflix/msl/util/Base64Secure;->initDecodeMap()[B

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/util/Base64Secure;->DECODE_MAP:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(I)C
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/netflix/msl/util/Base64Secure;->ENCODE_MAP:[C

    and-int/lit8 v1, p0, 0x3f

    aget-char v0, v0, v1

    return v0
.end method

.method private static initDecodeMap()[B
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 54
    new-array v1, v3, [B

    .line 55
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 56
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    .line 59
    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 61
    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 62
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    .line 63
    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 64
    :cond_3
    const/16 v0, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v1, v0

    .line 65
    const/16 v0, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v1, v0

    .line 66
    const/16 v0, 0x3d

    const/16 v2, 0x7f

    aput-byte v2, v1, v0

    .line 68
    return-object v1
.end method

.method private static initEncodeMap()[C
    .locals 6

    .prologue
    const/16 v5, 0x3e

    const/16 v0, 0x34

    const/16 v1, 0x1a

    .line 37
    const/16 v2, 0x40

    new-array v3, v2, [C

    .line 38
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    add-int/lit8 v4, v2, 0x41

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 41
    add-int/lit8 v2, v1, -0x1a

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    aput-char v2, v3, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_1
    :goto_2
    if-ge v0, v5, :cond_2

    .line 43
    add-int/lit8 v1, v0, -0x34

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, v3, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 44
    :cond_2
    const/16 v0, 0x2b

    aput-char v0, v3, v5

    .line 45
    const/16 v0, 0x3f

    const/16 v1, 0x2f

    aput-char v1, v3, v0

    .line 47
    return-object v3
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 12

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 128
    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 129
    new-array v7, v0, [B

    .line 130
    const/4 v4, 0x0

    .line 133
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 134
    const/4 v2, 0x0

    .line 135
    const/4 v1, 0x0

    .line 136
    const/4 v0, 0x0

    move v5, v0

    move v0, v3

    :goto_0
    if-ge v5, v6, :cond_7

    .line 137
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 138
    sget-object v9, Lcom/netflix/msl/util/Base64Secure;->DECODE_MAP:[B

    aget-byte v9, v9, v3

    .line 141
    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 143
    const/16 v9, 0x20

    if-eq v3, v9, :cond_c

    const/16 v9, 0x9

    if-eq v3, v9, :cond_c

    const/16 v9, 0xa

    if-eq v3, v9, :cond_c

    const/16 v9, 0xd

    if-eq v3, v9, :cond_c

    .line 144
    const/4 v0, 0x1

    move v3, v0

    move v0, v2

    move v2, v4

    .line 136
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 149
    :cond_0
    if-eqz v1, :cond_1

    .line 150
    const/4 v0, 0x1

    .line 153
    :cond_1
    add-int/lit8 v3, v2, 0x1

    aput-byte v9, v8, v2

    .line 156
    const/4 v2, 0x4

    if-ne v3, v2, :cond_b

    .line 158
    const/4 v2, 0x0

    aget-byte v2, v8, v2

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v8, v2

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_3

    .line 159
    :cond_2
    const/4 v0, 0x1

    .line 163
    :cond_3
    const/4 v2, 0x2

    aget-byte v2, v8, v2

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_4

    const/4 v2, 0x3

    aget-byte v2, v8, v2

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_5

    .line 164
    :cond_4
    const/4 v1, 0x1

    .line 167
    :cond_5
    add-int/lit8 v3, v4, 0x1

    const/4 v2, 0x0

    aget-byte v2, v8, v2

    shl-int/lit8 v2, v2, 0x2

    const/4 v9, 0x1

    aget-byte v9, v8, v9

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 168
    const/4 v2, 0x2

    aget-byte v2, v8, v2

    const/16 v4, 0x7f

    if-eq v2, v4, :cond_a

    .line 169
    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x1

    aget-byte v4, v8, v4

    shl-int/lit8 v4, v4, 0x4

    const/4 v9, 0x2

    aget-byte v9, v8, v9

    shr-int/lit8 v9, v9, 0x2

    or-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v7, v3

    .line 170
    :goto_2
    const/4 v3, 0x3

    aget-byte v3, v8, v3

    const/16 v4, 0x7f

    if-eq v3, v4, :cond_6

    .line 171
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x2

    aget-byte v4, v8, v4

    shl-int/lit8 v4, v4, 0x6

    const/4 v9, 0x3

    aget-byte v9, v8, v9

    or-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v7, v2

    move v2, v3

    .line 174
    :cond_6
    const/4 v3, 0x0

    move v11, v3

    move v3, v0

    move v0, v11

    goto :goto_1

    .line 179
    :cond_7
    if-eqz v2, :cond_8

    .line 180
    const/4 v0, 0x1

    .line 183
    :cond_8
    if-eqz v0, :cond_9

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Base64 encoded string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_9
    new-array v0, v4, [B

    .line 189
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    return-object v0

    :cond_a
    move v2, v3

    goto :goto_2

    :cond_b
    move v2, v4

    move v11, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_1

    :cond_c
    move v3, v0

    move v0, v2

    move v2, v4

    goto/16 :goto_1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x3d

    .line 85
    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v3, v1, [C

    .line 89
    array-length v1, p1

    move v2, v0

    .line 91
    :goto_0
    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    .line 92
    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p1, v0

    shr-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v5

    aput-char v5, v3, v2

    .line 93
    add-int/lit8 v2, v4, 0x1

    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    invoke-static {v5}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 94
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p1, v6

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    invoke-static {v5}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v5

    aput-char v5, v3, v2

    .line 95
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3f

    invoke-static {v5}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 91
    add-int/lit8 v1, v1, -0x3

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 98
    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 99
    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p1, v0

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v4

    aput-char v4, v3, v2

    .line 100
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v0

    aput-char v0, v3, v1

    .line 101
    add-int/lit8 v0, v2, 0x1

    aput-char v7, v3, v2

    .line 102
    add-int/lit8 v1, v0, 0x1

    aput-char v7, v3, v0

    .line 113
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 105
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 106
    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p1, v0

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v4

    aput-char v4, v3, v2

    .line 107
    add-int/lit8 v2, v1, 0x1

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    invoke-static {v4}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v4

    aput-char v4, v3, v1

    .line 108
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/netflix/msl/util/Base64Secure;->encode(I)C

    move-result v0

    aput-char v0, v3, v2

    .line 109
    add-int/lit8 v0, v1, 0x1

    aput-char v7, v3, v1

    goto :goto_1
.end method
