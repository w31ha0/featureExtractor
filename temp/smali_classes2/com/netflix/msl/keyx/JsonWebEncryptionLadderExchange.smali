.class public Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "JsonWebEncryptionLadderExchange.java"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/keyx/WrapCryptoContextRepository;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->JWE_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 436
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    .line 437
    iput-object p2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 438
    return-void
.end method

.method private static createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 4

    .prologue
    .line 401
    sget-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebEncryptionLadderExchange$Mechanism:[I

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 424
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v0, p3}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 405
    sget-object v1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v1

    .line 406
    if-nez v1, :cond_0

    .line 407
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    invoke-virtual {v1, p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;

    invoke-direct {v1, v0}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;-><init>(Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 410
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    .line 421
    :goto_0
    return-object v0

    .line 414
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 416
    invoke-interface {v0, p2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v0

    .line 417
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 418
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 419
    :cond_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 420
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;

    invoke-direct {v2, v1}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 421
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 445
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 453
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 15

    .prologue
    .line 531
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    if-nez v2, :cond_0

    .line 532
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key request data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was not created by this factory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    .line 536
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v9

    .line 537
    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 538
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Authentication Sscheme for entity not permitted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v2

    throw v2

    .line 541
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 542
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 544
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v7, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v3

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v10

    .line 549
    move-object/from16 v0, p2

    invoke-interface {v3, v2, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v11

    .line 552
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 553
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 556
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v12, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 557
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v8, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    move-result-object v13

    .line 561
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v14

    .line 564
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->wrap:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 565
    sget-object v3, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v2, v10, v3}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v2

    .line 566
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v9}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v3

    .line 567
    move-object/from16 v0, p2

    invoke-interface {v3, v2, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v13

    .line 570
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;

    invoke-direct {v2, v7}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 571
    new-instance v9, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v2, v3, v4}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    .line 572
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->enc:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 573
    new-instance v3, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->sig:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v5, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 574
    sget-object v4, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v2, v10, v4}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v2

    .line 575
    sget-object v4, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v3, v10, v4}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v3

    .line 576
    move-object/from16 v0, p2

    invoke-interface {v9, v2, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v14

    .line 577
    move-object/from16 v0, p2

    invoke-interface {v9, v3, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v10

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v4

    .line 581
    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object v7, v12

    invoke-interface/range {v4 .. v9}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    .line 584
    new-instance v8, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v3}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 587
    new-instance v2, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;

    move-object v4, v13

    move-object v5, v11

    move-object v6, v14

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[B[B[B[B)V

    .line 588
    new-instance v3, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v3, v2, v8}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v3
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 15

    .prologue
    .line 461
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    if-nez v2, :cond_0

    .line 462
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key request data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was not created by this factory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    .line 467
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    new-instance v2, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v3, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    move-object/from16 v0, p4

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v2

    .line 471
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v9

    .line 472
    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Authentication scheme for entity not permitted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v2

    throw v2

    .line 476
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 477
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 479
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v7, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v3

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v10

    .line 484
    move-object/from16 v0, p2

    invoke-interface {v3, v2, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v11

    .line 487
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 488
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 491
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v12, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 492
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v8, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    move-result-object v13

    .line 496
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v14

    .line 499
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->wrap:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 500
    sget-object v3, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v2, v10, v3}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v2

    .line 501
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v9}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v3

    .line 502
    move-object/from16 v0, p2

    invoke-interface {v3, v2, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v13

    .line 505
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;

    invoke-direct {v2, v7}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 506
    new-instance v9, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v2, v3, v4}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    .line 507
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->enc:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 508
    new-instance v3, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->sig:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v5, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/crypto/JsonWebKey$Usage;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 509
    sget-object v4, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v2, v10, v4}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v2

    .line 510
    sget-object v4, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v3, v10, v4}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v3

    .line 511
    move-object/from16 v0, p2

    invoke-interface {v9, v2, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v14

    .line 512
    move-object/from16 v0, p2

    invoke-interface {v9, v3, v10, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v10

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v4

    .line 516
    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object v7, v12

    invoke-interface/range {v4 .. v9}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    .line 519
    new-instance v8, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v3}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 522
    new-instance v2, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;

    move-object v4, v13

    move-object v5, v11

    move-object v6, v14

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[B[B[B[B)V

    .line 523
    new-instance v3, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v3, v2, v8}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v3
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 9

    .prologue
    .line 596
    instance-of v0, p2, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    if-nez v0, :cond_0

    .line 597
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

    .line 598
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    .line 599
    instance-of v0, p3, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;

    if-nez v0, :cond_1

    .line 600
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

    .line 601
    :cond_1
    check-cast p3, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;

    .line 604
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    move-result-object v0

    .line 605
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v1

    .line 606
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    .line 609
    sget-object v4, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebEncryptionLadderExchange$Mechanism:[I

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 629
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 612
    :pswitch_0
    new-instance v4, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v4, v3}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 613
    sget-object v5, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {p1, v5}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v5

    .line 614
    if-nez v5, :cond_2

    .line 615
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 616
    :cond_2
    invoke-virtual {v5, p1, v4}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 617
    new-instance v4, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;

    invoke-direct {v4, v0}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;-><init>(Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 618
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v5, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v6, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    .line 633
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v4

    .line 634
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;->getWrapKey()[B

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v5

    .line 637
    :try_start_0
    invoke-virtual {v4, v5}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 638
    new-instance v6, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v6, v0}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/io/MslObject;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    invoke-virtual {v6}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 645
    new-instance v5, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;

    invoke-direct {v5, v0}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$AesKwCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 646
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;

    sget-object v6, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v7, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;->JWE_JS:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;

    invoke-direct {v0, p1, v5, v6, v7}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Format;)V

    .line 647
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;->getEncryptionKey()[B

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v5

    .line 648
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;->getHmacKey()[B

    move-result-object v6

    invoke-interface {v0, v6, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v6

    .line 651
    :try_start_1
    invoke-virtual {v4, v5}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v7

    .line 652
    new-instance v8, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v8, v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/io/MslObject;)V
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 658
    :try_start_2
    invoke-virtual {v4, v6}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v4

    .line 659
    new-instance v5, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v5, v4}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/io/MslObject;)V
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_2

    .line 665
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;->getWrapdata()[B

    move-result-object v2

    .line 666
    iget-object v4, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v4, v2, v0}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->addCryptoContext([BLcom/netflix/msl/crypto/ICryptoContext;)V

    .line 667
    if-eqz v1, :cond_4

    .line 668
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v0, v1}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->removeCryptoContext([B)V

    .line 671
    :cond_4
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$ResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 672
    invoke-virtual {v8}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 673
    invoke-virtual {v5}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 674
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 623
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v0, v1}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->getCryptoContext([B)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 624
    if-nez v0, :cond_3

    .line 625
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 653
    :catch_1
    move-exception v0

    .line 654
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 660
    :catch_2
    move-exception v0

    .line 661
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
