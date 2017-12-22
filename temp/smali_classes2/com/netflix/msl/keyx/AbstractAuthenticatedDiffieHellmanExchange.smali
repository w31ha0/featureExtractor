.class public abstract Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "AbstractAuthenticatedDiffieHellmanExchange.java"


# static fields
.field protected static final HMAC_SHA256_ALGO:Ljava/lang/String; = "HmacSHA256"

.field protected static final HMAC_SHA384_ALGO:Ljava/lang/String; = "HmacSHA384"

.field protected static final SHA384_ALGO:Ljava/lang/String; = "SHA-384"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

.field private final repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/keyx/DerivationKeyRepository;Lcom/netflix/msl/keyx/DiffieHellmanParameters;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 157
    iput-object p1, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    .line 158
    iput-object p2, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    .line 159
    iput-object p3, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 161
    return-void
.end method

.method private static computeMac(Ljava/security/Key;[BLjava/lang/String;)[B
    .locals 4

    .prologue
    .line 185
    :try_start_0
    invoke-static {p2}, Lcom/netflix/msl/crypto/CryptoCache;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 187
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " algorithm not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 190
    :catch_1
    move-exception v0

    .line 191
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static concat([B[B)[B
    .locals 4

    .prologue
    .line 283
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 284
    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    return-object v0
.end method

.method static correctNullBytes([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 95
    move v0, v1

    move v2, v1

    .line 96
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 97
    aget-byte v3, p0, v0

    if-eqz v3, :cond_1

    .line 103
    :cond_0
    if-ne v2, v4, :cond_2

    .line 112
    :goto_1
    return-object p0

    .line 99
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    array-length v0, p0

    sub-int v3, v0, v2

    .line 109
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [B

    .line 110
    aput-byte v1, v0, v1

    .line 111
    invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 112
    goto :goto_1
.end method

.method protected static deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 227
    :try_start_0
    const-string/jumbo v0, "DiffieHellman"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 230
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 244
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA384"

    invoke-direct {v1, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 245
    const-string/jumbo v2, "HmacSHA384"

    invoke-static {v1, v0, v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->computeMac(Ljava/security/Key;[BLjava/lang/String;)[B

    move-result-object v0

    .line 246
    new-array v1, v7, [B

    .line 247
    array-length v2, v1

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 249
    array-length v3, v1

    array-length v4, v2

    invoke-static {v0, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    .line 256
    new-array v3, v7, [B

    fill-array-data v3, :array_1

    .line 262
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 263
    invoke-static {v1, v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->concat([B[B)[B

    move-result-object v0

    .line 264
    const-string/jumbo v5, "HmacSHA256"

    invoke-static {v4, v0, v5}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->computeMac(Ljava/security/Key;[BLjava/lang/String;)[B

    move-result-object v0

    .line 267
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 268
    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v4, v3, v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->computeMac(Ljava/security/Key;[BLjava/lang/String;)[B

    move-result-object v0

    .line 272
    new-array v3, v7, [B

    .line 273
    array-length v4, v3

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v0, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 277
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "HmacSHA256"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 278
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 279
    new-instance v3, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    invoke-direct {v3, v0, v1, v2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v3

    .line 232
    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman private key or generated public key rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 236
    :catch_2
    move-exception v0

    .line 237
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman algorithm parameters rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 252
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

    .line 256
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

.method private generatePrivatePublicKeyPair(Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/KeyPair;
    .locals 3

    .prologue
    .line 318
    :try_start_0
    const-string/jumbo v0, "DH"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 320
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 323
    :catch_1
    move-exception v0

    .line 324
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman algorithm parameters rejected by Diffie-Hellman key agreement."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reconstituteRequestPublicKey(Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/PublicKey;
    .locals 5

    .prologue
    .line 298
    :try_start_0
    const-string/jumbo v0, "DiffieHellman"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v1

    .line 300
    new-instance v2, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 301
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 304
    :catch_1
    move-exception v0

    .line 305
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Diffie-Hellman public key specification rejected by Diffie-Hellman key factory."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 8

    .prologue
    .line 404
    instance-of v0, p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key request data "

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

    .line 406
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    .line 409
    invoke-virtual {p4}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 410
    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getMechanism()Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    move-result-object v2

    .line 415
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getWrapdata()[B

    move-result-object v3

    .line 418
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v4, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    invoke-interface {v4, v0}, Lcom/netflix/msl/keyx/DiffieHellmanParameters;->getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    .line 422
    invoke-direct {p0, p3, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->reconstituteRequestPublicKey(Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 425
    invoke-direct {p0, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->generatePrivatePublicKeyPair(Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/KeyPair;

    move-result-object v7

    .line 426
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljavax/crypto/interfaces/DHPublicKey;

    .line 427
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 430
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v1

    .line 431
    invoke-static {v5, v0, v4, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    move-result-object v1

    .line 434
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v2

    .line 436
    iget-object v3, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->derivationKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {v0, v3, v2, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v7

    .line 439
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v0

    .line 440
    iget-object v3, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 443
    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 446
    new-instance v2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v0, v7, v3, v4}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[BLjava/lang/String;Ljava/math/BigInteger;)V

    .line 447
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 8

    .prologue
    .line 348
    instance-of v0, p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key request data "

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

    .line 350
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    .line 354
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, p4}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    .line 356
    :cond_1
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_2
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getMechanism()Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    move-result-object v2

    .line 364
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getWrapdata()[B

    move-result-object v3

    .line 365
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v4, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->params:Lcom/netflix/msl/keyx/DiffieHellmanParameters;

    invoke-interface {v4, v0}, Lcom/netflix/msl/keyx/DiffieHellmanParameters;->getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    .line 371
    invoke-direct {p0, p3, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->reconstituteRequestPublicKey(Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 374
    invoke-direct {p0, v4}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->generatePrivatePublicKeyPair(Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/KeyPair;

    move-result-object v7

    .line 375
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljavax/crypto/interfaces/DHPublicKey;

    .line 376
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 379
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v1

    .line 380
    invoke-static {v5, v0, v4, v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    move-result-object v1

    .line 383
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v2

    .line 385
    iget-object v3, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->derivationKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {v0, v3, v2, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v7

    .line 388
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v0

    .line 389
    iget-object v3, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 392
    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 395
    new-instance v2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v0, v7, v3, v4}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[BLjava/lang/String;Ljava/math/BigInteger;)V

    .line 396
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 452
    instance-of v0, p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    if-nez v0, :cond_0

    .line 453
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

    .line 454
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;

    .line 455
    instance-of v0, p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    if-nez v0, :cond_1

    .line 456
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

    .line 457
    :cond_1
    check-cast p3, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    .line 460
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getParametersId()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getParametersId()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 463
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

    .line 467
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getPrivateKey()Ljavax/crypto/interfaces/DHPrivateKey;

    move-result-object v1

    .line 468
    if-nez v1, :cond_3

    .line 469
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_PRIVATE_KEY_MISSING:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "request Diffie-Hellman private key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 472
    :cond_3
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 475
    :try_start_0
    const-string/jumbo v0, "DiffieHellman"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 476
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v3

    .line 477
    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 478
    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 486
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getMechanism()Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;

    move-result-object v0

    .line 487
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanRequestData;->getWrapdata()[B

    move-result-object v5

    .line 488
    invoke-virtual {p1, v8}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    .line 490
    sget-object v6, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$1;->$SwitchMap$com$netflix$msl$keyx$AbstractAuthenticatedDiffieHellmanExchange$Mechanism:[I

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 513
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data mechanism "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not supported but it should be."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "DiffieHellman algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 481
    :catch_1
    move-exception v0

    .line 482
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "Diffie-Hellman public key specification rejected by Diffie-Hellman key factory."

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 492
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    invoke-interface {v0, v5}, Lcom/netflix/msl/keyx/DerivationKeyRepository;->getDerivationKey([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 493
    if-nez v0, :cond_4

    .line 494
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_DERIVATION_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-static {v5}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_4
    :try_start_1
    const-string/jumbo v6, "SHA-384"

    invoke-static {v6}, Lcom/netflix/msl/crypto/CryptoCache;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 497
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 517
    :goto_0
    invoke-static {v4, v1, v2, v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->deriveSessionKeys(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljavax/crypto/spec/DHParameterSpec;[B)Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;

    move-result-object v1

    .line 521
    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getWrapdata()[B

    move-result-object v2

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->derivationKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0, v2, v4}, Lcom/netflix/msl/keyx/DerivationKeyRepository;->addDerivationKey([BLjavax/crypto/SecretKey;)V

    .line 522
    if-eqz v5, :cond_5

    .line 523
    iget-object v0, p0, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->repository:Lcom/netflix/msl/keyx/DerivationKeyRepository;

    invoke-interface {v0, v5}, Lcom/netflix/msl/keyx/DerivationKeyRepository;->removeDerivationKey([B)V

    .line 526
    :cond_5
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 527
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v4, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v5, v1, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$SessionKeys;->hmacKey:Ljavax/crypto/SecretKey;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 498
    :catch_2
    move-exception v0

    .line 499
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "SHA-384 algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 505
    :pswitch_1
    invoke-virtual {p0, p1, v0, v8, v3}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_2
    invoke-virtual {p0, p1, v0, v8, v3}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B
.end method
