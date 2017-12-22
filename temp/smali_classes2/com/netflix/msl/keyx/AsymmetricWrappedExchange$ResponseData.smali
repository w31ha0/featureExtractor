.class public Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;
.super Lcom/netflix/msl/keyx/KeyResponseData;
.source "AsymmetricWrappedExchange.java"


# static fields
.field private static final KEY_ENCRYPTION_KEY:Ljava/lang/String; = "encryptionkey"

.field private static final KEY_HMAC_KEY:Ljava/lang/String; = "hmackey"

.field private static final KEY_KEY_PAIR_ID:Ljava/lang/String; = "keypairid"


# instance fields
.field private final encryptionKey:[B

.field private final hmacKey:[B

.field private final keyPairId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 467
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 469
    :try_start_0
    const-string/jumbo v0, "keypairid"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    .line 470
    const-string/jumbo v0, "encryptionkey"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 471
    const-string/jumbo v0, "hmackey"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;[B[B)V
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 452
    iput-object p2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    .line 453
    iput-object p3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 454
    iput-object p4, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    .line 455
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 515
    if-ne p1, p0, :cond_0

    .line 521
    :goto_0
    return v1

    .line 516
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 517
    check-cast v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;

    .line 518
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    .line 520
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    iget-object v0, v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    .line 521
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getEncryptionKey()[B
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    return-object v0
.end method

.method public getHmacKey()[B
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    return-object v0
.end method

.method public getKeyPairId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 504
    const-string/jumbo v1, "keypairid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 505
    const-string/jumbo v1, "encryptionkey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 506
    const-string/jumbo v1, "hmackey"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 507
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 529
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->keyPairId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->encryptionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$ResponseData;->hmacKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
