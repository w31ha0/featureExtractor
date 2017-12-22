.class public Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;
.super Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;
.source "JsonWebKeyLadderExchange.java"


# static fields
.field private static final A128_KW_TRANSFORM:Ljava/lang/String; = "AESWrap"

.field private static final AES_KW_BLOCK_SIZE:I = 0x8

.field private static final SPACE:B = 0x20t


# instance fields
.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final key:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    .line 460
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 461
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;-><init>()V

    .line 470
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Secret key must be an AES key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 474
    return-void
.end method


# virtual methods
.method public unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
    const-string/jumbo v0, "AESWrap"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 539
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 540
    const-string/jumbo v1, "AES"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 543
    :catch_1
    move-exception v0

    .line 544
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 545
    :catch_2
    move-exception v0

    .line 546
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 483
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    .line 489
    if-nez v0, :cond_0

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_1

    .line 504
    :try_start_0
    const-string/jumbo v0, "AESWrap"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 505
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 510
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 511
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 526
    :goto_1
    return-object v0

    .line 492
    :cond_0
    rsub-int/lit8 v1, v0, 0x8

    .line 493
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 494
    const/4 v2, 0x0

    const/16 v3, 0x7b

    aput-byte v3, v0, v2

    .line 495
    add-int/lit8 v1, v1, 0x1

    .line 496
    const/16 v2, 0x20

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 497
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 514
    :catch_1
    move-exception v0

    .line 515
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 516
    :catch_2
    move-exception v0

    .line 517
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Zero-length plaintext provided."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 518
    :catch_3
    move-exception v0

    .line 519
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 520
    :catch_4
    move-exception v0

    .line 521
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is specified"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    goto :goto_1
.end method
