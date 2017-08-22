.class public final Lvpadn/bc;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[C

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 75
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lvpadn/bc;->a:[C

    .line 76
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lvpadn/bc;->b:[I

    .line 78
    sget-object v0, Lvpadn/bc;->b:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 79
    sget-object v0, Lvpadn/bc;->a:[C

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 80
    sget-object v3, Lvpadn/bc;->b:[I

    sget-object v4, Lvpadn/bc;->a:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lvpadn/bc;->b:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 82
    return-void
.end method

.method public static final a([BZ)[B
    .locals 14

    .prologue
    const/16 v3, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    .line 274
    if-eqz p0, :cond_0

    array-length v0, p0

    move v6, v0

    .line 275
    :goto_0
    if-nez v6, :cond_1

    .line 276
    new-array v0, v1, [B

    .line 314
    :goto_1
    return-object v0

    :cond_0
    move v6, v1

    .line 274
    goto :goto_0

    .line 278
    :cond_1
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v7, v0, 0x3

    .line 279
    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v2, v0, 0x2

    .line 280
    if-eqz p1, :cond_3

    add-int/lit8 v0, v2, -0x1

    div-int/lit8 v0, v0, 0x4c

    shl-int/lit8 v0, v0, 0x1

    :goto_2
    add-int v8, v2, v0

    .line 281
    new-array v4, v8, [B

    move v0, v1

    move v2, v1

    move v5, v1

    .line 284
    :cond_2
    :goto_3
    if-ge v5, v7, :cond_4

    .line 286
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 289
    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lvpadn/bc;->a:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v4, v2

    .line 290
    add-int/lit8 v2, v10, 0x1

    sget-object v11, Lvpadn/bc;->a:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    .line 291
    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lvpadn/bc;->a:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v4, v2

    .line 292
    add-int/lit8 v2, v10, 0x1

    sget-object v11, Lvpadn/bc;->a:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v10

    .line 295
    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v2, v9, :cond_2

    .line 296
    add-int/lit8 v9, v2, 0x1

    const/16 v0, 0xd

    aput-byte v0, v4, v2

    .line 297
    add-int/lit8 v0, v9, 0x1

    const/16 v2, 0xa

    aput-byte v2, v4, v9

    move v2, v0

    move v0, v1

    .line 298
    goto :goto_3

    :cond_3
    move v0, v1

    .line 280
    goto :goto_2

    .line 303
    :cond_4
    sub-int v0, v6, v7

    .line 304
    if-lez v0, :cond_6

    .line 306
    aget-byte v2, p0, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v0, v13, :cond_5

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    :cond_5
    or-int/2addr v1, v2

    .line 309
    add-int/lit8 v2, v8, -0x4

    sget-object v5, Lvpadn/bc;->a:[C

    shr-int/lit8 v6, v1, 0xc

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 310
    add-int/lit8 v2, v8, -0x3

    sget-object v5, Lvpadn/bc;->a:[C

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 311
    add-int/lit8 v2, v8, -0x2

    if-ne v0, v13, :cond_7

    sget-object v0, Lvpadn/bc;->a:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    int-to-byte v0, v0

    :goto_4
    aput-byte v0, v4, v2

    .line 312
    add-int/lit8 v0, v8, -0x1

    aput-byte v3, v4, v0

    :cond_6
    move-object v0, v4

    .line 314
    goto/16 :goto_1

    :cond_7
    move v0, v3

    .line 311
    goto :goto_4
.end method
