.class public Lcom/netflix/msl/keyx/DiffieHellmanExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "DiffieHellmanExchange.java"


# static fields
.field private static final KEY_PARAMETERS_ID:Ljava/lang/String; = "parametersid"

.field private static final KEY_PUBLIC_KEY:Ljava/lang/String; = "publickey"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/keyx/DiffieHellmanParameters;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->DIFFIE_HELLMAN:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 417
    iput-object p1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    .line 418
    iput-object p2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 419
    return-void
.end method

.method static synthetic access$000([B)[B
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->correctNullBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static correctNullBytes([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 82
    move v0, v1

    move v2, v1

    .line 83
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 84
    aget-byte v3, p0, v0

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    if-ne v2, v4, :cond_2

    .line 99
    :goto_1
    return-object p0

    .line 86
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    array-length v0, p0

    sub-int v3, v0, v2

    .line 96
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [B

    .line 97
    aput-byte v1, v0, v1

    .line 98
    invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 99
    goto :goto_1
.end method

.method private static deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;)Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 378
    :try_start_0
    const-string/jumbo v0, "DiffieHellman"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 379
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 380
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 381
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->correctNullBytes([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 393
    :try_start_1
    const-string/jumbo v1, "SHA-384"

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 397
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 398
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 399
    array-length v2, v1

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 401
    array-length v3, v1

    array-length v4, v2

    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 405
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "HmacSHA256"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 406
    new-instance v2, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 384
    :catch_1
    move-exception v0

    .line 385
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman private key or generated public key rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 386
    :catch_2
    move-exception v0

    .line 387
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman algorithm parameters rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 394
    :catch_3
    move-exception v0

    .line 395
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "SHA-384 algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 9

    .prologue
    .line 510
    instance-of v1, p3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    if-nez v1, :cond_0

    .line 511
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was not created by this factory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    .line 515
    invoke-virtual {p4}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 517
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Authentication scheme for entity not permitted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    .line 520
    :cond_1
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->getParametersId()Ljava/lang/String;

    move-result-object v8

    .line 521
    iget-object v1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    invoke-interface {v1, v8}, Lcom/netflix/msl/keyx/DiffieHellmanParameters;->getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 522
    if-nez v2, :cond_2

    .line 523
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNKNOWN_KEYX_PARAMETERS_ID:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v8}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    .line 528
    :cond_2
    :try_start_0
    const-string/jumbo v1, "DiffieHellman"

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 529
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v3

    .line 530
    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 531
    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 542
    :try_start_1
    const-string/jumbo v1, "DH"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 543
    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 544
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    .line 545
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object v7, v0

    .line 546
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 554
    invoke-static {v3, v1, v2}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;)Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;

    move-result-object v2

    .line 557
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v1

    .line 558
    iget-object v4, v2, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v5, v2, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-interface/range {v1 .. v6}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 563
    :try_start_2
    new-instance v2, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v2, p1, v1}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_2
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_2 .. :try_end_2} :catch_4

    .line 569
    new-instance v3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;

    invoke-interface {v7}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v1, v8, v4}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 570
    new-instance v1, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v1, v3, v2}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v1

    .line 532
    :catch_0
    move-exception v1

    .line 533
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "DiffieHellman algorithm not found."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 534
    :catch_1
    move-exception v1

    .line 535
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Diffie-Hellman public key specification rejected by Diffie-Hellman key factory."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 547
    :catch_2
    move-exception v1

    .line 548
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "DiffieHellman algorithm not found."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 549
    :catch_3
    move-exception v1

    .line 550
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Diffie-Hellman algorithm parameters rejected by Diffie-Hellman key agreement."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 564
    :catch_4
    move-exception v1

    .line 565
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Master token constructed by token factory is not trusted."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 9

    .prologue
    .line 442
    instance-of v1, p3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    if-nez v1, :cond_0

    .line 443
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was not created by this factory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    .line 448
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    new-instance v1, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, p4}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v1

    .line 452
    :cond_1
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 453
    iget-object v2, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 454
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Authentication scheme for entity not permitted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    .line 457
    :cond_2
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->getParametersId()Ljava/lang/String;

    move-result-object v8

    .line 458
    iget-object v1, p0, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    invoke-interface {v1, v8}, Lcom/netflix/msl/keyx/DiffieHellmanParameters;->getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 459
    if-nez v2, :cond_3

    .line 460
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNKNOWN_KEYX_PARAMETERS_ID:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v8}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_3
    :try_start_0
    const-string/jumbo v1, "DiffieHellman"

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 466
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v3

    .line 467
    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 468
    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 479
    :try_start_1
    const-string/jumbo v1, "DH"

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 480
    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 481
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    .line 482
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object v7, v0

    .line 483
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 491
    invoke-static {v3, v1, v2}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;)Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;

    move-result-object v2

    .line 494
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v1

    .line 495
    iget-object v4, v2, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v5, v2, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-interface/range {v1 .. v6}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 498
    new-instance v2, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v2, p1, v1}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 501
    new-instance v3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;

    invoke-interface {v7}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v1, v8, v4}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 502
    new-instance v1, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v1, v3, v2}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v1

    .line 469
    :catch_0
    move-exception v1

    .line 470
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "DiffieHellman algorithm not found."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 471
    :catch_1
    move-exception v1

    .line 472
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Diffie-Hellman public key specification rejected by Diffie-Hellman key factory."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 484
    :catch_2
    move-exception v1

    .line 485
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "DiffieHellman algorithm not found."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 486
    :catch_3
    move-exception v1

    .line 487
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Diffie-Hellman algorithm parameters rejected by Diffie-Hellman key agreement."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 7

    .prologue
    .line 578
    instance-of v0, p2, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key request data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not created by this factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;

    .line 581
    instance-of v0, p3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key response data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not created by this factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_1
    check-cast p3, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;

    .line 586
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->getParametersId()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;->getParametersId()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 589
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_RESPONSE_REQUEST_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "; response "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 592
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$RequestData;->getPrivateKey()Ljavax/crypto/interfaces/DHPrivateKey;

    move-result-object v0

    .line 593
    if-nez v0, :cond_3

    .line 594
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_PRIVATE_KEY_MISSING:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "request Diffie-Hellman private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 595
    :cond_3
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    .line 598
    :try_start_0
    const-string/jumbo v2, "DiffieHellman"

    invoke-static {v2}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 599
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v3

    .line 600
    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 601
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 609
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-static {v2, v0, v1}, Lcom/netflix/msl/keyx/DiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;)Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;

    move-result-object v1

    .line 611
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/DiffieHellmanExchange$ResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 612
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v4, v1, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v5, v1, Lcom/netflix/msl/keyx/DiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 604
    :catch_1
    move-exception v0

    .line 605
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "Diffie-Hellman public key specification rejected by Diffie-Hellman key factory."

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
