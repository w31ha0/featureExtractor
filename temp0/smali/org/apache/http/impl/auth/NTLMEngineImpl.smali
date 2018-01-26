.class final Lorg/apache/http/impl/auth/NTLMEngineImpl;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"

# interfaces
.implements Lorg/apache/http/impl/auth/NTLMEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;,
        Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;,
        Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;,
        Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;,
        Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;,
        Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
    }
.end annotation


# static fields
.field static final DEFAULT_CHARSET:Ljava/lang/String; = "ASCII"

.field protected static final FLAG_NEGOTIATE_128:I = 0x20000000

.field protected static final FLAG_NEGOTIATE_ALWAYS_SIGN:I = 0x8000

.field protected static final FLAG_NEGOTIATE_KEY_EXCH:I = 0x40000000

.field protected static final FLAG_NEGOTIATE_NTLM:I = 0x200

.field protected static final FLAG_NEGOTIATE_NTLM2:I = 0x80000

.field protected static final FLAG_NEGOTIATE_SEAL:I = 0x20

.field protected static final FLAG_NEGOTIATE_SIGN:I = 0x10

.field protected static final FLAG_TARGET_DESIRED:I = 0x4

.field protected static final FLAG_UNICODE_ENCODING:I = 0x1

.field private static final RND_GEN:Ljava/security/SecureRandom;

.field private static SIGNATURE:[B


# instance fields
.field private credentialCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "rnd":Ljava/security/SecureRandom;
    :try_start_0
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    sput-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    .line 79
    const-string v2, "NTLMSSP"

    const-string v3, "ASCII"

    invoke-static {v2, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    .local v0, "bytesWithoutNull":[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    sput-object v2, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    .line 81
    sget-object v2, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    sget-object v2, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    array-length v3, v0

    aput-byte v4, v2, v3

    .line 83
    return-void

    .line 64
    .end local v0    # "bytesWithoutNull":[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;

    .line 1232
    return-void
.end method

.method static F(III)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .prologue
    .line 1046
    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static G(III)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .prologue
    .line 1050
    and-int v0, p0, p1

    and-int v1, p0, p2

    or-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static H(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .prologue
    .line 1054
    xor-int v0, p0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    return-object v0
.end method

.method static synthetic access$100([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readUShort([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readULong([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([BI)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readSecurityBuffer([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->makeRandomChallenge()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->makeNTLM2RandomChallenge()[B

    move-result-object v0

    return-object v0
.end method

.method private static convertDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createBlob([B[B)[B
    .locals 13
    .param p0, "clientChallenge"    # [B
    .param p1, "targetInformation"    # [B

    .prologue
    const/4 v9, 0x4

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 525
    new-array v1, v9, [B

    fill-array-data v1, :array_0

    .line 526
    .local v1, "blobSignature":[B
    new-array v4, v9, [B

    fill-array-data v4, :array_1

    .line 527
    .local v4, "reserved":[B
    new-array v8, v9, [B

    fill-array-data v8, :array_2

    .line 528
    .local v8, "unknown1":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 529
    .local v5, "time":J
    const-wide v9, 0xa9730b66800L

    add-long/2addr v5, v9

    .line 530
    const-wide/16 v9, 0x2710

    mul-long/2addr v5, v9

    .line 532
    new-array v7, v12, [B

    .line 533
    .local v7, "timestamp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_0

    .line 534
    long-to-int v9, v5

    int-to-byte v9, v9

    aput-byte v9, v7, v2

    .line 535
    ushr-long/2addr v5, v12

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    :cond_0
    array-length v9, v1

    array-length v10, v4

    add-int/2addr v9, v10

    array-length v10, v7

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x8

    array-length v10, v8

    add-int/2addr v9, v10

    array-length v10, p1

    add-int/2addr v9, v10

    new-array v0, v9, [B

    .line 539
    .local v0, "blob":[B
    const/4 v3, 0x0

    .line 540
    .local v3, "offset":I
    array-length v9, v1

    invoke-static {v1, v11, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    array-length v9, v1

    add-int/2addr v3, v9

    .line 542
    array-length v9, v4

    invoke-static {v4, v11, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    array-length v9, v4

    add-int/2addr v3, v9

    .line 544
    array-length v9, v7

    invoke-static {v7, v11, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    array-length v9, v7

    add-int/2addr v3, v9

    .line 546
    invoke-static {p0, v11, v0, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    add-int/lit8 v3, v3, 0x8

    .line 548
    array-length v9, v8

    invoke-static {v8, v11, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    array-length v9, v8

    add-int/2addr v3, v9

    .line 550
    array-length v9, p1

    invoke-static {p1, v11, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    return-object v0

    .line 525
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 526
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 527
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static createDESKey([BI)Ljava/security/Key;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 568
    .local v0, "keyBytes":[B
    const/4 v2, 0x7

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 570
    .local v1, "material":[B
    aget-byte v2, v0, v3

    aput-byte v2, v1, v3

    .line 571
    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x7

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 572
    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 573
    aget-byte v2, v0, v5

    shl-int/lit8 v2, v2, 0x5

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 574
    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, v0, v7

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 575
    const/4 v2, 0x5

    aget-byte v3, v0, v7

    shl-int/lit8 v3, v3, 0x3

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 576
    const/4 v2, 0x6

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x2

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 577
    const/4 v2, 0x7

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 578
    invoke-static {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->oddParity([B)V

    .line 579
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method static getLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 255
    .local v0, "lmHash":[B
    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "challenge"    # [B
    .param p4, "clientChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 323
    .local v0, "ntlmv2Hash":[B
    invoke-static {v0, p3, p4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmv2Response([B[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method static getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .param p2, "clientChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v3

    .line 359
    .local v3, "ntlmHash":[B
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 360
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 361
    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 362
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 364
    .local v0, "digest":[B
    const/16 v5, 0x8

    new-array v4, v5, [B

    .line 365
    .local v4, "sessionHash":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    invoke-static {v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 367
    .end local v0    # "digest":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v3    # "ntlmHash":[B
    .end local v4    # "sessionHash":[B
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    instance-of v5, v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    if-eqz v5, :cond_0

    .line 369
    check-cast v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    .end local v1    # "e":Ljava/lang/Exception;
    throw v1

    .line 370
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v5, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method static getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    .local v0, "ntlmHash":[B
    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "challenge"    # [B
    .param p4, "clientChallenge"    # [B
    .param p5, "targetInformation"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 299
    .local v1, "ntlmv2Hash":[B
    invoke-static {p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createBlob([B[B)[B

    move-result-object v0

    .line 300
    .local v0, "blob":[B
    invoke-static {v1, p3, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->lmv2Response([B[B[B)[B

    move-result-object v2

    return-object v2
.end method

.method private static lmHash(Ljava/lang/String;)[B
    .locals 14
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 386
    .local v10, "oemPassword":[B
    array-length v11, v10

    const/16 v12, 0xe

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 387
    .local v5, "length":I
    const/16 v11, 0xe

    new-array v4, v11, [B

    .line 388
    .local v4, "keyBytes":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    const/4 v11, 0x0

    invoke-static {v4, v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v8

    .line 390
    .local v8, "lowKey":Ljava/security/Key;
    const/4 v11, 0x7

    invoke-static {v4, v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v3

    .line 391
    .local v3, "highKey":Ljava/security/Key;
    const-string v11, "KGS!@#$%"

    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 392
    .local v9, "magicConstant":[B
    const-string v11, "DES/ECB/NoPadding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 393
    .local v0, "des":Ljavax/crypto/Cipher;
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 394
    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 395
    .local v7, "lowHash":[B
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 396
    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 397
    .local v2, "highHash":[B
    const/16 v11, 0x10

    new-array v6, v11, [B

    .line 398
    .local v6, "lmHash":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-static {v7, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-static {v2, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    return-object v6

    .line 401
    .end local v0    # "des":Ljavax/crypto/Cipher;
    .end local v2    # "highHash":[B
    .end local v3    # "highKey":Ljava/security/Key;
    .end local v4    # "keyBytes":[B
    .end local v5    # "length":I
    .end local v6    # "lmHash":[B
    .end local v7    # "lowHash":[B
    .end local v8    # "lowKey":Ljava/security/Key;
    .end local v9    # "magicConstant":[B
    .end local v10    # "oemPassword":[B
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method private static lmResponse([B[B)[B
    .locals 13
    .param p0, "hash"    # [B
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 465
    const/16 v10, 0x15

    :try_start_0
    new-array v4, v10, [B

    .line 466
    .local v4, "keyBytes":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static {p0, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    const/4 v10, 0x0

    invoke-static {v4, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v6

    .line 468
    .local v6, "lowKey":Ljava/security/Key;
    const/4 v10, 0x7

    invoke-static {v4, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v8

    .line 469
    .local v8, "middleKey":Ljava/security/Key;
    const/16 v10, 0xe

    invoke-static {v4, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v2

    .line 470
    .local v2, "highKey":Ljava/security/Key;
    const-string v10, "DES/ECB/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 471
    .local v0, "des":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 472
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 473
    .local v7, "lowResponse":[B
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 474
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 475
    .local v9, "middleResponse":[B
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 476
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 477
    .local v3, "highResponse":[B
    const/16 v10, 0x18

    new-array v5, v10, [B

    .line 478
    .local v5, "lmResponse":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v7, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-static {v9, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    const/4 v10, 0x0

    const/16 v11, 0x10

    const/16 v12, 0x8

    invoke-static {v3, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    return-object v5

    .line 482
    .end local v0    # "des":Ljavax/crypto/Cipher;
    .end local v2    # "highKey":Ljava/security/Key;
    .end local v3    # "highResponse":[B
    .end local v4    # "keyBytes":[B
    .end local v5    # "lmResponse":[B
    .end local v6    # "lowKey":Ljava/security/Key;
    .end local v7    # "lowResponse":[B
    .end local v8    # "middleKey":Ljava/security/Key;
    .end local v9    # "middleResponse":[B
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method private static lmv2Response([B[B[B)[B
    .locals 6
    .param p0, "hash"    # [B
    .param p1, "challenge"    # [B
    .param p2, "clientData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 503
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 504
    .local v0, "hmacMD5":Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 505
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 506
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object v2

    .line 507
    .local v2, "mac":[B
    array-length v3, v2

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 508
    .local v1, "lmv2Response":[B
    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    array-length v3, v2

    array-length v4, p2

    invoke-static {p2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    return-object v1
.end method

.method private static makeNTLM2RandomChallenge()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x18

    .line 229
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v2, "Random generator not available"

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    new-array v0, v3, [B

    .line 233
    .local v0, "rval":[B
    sget-object v2, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    monitor-enter v2

    .line 234
    :try_start_0
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 235
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 238
    return-object v0

    .line 235
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static makeRandomChallenge()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v2, "Random generator not available"

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_0
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 221
    .local v0, "rval":[B
    sget-object v2, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    monitor-enter v2

    .line 222
    :try_start_0
    sget-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 223
    monitor-exit v2

    .line 224
    return-object v0

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static ntlmHash(Ljava/lang/String;)[B
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 417
    :try_start_0
    const-string v3, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 418
    .local v2, "unicodePassword":[B
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;-><init>()V

    .line 419
    .local v1, "md4":Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->update([B)V

    .line 420
    invoke-virtual {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->getOutput()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 421
    .end local v1    # "md4":Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;
    .end local v2    # "unicodePassword":[B
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unicode not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 442
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 443
    .local v2, "ntlmHash":[B
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 445
    .local v1, "hmacMD5":Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnicodeLittleUnmarked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 446
    const-string v3, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 447
    invoke-virtual {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 448
    .end local v1    # "hmacMD5":Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;
    .end local v2    # "ntlmHash":[B
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unicode not supported! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static oddParity([B)V
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 589
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 590
    aget-byte v0, p0, v1

    .line 591
    .local v0, "b":B
    ushr-int/lit8 v3, v0, 0x7

    ushr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x1

    xor-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 593
    .local v2, "needsParity":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 594
    aget-byte v3, p0, v1

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 589
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v2    # "needsParity":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 596
    .restart local v2    # "needsParity":Z
    :cond_1
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    goto :goto_2

    .line 599
    .end local v0    # "b":B
    .end local v2    # "needsParity":Z
    :cond_2
    return-void
.end method

.method private static readSecurityBuffer([BI)[B
    .locals 5
    .param p0, "src"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readUShort([BI)I

    move-result v1

    .line 206
    .local v1, "length":I
    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->readULong([BI)I

    move-result v2

    .line 207
    .local v2, "offset":I
    array-length v3, p0

    add-int v4, v2, v1

    if-ge v3, v4, :cond_0

    .line 208
    new-instance v3, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v4, "NTLM authentication - buffer too small for data item"

    invoke-direct {v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_0
    new-array v0, v1, [B

    .line 211
    .local v0, "buffer":[B
    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    return-object v0
.end method

.method private static readULong([BI)I
    .locals 2
    .param p0, "src"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 192
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    .line 193
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM authentication - buffer too small for DWORD"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static readUShort([BI)I
    .locals 2
    .param p0, "src"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 199
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    .line 200
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM authentication - buffer too small for WORD"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static rotintlft(II)I
    .locals 2
    .param p0, "val"    # I
    .param p1, "numbits"    # I

    .prologue
    .line 1058
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 177
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 178
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static writeULong([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "value"    # I
    .param p2, "offset"    # I

    .prologue
    .line 1039
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    .line 1040
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1041
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1042
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1043
    return-void
.end method


# virtual methods
.method public generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "workstation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "workstation"    # Ljava/lang/String;
    .param p5, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 1307
    new-instance v9, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;

    invoke-direct {v9, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v9, "t2m":Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;
    invoke-virtual {v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B

    move-result-object v5

    invoke-virtual {v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I

    move-result v6

    invoke-virtual {v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCredentialCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;

    return-object v0
.end method

.method final getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "response":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 109
    .end local v11    # "response":Ljava/lang/String;
    :cond_1
    new-instance v12, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;

    invoke-direct {v12, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V

    .line 110
    .local v12, "t2m":Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;
    invoke-virtual {v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B

    move-result-object v7

    invoke-virtual {v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I

    move-result v8

    invoke-virtual {v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B

    move-result-object v10

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "response":Ljava/lang/String;
    goto :goto_0
.end method

.method getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;

    invoke-direct {v0, p2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;
    .locals 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "nonce"    # [B
    .param p6, "type2Flags"    # I
    .param p7, "target"    # Ljava/lang/String;
    .param p8, "targetInformation"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;

    move-object v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setCredentialCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "credentialCharset"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl;->credentialCharset:Ljava/lang/String;

    .line 171
    return-void
.end method
