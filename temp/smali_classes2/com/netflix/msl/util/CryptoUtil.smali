.class public Lcom/netflix/msl/util/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# static fields
.field private static final INFO:[B

.field private static final SALT:[B

.field private static final WRAPPING_KEY_LENGTH:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 17
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/msl/util/CryptoUtil;->SALT:[B

    .line 22
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/netflix/msl/util/CryptoUtil;->INFO:[B

    return-void

    .line 17
    nop

    :array_0
    .array-data 1
        0x2t
        0x76t
        0x17t
        -0x68t
        0x4ft
        0x62t
        0x27t
        0x53t
        -0x66t
        0x63t
        0xbt
        -0x77t
        0x7ct
        0x1t
        0x7dt
        0x69t
    .end array-data

    .line 22
    :array_1
    .array-data 1
        -0x80t
        -0x61t
        -0x7et
        -0x59t
        -0x53t
        -0x21t
        0x54t
        -0x73t
        0x3et
        -0x57t
        -0x23t
        0x6t
        0x7ft
        -0x7t
        -0x45t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deriveWrappingKey([B[B)[B
    .locals 5

    .prologue
    .line 43
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    const-string/jumbo v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 50
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/netflix/msl/util/CryptoUtil;->SALT:[B

    const-string/jumbo v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 51
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 52
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 55
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 58
    sget-object v0, Lcom/netflix/msl/util/CryptoUtil;->INFO:[B

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 61
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
