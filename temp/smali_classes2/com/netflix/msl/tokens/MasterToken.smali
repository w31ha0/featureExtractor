.class public Lcom/netflix/msl/tokens/MasterToken;
.super Ljava/lang/Object;
.source "MasterToken.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "encryptionalgorithm"

.field private static final KEY_ENCRYPTION_KEY:Ljava/lang/String; = "encryptionkey"

.field private static final KEY_EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final KEY_HMAC_KEY:Ljava/lang/String; = "hmackey"

.field private static final KEY_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEY_ISSUER_DATA:Ljava/lang/String; = "issuerdata"

.field private static final KEY_RENEWAL_WINDOW:Ljava/lang/String; = "renewalwindow"

.field private static final KEY_SEQUENCE_NUMBER:Ljava/lang/String; = "sequencenumber"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serialnumber"

.field private static final KEY_SESSIONDATA:Ljava/lang/String; = "sessiondata"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_SIGNATURE_ALGORITHM:Ljava/lang/String; = "signaturealgorithm"

.field private static final KEY_SIGNATURE_KEY:Ljava/lang/String; = "signaturekey"

.field private static final KEY_TOKENDATA:Ljava/lang/String; = "tokendata"

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
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

.field private final encryptionKey:Ljavax/crypto/SecretKey;

.field private final expiration:J

.field private final identity:Ljava/lang/String;

.field private final issuerdata:Lcom/netflix/msl/io/MslObject;

.field private final renewalWindow:J

.field private final sequenceNumber:J

.field private final serialNumber:J

.field private final sessiondata:Lcom/netflix/msl/io/MslObject;

.field private final signatureBytes:[B

.field private final signatureKey:Ljavax/crypto/SecretKey;

.field private final tokendataBytes:[B

.field private final verified:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x20000000000000L

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encodings:Ljava/util/Map;

    .line 251
    iput-object p1, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 254
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v2

    .line 259
    :try_start_0
    const-string/jumbo v3, "tokendata"

    invoke-virtual {p2, v3}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    .line 260
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    array-length v3, v3

    if-nez v3, :cond_0

    .line 261
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mastertoken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 262
    :cond_0
    :try_start_1
    const-string/jumbo v3, "signature"

    invoke-virtual {p2, v3}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureBytes:[B

    .line 263
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureBytes:[B

    invoke-interface {v0, v3, v4, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :try_start_2
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    invoke-virtual {v2, v3}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v3

    .line 272
    const-string/jumbo v4, "renewalwindow"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    .line 273
    const-string/jumbo v4, "expiration"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    .line 274
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    iget-wide v6, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 275
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    :catch_1
    move-exception v0

    .line 287
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    invoke-static {v4}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :cond_1
    :try_start_3
    const-string/jumbo v4, "sequencenumber"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    .line 277
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_3

    .line 278
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_3
    const-string/jumbo v4, "serialnumber"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    .line 280
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_4

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    .line 281
    :cond_4
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_5
    const-string/jumbo v4, "sessiondata"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 283
    array-length v5, v4

    if-nez v5, :cond_6

    .line 284
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mastertokendata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_6
    iget-boolean v3, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z

    if-eqz v3, :cond_8

    invoke-interface {v0, v4, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 291
    :goto_0
    if-eqz v0, :cond_a

    .line 295
    :try_start_4
    invoke-virtual {v2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    .line 296
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v4, "issuerdata"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v1, v3, v2}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    :cond_7
    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    .line 297
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "identity"

    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "encryptionkey"

    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 299
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "encryptionalgorithm"

    const-string/jumbo v4, "AES"

    invoke-virtual {v1, v3, v4}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v4, "signaturekey"

    invoke-virtual {v1, v4}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v4, "signaturekey"

    .line 301
    invoke-virtual {v1, v4}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 303
    :goto_1
    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v5, "signaturealgorithm"

    const-string/jumbo v6, "HmacSHA256"

    invoke-virtual {v4, v5, v6}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    .line 311
    :try_start_5
    invoke-static {v3}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v4}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v3

    .line 319
    :try_start_6
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 320
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    .line 331
    :goto_2
    return-void

    :cond_8
    move-object v0, v1

    .line 285
    goto :goto_0

    .line 301
    :cond_9
    :try_start_7
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v4, "hmackey"

    .line 302
    invoke-virtual {v1, v4}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v1

    goto :goto_1

    .line 304
    :catch_2
    move-exception v1

    .line 305
    new-instance v2, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sessiondata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 313
    :catch_3
    move-exception v0

    .line 314
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encryption algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; signature algorithm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 321
    :catch_4
    move-exception v0

    .line 322
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->MASTERTOKEN_KEY_CREATION_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 325
    :cond_a
    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    .line 326
    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    .line 327
    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    .line 328
    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 329
    iput-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;JJLcom/netflix/msl/io/MslObject;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 10

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->encodings:Ljava/util/Map;

    .line 189
    invoke-virtual {p3, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Cannot construct a master token that expires before its renewal window opens."

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 193
    :cond_1
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sequence number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is outside the valid range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v2, p6, v2

    if-lez v2, :cond_4

    .line 195
    :cond_3
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is outside the valid range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_4
    iput-object p1, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 198
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    .line 199
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    .line 200
    iput-wide p4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    .line 201
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    .line 202
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    .line 203
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 205
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    .line 208
    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 213
    :try_start_0
    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    move-result-object v4

    .line 214
    iget-object v5, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 220
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v6

    .line 221
    invoke-virtual {v6}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v6

    iput-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    .line 222
    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    if-eqz v6, :cond_5

    .line 223
    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v7, "issuerdata"

    iget-object v8, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v6, v7, v8}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 224
    :cond_5
    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v7, "identity"

    iget-object v8, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 225
    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v7, "encryptionkey"

    invoke-virtual {v6, v7, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 226
    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v6, "encryptionalgorithm"

    invoke-virtual {v2, v6, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 227
    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v4, "hmackey"

    invoke-virtual {v2, v4, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 228
    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v4, "signaturekey"

    invoke-virtual {v2, v4, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 229
    iget-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "signaturealgorithm"

    invoke-virtual {v2, v3, v5}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 231
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureBytes:[B

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z

    .line 234
    return-void

    .line 215
    :catch_0
    move-exception v2

    .line 216
    new-instance v3, Lcom/netflix/msl/MslCryptoException;

    sget-object v4, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encryption algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; signature algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 621
    if-ne p0, p1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v0

    .line 622
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_3

    .line 623
    check-cast p1, Lcom/netflix/msl/tokens/MasterToken;

    .line 624
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 628
    goto :goto_0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 6

    .prologue
    .line 383
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerData()Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    return-object v0
.end method

.method public getRenewalWindow()Ljava/util/Date;
    .locals 6

    .prologue
    .line 351
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    return-wide v0
.end method

.method public getSerialNumber()J
    .locals 2

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    return-wide v0
.end method

.method public getSignatureKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

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

.method public isDecrypted()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    if-eqz p1, :cond_2

    .line 405
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 405
    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 407
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 408
    goto :goto_0
.end method

.method public isNewerThan(Lcom/netflix/msl/tokens/MasterToken;)Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x20000000000000L

    const-wide/16 v6, 0x7f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 441
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 442
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 442
    goto :goto_0

    .line 446
    :cond_2
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 447
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    sub-long/2addr v2, v8

    add-long/2addr v2, v6

    .line 448
    iget-wide v4, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 453
    :cond_3
    iget-wide v2, p1, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    sub-long/2addr v2, v8

    add-long/2addr v2, v6

    .line 454
    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isRenewable(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 372
    if-eqz p1, :cond_2

    .line 373
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 373
    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-wide v2, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/MasterToken;->verified:Z

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 6

    .prologue
    .line 533
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 590
    :goto_0
    return-object v0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureBytes:[B

    if-eqz v0, :cond_2

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->tokendataBytes:[B

    .line 543
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureBytes:[B

    .line 583
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 584
    const-string/jumbo v3, "tokendata"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 585
    const-string/jumbo v1, "signature"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 586
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 551
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/netflix/msl/tokens/MasterToken;->sessiondata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {p1, v1, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 560
    :try_start_1
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 566
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 567
    const-string/jumbo v3, "renewalwindow"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 568
    const-string/jumbo v3, "expiration"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 569
    const-string/jumbo v3, "sequencenumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 570
    const-string/jumbo v3, "serialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 571
    const-string/jumbo v3, "sessiondata"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 574
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 576
    :try_start_2
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error creating the MSL crypto context."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 561
    :catch_1
    move-exception v0

    .line 562
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encrypting the session data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 577
    :catch_2
    move-exception v0

    .line 578
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error signing the token data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 598
    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    .line 601
    const-string/jumbo v2, "renewalwindow"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->renewalWindow:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 602
    const-string/jumbo v2, "expiration"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->expiration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 603
    const-string/jumbo v2, "sequencenumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->sequenceNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 604
    const-string/jumbo v2, "serialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/MasterToken;->serialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 605
    const-string/jumbo v2, "sessiondata"

    const-string/jumbo v3, "(redacted)"

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 607
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 608
    const-string/jumbo v0, "tokendata"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 609
    const-string/jumbo v1, "signature"

    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/tokens/MasterToken;->signatureBytes:[B

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 610
    invoke-virtual {v2}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 609
    :cond_0
    const-string/jumbo v0, "(null)"

    goto :goto_0
.end method
