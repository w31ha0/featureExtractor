.class public Lcom/netflix/msl/tokens/ServiceToken;
.super Ljava/lang/Object;
.source "ServiceToken.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_COMPRESSION_ALGORITHM:Ljava/lang/String; = "compressionalgo"

.field private static final KEY_ENCRYPTED:Ljava/lang/String; = "encrypted"

.field private static final KEY_MASTER_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "mtserialnumber"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_SERVICEDATA:Ljava/lang/String; = "servicedata"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_TOKENDATA:Ljava/lang/String; = "tokendata"

.field private static final KEY_USER_ID_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "uitserialnumber"


# instance fields
.field private final compressedServicedata:[B

.field private final compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final encodings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            "[B>;"
        }
    .end annotation
.end field

.field private final encrypted:Z

.field private final mtSerialNumber:J

.field private final name:Ljava/lang/String;

.field private final servicedata:[B

.field private final signatureBytes:[B

.field private final tokendataBytes:[B

.field private final uitSerialNumber:J

.field private final verified:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 6

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->encodings:Ljava/util/Map;

    .line 275
    iput-object p1, p0, Lcom/netflix/msl/tokens/ServiceToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 276
    iput-object p5, p0, Lcom/netflix/msl/tokens/ServiceToken;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 277
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 281
    :try_start_0
    const-string/jumbo v0, "tokendata"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    .line 282
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "servicetoken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 284
    :cond_0
    :try_start_1
    const-string/jumbo v0, "signature"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->signatureBytes:[B

    .line 285
    if-eqz p5, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->signatureBytes:[B

    invoke-interface {p5, v0, v2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_2

    .line 295
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 296
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    .line 297
    const-string/jumbo v2, "mtserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    const-string/jumbo v2, "mtserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    .line 299
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 300
    :cond_1
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_3

    .line 342
    :catch_1
    move-exception v0

    .line 343
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    invoke-static {v4}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 285
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 288
    :catch_2
    move-exception v0

    .line 289
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 290
    throw v0

    .line 302
    :cond_3
    const-wide/16 v2, -0x1

    :try_start_3
    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    .line 304
    :cond_4
    const-string/jumbo v2, "uitserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    const-string/jumbo v2, "uitserialnumber"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    .line 306
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 307
    :cond_5
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_3

    .line 344
    :catch_3
    move-exception v0

    .line 345
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 346
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 347
    throw v0

    .line 309
    :cond_6
    const-wide/16 v2, -0x1

    :try_start_4
    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    .line 314
    :cond_7
    const-string/jumbo v2, "encrypted"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    .line 315
    const-string/jumbo v2, "compressionalgo"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 316
    const-string/jumbo v2, "compressionalgo"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v2

    .line 318
    :try_start_5
    invoke-static {v2}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_5 .. :try_end_5} :catch_3

    .line 329
    :goto_1
    :try_start_6
    const-string/jumbo v2, "servicedata"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 330
    iget-boolean v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z

    if-eqz v2, :cond_c

    .line 332
    iget-boolean v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    if-eqz v2, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    .line 333
    invoke-interface {p5, v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    .line 335
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v1, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    .line 336
    invoke-static {v0, v1}, Lcom/netflix/msl/util/MslUtils;->uncompress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B
    :try_end_6
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_6 .. :try_end_6} :catch_3

    .line 351
    :goto_3
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    if-eqz p3, :cond_9

    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 352
    :cond_9
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "st mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 319
    :catch_4
    move-exception v0

    .line 320
    :try_start_7
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_COMPRESSION:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 323
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    goto :goto_1

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    goto :goto_2

    .line 339
    :cond_c
    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    .line 340
    array-length v0, v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_4
    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B
    :try_end_7
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 353
    :cond_e
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    if-eqz p4, :cond_f

    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-virtual {p4}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 354
    :cond_f
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "st uitserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; uit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 355
    :cond_10
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/io/MslObject;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    invoke-static {v0, p2, p5}, Lcom/netflix/msl/tokens/ServiceToken;->selectCryptoContext(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->encodings:Ljava/util/Map;

    .line 165
    iput-object p1, p0, Lcom/netflix/msl/tokens/ServiceToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 169
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p5, p4}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot construct a service token bound to a master token and user ID token where the user ID token is not bound to the same master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    if-nez p8, :cond_1

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Crypto context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iput-object p2, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    .line 178
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    .line 179
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    :cond_2
    iput-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    .line 180
    iput-object p3, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    .line 181
    iput-boolean p6, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    .line 184
    if-eqz p7, :cond_5

    .line 185
    invoke-static {p7, p3}, Lcom/netflix/msl/util/MslUtils;->compress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    .line 189
    array-length v1, v0

    array-length v2, p3

    if-ge v1, v2, :cond_4

    .line 190
    iput-object p7, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 191
    iput-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    .line 202
    :goto_1
    iput-object p8, p0, Lcom/netflix/msl/tokens/ServiceToken;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 204
    iput-object v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    .line 205
    iput-object v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->signatureBytes:[B

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z

    .line 207
    return-void

    :cond_3
    move-wide v0, v2

    .line 178
    goto :goto_0

    .line 193
    :cond_4
    iput-object v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 194
    iput-object p3, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    goto :goto_1

    .line 197
    :cond_5
    iput-object v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 198
    iput-object p3, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    goto :goto_1
.end method

.method private static selectCryptoContext(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/io/MslEncoderFactory;",
            "Lcom/netflix/msl/io/MslObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/crypto/ICryptoContext;"
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    const-string/jumbo v0, "tokendata"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    array-length v1, v0

    if-nez v1, :cond_0

    .line 132
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "servicetoken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servicetoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    .line 137
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    if-ne p0, p1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 595
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/tokens/ServiceToken;

    if-eqz v2, :cond_3

    .line 596
    check-cast p1, Lcom/netflix/msl/tokens/ServiceToken;

    .line 597
    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 601
    goto :goto_0
.end method

.method public getCompressionAlgo()Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    return-object v0
.end method

.method public getMasterTokenSerialNumber()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdTokenSerialNumber()J
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z
    .locals 4

    .prologue
    .line 436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z
    .locals 4

    .prologue
    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecrypted()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->servicedata:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    return v0
.end method

.method public isMasterTokenBound()Z
    .locals 4

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnbound()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 472
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserIdTokenBound()Z
    .locals 4

    .prologue
    .line 456
    iget-wide v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->verified:Z

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 512
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 564
    :goto_0
    return-object v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->signatureBytes:[B

    if-eqz v0, :cond_2

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/tokens/ServiceToken;->tokendataBytes:[B

    .line 522
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->signatureBytes:[B

    .line 557
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 558
    const-string/jumbo v3, "tokendata"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 559
    const-string/jumbo v1, "signature"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 560
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/netflix/msl/tokens/ServiceToken;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 531
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B

    .line 532
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 539
    :goto_2
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    .line 540
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 541
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const-string/jumbo v2, "mtserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 542
    :cond_3
    iget-wide v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    const-string/jumbo v2, "uitserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 543
    :cond_4
    const-string/jumbo v2, "encrypted"

    iget-boolean v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->encrypted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 544
    iget-object v2, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "compressionalgo"

    iget-object v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 545
    :cond_5
    const-string/jumbo v2, "servicedata"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 548
    invoke-virtual {p1, v1, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 550
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 532
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->compressedServicedata:[B
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 534
    :catch_0
    move-exception v0

    .line 535
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encrypting the service data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 551
    :catch_1
    move-exception v0

    .line 552
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error signing the token data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 572
    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    .line 575
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/netflix/msl/tokens/ServiceToken;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 576
    const-string/jumbo v2, "mtserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->mtSerialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 577
    const-string/jumbo v2, "uitserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/ServiceToken;->uitSerialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 578
    const-string/jumbo v2, "servicedata"

    const-string/jumbo v3, "(redacted)"

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 580
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 581
    const-string/jumbo v0, "tokendata"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 582
    const-string/jumbo v1, "signature"

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->signatureBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/tokens/ServiceToken;->signatureBytes:[B

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 583
    invoke-virtual {v2}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 582
    :cond_0
    const-string/jumbo v0, "(null)"

    goto :goto_0
.end method
