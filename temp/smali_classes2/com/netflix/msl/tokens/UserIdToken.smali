.class public Lcom/netflix/msl/tokens/UserIdToken;
.super Ljava/lang/Object;
.source "UserIdToken.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final KEY_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEY_ISSUER_DATA:Ljava/lang/String; = "issuerdata"

.field private static final KEY_MASTER_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "mtserialnumber"

.field private static final KEY_RENEWAL_WINDOW:Ljava/lang/String; = "renewalwindow"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serialnumber"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_TOKENDATA:Ljava/lang/String; = "tokendata"

.field private static final KEY_USERDATA:Ljava/lang/String; = "userdata"

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

.field private final expiration:J

.field private final issuerdata:Lcom/netflix/msl/io/MslObject;

.field private final mtSerialNumber:J

.field private final renewalWindow:J

.field private final serialNumber:J

.field private final signatureBytes:[B

.field private final tokendataBytes:[B

.field private final user:Lcom/netflix/msl/tokens/MslUser;

.field private final userdata:Lcom/netflix/msl/io/MslObject;

.field private final verified:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x20000000000000L

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->encodings:Ljava/util/Map;

    .line 185
    iput-object p1, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 188
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v2

    .line 193
    :try_start_0
    const-string/jumbo v3, "tokendata"

    invoke-virtual {p2, v3}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    .line 194
    iget-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    array-length v3, v3

    if-nez v3, :cond_0

    .line 195
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "useridtoken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useridtoken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 196
    :cond_0
    :try_start_1
    const-string/jumbo v3, "signature"

    invoke-virtual {p2, v3}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->signatureBytes:[B

    .line 197
    iget-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    iget-object v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->signatureBytes:[B

    invoke-interface {v0, v3, v4, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :try_start_2
    iget-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    invoke-virtual {v2, v3}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v3

    .line 206
    const-string/jumbo v4, "renewalwindow"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    .line 207
    const-string/jumbo v4, "expiration"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    .line 208
    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    iget-wide v6, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 209
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usertokendata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 220
    :catch_1
    move-exception v0

    .line 221
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usertokendata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    invoke-static {v4}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 210
    :cond_1
    :try_start_3
    const-string/jumbo v4, "mtserialnumber"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    .line 211
    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_3

    .line 212
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usertokendata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    :catch_2
    move-exception v0

    .line 223
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 224
    throw v0

    .line 213
    :cond_3
    :try_start_4
    const-string/jumbo v4, "serialnumber"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    .line 214
    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_4

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    .line 215
    :cond_4
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usertokendata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 216
    :cond_5
    const-string/jumbo v4, "userdata"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 217
    array-length v4, v3

    if-nez v4, :cond_6

    .line 218
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 219
    :cond_6
    iget-boolean v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z

    if-eqz v4, :cond_9

    invoke-interface {v0, v3, v2}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 228
    :goto_0
    if-eqz v0, :cond_b

    .line 230
    :try_start_5
    invoke-virtual {v2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    .line 231
    iget-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v4, "issuerdata"

    invoke-virtual {v3, v4}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v1, v3, v2}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    :cond_7
    iput-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    .line 232
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "identity"

    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 234
    :cond_8
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v1

    throw v1
    :try_end_5
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_5 .. :try_end_5} :catch_3

    .line 239
    :catch_3
    move-exception v1

    .line 240
    new-instance v2, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userdata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p3}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    :cond_9
    move-object v0, v1

    .line 219
    goto :goto_0

    .line 235
    :cond_a
    :try_start_6
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v2

    .line 236
    invoke-interface {v2, p1, v1}, Lcom/netflix/msl/tokens/TokenFactory;->createUser(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;)Lcom/netflix/msl/tokens/MslUser;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 237
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    if-nez v1, :cond_c

    .line 238
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "TokenFactory.createUser() returned null in violation of the interface contract."

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_6 .. :try_end_6} :catch_3

    .line 243
    :cond_b
    iput-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    .line 244
    iput-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    .line 245
    iput-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 249
    :cond_c
    if-eqz p3, :cond_d

    iget-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 250
    :cond_d
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

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

    throw v0

    .line 251
    :cond_e
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;Lcom/netflix/msl/tokens/MasterToken;JLcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MslUser;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->encodings:Ljava/util/Map;

    .line 137
    invoke-virtual {p3, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot construct a user ID token that expires before its renewal window opens."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    if-nez p4, :cond_1

    .line 141
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot construct a user ID token without a master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p5, v0

    if-lez v0, :cond_3

    .line 144
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Serial number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_3
    iput-object p1, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 147
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    .line 148
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    .line 149
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    .line 150
    iput-wide p5, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    .line 151
    iput-object p7, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    .line 152
    iput-object p8, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 155
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    .line 157
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "issuerdata"

    iget-object v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "identity"

    invoke-interface {p8}, Lcom/netflix/msl/tokens/MslUser;->getEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 161
    iput-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    .line 162
    iput-object v3, p0, Lcom/netflix/msl/tokens/UserIdToken;->signatureBytes:[B

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z

    .line 164
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 496
    if-ne p0, p1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_3

    .line 498
    check-cast p1, Lcom/netflix/msl/tokens/UserIdToken;

    .line 499
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 502
    goto :goto_0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 6

    .prologue
    .line 303
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getIssuerData()Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->issuerdata:Lcom/netflix/msl/io/MslObject;

    return-object v0
.end method

.method public getMasterTokenSerialNumber()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    return-wide v0
.end method

.method public getRenewalWindow()Ljava/util/Date;
    .locals 6

    .prologue
    .line 271
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSerialNumber()J
    .locals 2

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    return-wide v0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

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
    .line 369
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

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
    .line 257
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->user:Lcom/netflix/msl/tokens/MslUser;

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

    .line 324
    if-eqz p1, :cond_2

    .line 325
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 325
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/UserIdToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method public isRenewable(Ljava/util/Date;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 292
    if-eqz p1, :cond_2

    .line 293
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 293
    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/UserIdToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget-wide v2, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

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
    .line 264
    iget-boolean v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->verified:Z

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 6

    .prologue
    .line 408
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 465
    :goto_0
    return-object v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->signatureBytes:[B

    if-eqz v0, :cond_2

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->tokendataBytes:[B

    .line 418
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->signatureBytes:[B

    .line 458
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 459
    const-string/jumbo v3, "tokendata"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 460
    const-string/jumbo v1, "signature"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 461
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/netflix/msl/tokens/UserIdToken;->userdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {p1, v1, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 435
    :try_start_1
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 441
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 442
    const-string/jumbo v3, "renewalwindow"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 443
    const-string/jumbo v3, "expiration"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 444
    const-string/jumbo v3, "mtserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 445
    const-string/jumbo v3, "serialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 446
    const-string/jumbo v3, "userdata"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 449
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 451
    :try_start_2
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error creating the MSL crypto context."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 436
    :catch_1
    move-exception v0

    .line 437
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encrypting the user data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 452
    :catch_2
    move-exception v0

    .line 453
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error signing the token data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 473
    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    .line 476
    const-string/jumbo v2, "renewalwindow"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->renewalWindow:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 477
    const-string/jumbo v2, "expiration"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->expiration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 478
    const-string/jumbo v2, "mtserialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->mtSerialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 479
    const-string/jumbo v2, "serialnumber"

    iget-wide v4, p0, Lcom/netflix/msl/tokens/UserIdToken;->serialNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 480
    const-string/jumbo v2, "userdata"

    const-string/jumbo v3, "(redacted)"

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 482
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 483
    const-string/jumbo v0, "tokendata"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 484
    const-string/jumbo v1, "signature"

    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->signatureBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/tokens/UserIdToken;->signatureBytes:[B

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 485
    invoke-virtual {v2}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_0
    const-string/jumbo v0, "(null)"

    goto :goto_0
.end method
