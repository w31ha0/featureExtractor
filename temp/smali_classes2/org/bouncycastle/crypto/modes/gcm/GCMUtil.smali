.class abstract Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;


# direct methods
.method static asInts([B)[I
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    new-array v0, v3, [I

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p0, v3}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method static multiplyP([I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x3

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    if-eqz v0, :cond_0

    aget v0, p0, v1

    const/high16 v2, -0x1f000000

    xor-int/2addr v0, v2

    aput v0, p0, v1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static multiplyP8([I)V
    .locals 1

    const/16 v0, 0x8

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static shiftRight([I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    shl-int/lit8 v0, v2, 0x1f

    goto :goto_0
.end method

.method static xor([I[I)V
    .locals 3

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
