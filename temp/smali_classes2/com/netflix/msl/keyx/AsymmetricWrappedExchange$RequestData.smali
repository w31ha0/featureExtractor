.class public Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "AsymmetricWrappedExchange.java"


# static fields
.field private static final KEY_KEY_PAIR_ID:Ljava/lang/String; = "keypairid"

.field private static final KEY_MECHANISM:Ljava/lang/String; = "mechanism"

.field private static final KEY_PUBLIC_KEY:Ljava/lang/String; = "publickey"


# instance fields
.field private final keyPairId:Ljava/lang/String;

.field private final mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 281
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 284
    :try_start_0
    const-string/jumbo v0, "keypairid"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    .line 285
    const-string/jumbo v0, "mechanism"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 287
    :try_start_1
    invoke-static {v1}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    :try_start_2
    const-string/jumbo v0, "publickey"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 297
    :try_start_3
    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$1;->$SwitchMap$com$netflix$msl$keyx$AsymmetricWrappedExchange$RequestData$Mechanism:[I

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 319
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    .line 321
    :catch_0
    move-exception v0

    .line 322
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 288
    :catch_1
    move-exception v0

    .line 289
    :try_start_4
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_2

    .line 292
    :catch_2
    move-exception v0

    .line 293
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 304
    :pswitch_0
    :try_start_5
    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 306
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_5} :catch_4

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    .line 329
    return-void

    .line 323
    :catch_3
    move-exception v0

    .line 324
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 325
    :catch_4
    move-exception v0

    .line 326
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 263
    iput-object p1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    .line 264
    iput-object p2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 265
    iput-object p3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    .line 266
    iput-object p4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    .line 267
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    if-ne p1, p0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v3

    .line 377
    :cond_1
    instance-of v0, p1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 378
    check-cast v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    .line 380
    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    .line 383
    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v3

    .line 384
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    iget-object v5, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 386
    invoke-virtual {v4, v5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    .line 387
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    iget-object v0, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 383
    goto :goto_1
.end method

.method public getKeyPairId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 365
    const-string/jumbo v1, "keypairid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 366
    const-string/jumbo v1, "mechanism"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 367
    const-string/jumbo v1, "publickey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 368
    return-object v0
.end method

.method public getMechanism()Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->privateKey:Ljava/security/PrivateKey;

    .line 398
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 399
    :goto_0
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->keyPairId:Ljava/lang/String;

    .line 400
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 401
    invoke-virtual {v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;->publicKey:Ljava/security/PublicKey;

    .line 402
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
