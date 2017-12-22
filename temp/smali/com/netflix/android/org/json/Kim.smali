.class public Lcom/netflix/android/org/json/Kim;
.super Ljava/lang/Object;
.source "Kim.java"


# instance fields
.field private bytes:[B

.field private hashcode:I

.field public length:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/Kim;II)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p1, Lcom/netflix/android/org/json/Kim;->bytes:[B

    invoke-direct {p0, v0, p2, p3}, Lcom/netflix/android/org/json/Kim;-><init>([BII)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .prologue
    const v11, 0xdbff

    const v10, 0xd800

    const/16 v9, 0x3fff

    const/16 v8, 0x7f

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    .line 74
    iput v1, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 80
    iput v1, p0, Lcom/netflix/android/org/json/Kim;->length:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/org/json/Kim;->string:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 156
    iput v1, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 157
    iput v1, p0, Lcom/netflix/android/org/json/Kim;->length:I

    .line 162
    if-lez v4, :cond_9

    move v0, v1

    .line 163
    :goto_0
    if-ge v0, v4, :cond_4

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 165
    if-gt v2, v8, :cond_0

    .line 166
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    .line 163
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    if-gt v2, v9, :cond_1

    .line 168
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    goto :goto_1

    .line 170
    :cond_1
    if-lt v2, v10, :cond_3

    const v3, 0xdfff

    if-gt v2, v3, :cond_3

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 173
    if-gt v2, v11, :cond_2

    const v2, 0xdc00

    if-lt v3, v2, :cond_2

    const v2, 0xdfff

    if-le v3, v2, :cond_3

    .line 174
    :cond_2
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    const-string/jumbo v1, "Bad UTF16"

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    goto :goto_1

    .line 184
    :cond_4
    iget v0, p0, Lcom/netflix/android/org/json/Kim;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    .line 187
    const/4 v0, 0x1

    move v2, v0

    move v3, v1

    .line 188
    :goto_2
    if-ge v1, v4, :cond_8

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 190
    if-gt v0, v8, :cond_5

    .line 191
    iget-object v5, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v3

    .line 192
    add-int/2addr v0, v2

    .line 193
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 194
    add-int/lit8 v2, v3, 0x1

    .line 188
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 195
    :cond_5
    if-gt v0, v9, :cond_6

    .line 196
    ushr-int/lit8 v5, v0, 0x7

    or-int/lit16 v5, v5, 0x80

    .line 197
    iget-object v6, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v3

    .line 198
    add-int/2addr v2, v5

    .line 199
    iget v5, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 201
    and-int/lit8 v0, v0, 0x7f

    .line 202
    iget-object v5, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v3

    .line 203
    add-int/2addr v0, v2

    .line 204
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 205
    add-int/lit8 v2, v3, 0x1

    goto :goto_3

    .line 207
    :cond_6
    if-lt v0, v10, :cond_7

    if-gt v0, v11, :cond_7

    .line 208
    add-int/lit8 v1, v1, 0x1

    .line 209
    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0x3ff

    or-int/2addr v0, v5

    const/high16 v5, 0x10000

    add-int/2addr v0, v5

    .line 212
    :cond_7
    ushr-int/lit8 v5, v0, 0xe

    or-int/lit16 v5, v5, 0x80

    .line 213
    iget-object v6, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v3

    .line 214
    add-int/2addr v2, v5

    .line 215
    iget v5, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 217
    ushr-int/lit8 v5, v0, 0x7

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x80

    .line 218
    iget-object v6, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v3

    .line 219
    add-int/2addr v2, v5

    .line 220
    iget v5, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    and-int/lit8 v0, v0, 0x7f

    .line 223
    iget-object v5, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v3

    .line 224
    add-int/2addr v0, v2

    .line 225
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 226
    add-int/lit8 v2, v3, 0x1

    goto :goto_3

    .line 229
    :cond_8
    iget v0, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    shl-int/lit8 v1, v2, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 231
    :cond_9
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/android/org/json/Kim;-><init>([BII)V

    .line 128
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    .line 74
    iput v0, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 80
    iput v0, p0, Lcom/netflix/android/org/json/Kim;->length:I

    .line 85
    iput-object v1, p0, Lcom/netflix/android/org/json/Kim;->string:Ljava/lang/String;

    .line 102
    const/4 v1, 0x1

    .line 104
    iput v0, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 105
    sub-int v2, p3, p2

    iput v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    .line 106
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    if-lez v2, :cond_1

    .line 107
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    .line 108
    :goto_0
    iget v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    if-ge v0, v2, :cond_0

    .line 109
    add-int v2, v0, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 110
    add-int/2addr v1, v2

    .line 111
    iget v3, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 112
    iget-object v3, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget v0, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    .line 116
    :cond_1
    return-void
.end method

.method public static characterSize(I)I
    .locals 3

    .prologue
    .line 278
    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-le p0, v0, :cond_1

    .line 279
    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x3fff

    if-gt p0, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public characterAt(I)I
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v0

    .line 246
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v1

    .line 251
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_3

    .line 252
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v1

    .line 253
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 264
    :cond_2
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_3
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v2

    .line 258
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 259
    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_2

    const/16 v1, 0x3fff

    if-le v0, v1, :cond_2

    const v1, 0x10ffff

    if-gt v0, v1, :cond_2

    const v1, 0xd800

    if-lt v0, v1, :cond_0

    const v1, 0xdfff

    if-le v0, v1, :cond_2

    goto :goto_0
.end method

.method public copy([BI)I
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/netflix/android/org/json/Kim;->length:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v0, p0, Lcom/netflix/android/org/json/Kim;->length:I

    add-int/2addr v0, p2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 308
    instance-of v1, p1, Lcom/netflix/android/org/json/Kim;

    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    check-cast p1, Lcom/netflix/android/org/json/Kim;

    .line 312
    if-ne p0, p1, :cond_2

    .line 313
    const/4 v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    iget v1, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    iget v2, p1, Lcom/netflix/android/org/json/Kim;->hashcode:I

    if-ne v1, v2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    iget-object v1, p1, Lcom/netflix/android/org/json/Kim;->bytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)I
    .locals 3

    .prologue
    .line 330
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/netflix/android/org/json/Kim;->length:I

    if-le p1, v0, :cond_1

    .line 331
    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/Kim;->bytes:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/netflix/android/org/json/Kim;->hashcode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/high16 v7, 0x10000

    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/netflix/android/org/json/Kim;->string:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 356
    iget v0, p0, Lcom/netflix/android/org/json/Kim;->length:I

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 357
    :goto_0
    iget v4, p0, Lcom/netflix/android/org/json/Kim;->length:I

    if-ge v0, v4, :cond_1

    .line 358
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/Kim;->characterAt(I)I

    move-result v4

    .line 359
    if-ge v4, v7, :cond_0

    .line 360
    int-to-char v5, v4

    aput-char v5, v3, v2

    .line 361
    add-int/lit8 v2, v2, 0x1

    .line 357
    :goto_1
    invoke-static {v4}, Lcom/netflix/android/org/json/Kim;->characterSize(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 363
    :cond_0
    const v5, 0xd800

    sub-int v6, v4, v7

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    .line 365
    const v5, 0xdc00

    and-int/lit16 v6, v4, 0x3ff

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v2

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/netflix/android/org/json/Kim;->string:Ljava/lang/String;

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/org/json/Kim;->string:Ljava/lang/String;

    return-object v0
.end method
