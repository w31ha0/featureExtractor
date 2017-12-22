.class public Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "JsonWebKeyLadderExchange.java"


# static fields
.field private static final ENCRYPT_DECRYPT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGN_VERIFY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final WRAP_KEY_ID:Ljava/lang/String; = "wrapKeyId"

.field private static final WRAP_UNWRAP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->encrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->decrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->wrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->unwrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->WRAP_UNWRAP:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->sign:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->verify:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->SIGN_VERIFY:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/keyx/WrapCryptoContextRepository;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->JWK_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 607
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    .line 608
    iput-object p2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 609
    return-void
.end method

.method private static createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;
    .locals 3

    .prologue
    .line 574
    sget-object v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebKeyLadderExchange$Mechanism:[I

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 595
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 577
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v0, p3}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 578
    sget-object v1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v1

    .line 579
    if-nez v1, :cond_0

    .line 580
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    invoke-virtual {v1, p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    .line 582
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 592
    :goto_0
    return-object v0

    .line 586
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 588
    invoke-interface {v0, p2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v0

    .line 589
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 590
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 591
    :cond_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 592
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    goto :goto_0

    .line 574
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
    .line 616
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 624
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 14

    .prologue
    .line 700
    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    if-nez v1, :cond_0

    .line 701
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    .line 702
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    .line 705
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v8

    .line 706
    iget-object v1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 707
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication scheme for entity not permitted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    .line 710
    :cond_1
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 711
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 712
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v6, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 716
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v9

    .line 717
    move-object/from16 v0, p2

    invoke-interface {v2, v1, v9, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v10

    .line 720
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 721
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 722
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 723
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 724
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v11, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 725
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v7, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;

    move-result-object v12

    .line 729
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v13

    .line 732
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->WRAP_UNWRAP:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const-string/jumbo v5, "wrapKeyId"

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 733
    sget-object v2, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v1, v9, v2}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 734
    invoke-static {p1, v12, v13, v8}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;

    move-result-object v2

    .line 735
    move-object/from16 v0, p2

    invoke-interface {v2, v1, v9, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v12

    .line 738
    new-instance v8, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v8, v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 739
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 740
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->SIGN_VERIFY:Ljava/util/Set;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 741
    sget-object v3, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v1, v9, v3}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 742
    sget-object v3, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v2, v9, v3}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v2

    .line 743
    move-object/from16 v0, p2

    invoke-interface {v8, v1, v9, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v13

    .line 744
    move-object/from16 v0, p2

    invoke-interface {v8, v2, v9, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v9

    .line 747
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    .line 748
    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v5, p4

    move-object v6, v11

    invoke-interface/range {v3 .. v8}, Lcom/netflix/msl/tokens/TokenFactory;->createMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 751
    new-instance v7, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v7, p1, v2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 754
    new-instance v1, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    move-object v3, v12

    move-object v4, v10

    move-object v5, v13

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[B[B[B[B)V

    .line 755
    new-instance v2, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v2, v1, v7}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v2
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 14

    .prologue
    .line 632
    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    if-nez v1, :cond_0

    .line 633
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key request data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    .line 634
    :cond_0
    check-cast p3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    .line 638
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 639
    new-instance v1, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    move-object/from16 v0, p4

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v1

    .line 642
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;

    move-result-object v8

    .line 643
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v9

    .line 644
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v10

    .line 647
    iget-object v1, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 648
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication scheme for entity not permitted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v1

    throw v1

    .line 651
    :cond_2
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 652
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 653
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v6, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 656
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 657
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v11

    .line 658
    move-object/from16 v0, p2

    invoke-interface {v2, v1, v11, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v12

    .line 661
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 662
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 663
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 664
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 665
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v13, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 666
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v7, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 669
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->WRAP_UNWRAP:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const-string/jumbo v5, "wrapKeyId"

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 670
    sget-object v2, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v1, v11, v2}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 671
    invoke-static {p1, v8, v9, v10}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;[BLjava/lang/String;)Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$JwkCryptoContext;

    move-result-object v2

    .line 672
    move-object/from16 v0, p2

    invoke-interface {v2, v1, v11, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v9

    .line 675
    new-instance v8, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v8, v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 676
    new-instance v1, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->ENCRYPT_DECRYPT:Ljava/util/Set;

    sget-object v3, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 677
    new-instance v2, Lcom/netflix/msl/crypto/JsonWebKey;

    sget-object v3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->SIGN_VERIFY:Ljava/util/Set;

    sget-object v4, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Ljava/util/Set;Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;ZLjava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 678
    sget-object v3, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v1, v11, v3}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 679
    sget-object v3, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v2, v11, v3}, Lcom/netflix/msl/crypto/JsonWebKey;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v2

    .line 680
    move-object/from16 v0, p2

    invoke-interface {v8, v1, v11, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v10

    .line 681
    move-object/from16 v0, p2

    invoke-interface {v8, v2, v11, v0}, Lcom/netflix/msl/crypto/ICryptoContext;->wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v11

    .line 684
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    .line 685
    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v5, p4

    move-object v6, v13

    invoke-interface/range {v3 .. v8}, Lcom/netflix/msl/tokens/TokenFactory;->renewMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 688
    new-instance v7, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v7, p1, v2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 691
    new-instance v1, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    move-object v3, v9

    move-object v4, v12

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;[B[B[B[B)V

    .line 692
    new-instance v2, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    invoke-direct {v2, v1, v7}, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;-><init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v2
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 9

    .prologue
    .line 763
    instance-of v0, p2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    if-nez v0, :cond_0

    .line 764
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

    .line 765
    :cond_0
    check-cast p2, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;

    .line 766
    instance-of v0, p3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    if-nez v0, :cond_1

    .line 767
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

    .line 768
    :cond_1
    check-cast p3, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;

    .line 771
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getMechanism()Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;

    move-result-object v0

    .line 772
    invoke-virtual {p2}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$RequestData;->getWrapdata()[B

    move-result-object v1

    .line 773
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    .line 774
    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    .line 776
    sget-object v4, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebKeyLadderExchange$Mechanism:[I

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 795
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 779
    :pswitch_0
    new-instance v4, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;

    invoke-direct {v4, v3}, Lcom/netflix/msl/entityauth/PresharedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 780
    sget-object v5, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {p1, v5}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v5

    .line 781
    if-nez v5, :cond_2

    .line 782
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 783
    :cond_2
    invoke-virtual {v5, p1, v4}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v4

    .line 784
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v0, v4}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 799
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v4

    .line 800
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getWrapKey()[B

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v5

    .line 803
    :try_start_0
    invoke-virtual {v4, v5}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 804
    new-instance v6, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v6, v0}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/io/MslObject;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    invoke-virtual {v6}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 811
    new-instance v5, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;

    invoke-direct {v5, v0}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$AesKwJwkCryptoContext;-><init>(Ljavax/crypto/SecretKey;)V

    .line 812
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getEncryptionKey()[B

    move-result-object v0

    invoke-interface {v5, v0, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v6

    .line 813
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getHmacKey()[B

    move-result-object v0

    invoke-interface {v5, v0, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v7

    .line 816
    :try_start_1
    invoke-virtual {v4, v6}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 817
    new-instance v8, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v8, v0}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/io/MslObject;)V
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 823
    :try_start_2
    invoke-virtual {v4, v7}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 824
    new-instance v6, Lcom/netflix/msl/crypto/JsonWebKey;

    invoke-direct {v6, v0}, Lcom/netflix/msl/crypto/JsonWebKey;-><init>(Lcom/netflix/msl/io/MslObject;)V
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_2

    .line 830
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getWrapdata()[B

    move-result-object v0

    .line 831
    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v2, v0, v5}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->addCryptoContext([BLcom/netflix/msl/crypto/ICryptoContext;)V

    .line 832
    if-eqz v1, :cond_4

    .line 833
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v0, v1}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->removeCryptoContext([B)V

    .line 836
    :cond_4
    invoke-virtual {p3}, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange$ResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 837
    invoke-virtual {v8}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 838
    invoke-virtual {v6}, Lcom/netflix/msl/crypto/JsonWebKey;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 839
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0

    .line 789
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->repository:Lcom/netflix/msl/keyx/WrapCryptoContextRepository;

    invoke-interface {v0, v1}, Lcom/netflix/msl/keyx/WrapCryptoContextRepository;->getCryptoContext([B)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 790
    if-nez v0, :cond_3

    .line 791
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 818
    :catch_1
    move-exception v0

    .line 819
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 825
    :catch_2
    move-exception v0

    .line 826
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/netflix/msl/keyx/JsonWebKeyLadderExchange;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3, v4, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    throw v0

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
