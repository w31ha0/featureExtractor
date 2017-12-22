.class public Lcom/netflix/msl/crypto/MslCiphertextEnvelope;
.super Ljava/lang/Object;
.source "MslCiphertextEnvelope.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_CIPHERSPEC:Ljava/lang/String; = "cipherspec"

.field private static final KEY_CIPHERTEXT:Ljava/lang/String; = "ciphertext"

.field private static final KEY_IV:Ljava/lang/String; = "iv"

.field private static final KEY_KEY_ID:Ljava/lang/String; = "keyid"

.field private static final KEY_SHA256:Ljava/lang/String; = "sha256"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private cipherSpec:Lcom/netflix/msl/MslConstants$CipherSpec;

.field private final ciphertext:[B

.field private final iv:[B

.field private final keyId:Ljava/lang/String;

.field private final version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslConstants$CipherSpec;[B[B)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->keyId:Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->cipherSpec:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 168
    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    .line 169
    iput-object p3, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->ciphertext:[B

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 1

    .prologue
    .line 181
    invoke-static {p1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getVersion(Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    sget-object v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslCiphertextEnvelope$Version:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 228
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_CIPHERTEXT_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ciphertext envelope version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    iput-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 200
    const-string/jumbo v1, "keyid"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->keyId:Ljava/lang/String;

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->cipherSpec:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 202
    const-string/jumbo v1, "iv"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "iv"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    .line 203
    const-string/jumbo v0, "ciphertext"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->ciphertext:[B

    .line 204
    const-string/jumbo v0, "sha256"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ciphertext envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 211
    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 212
    invoke-static {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->valueOf(I)Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 213
    sget-object v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {v1, v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNIDENTIFIED_CIPHERTEXT_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ciphertext envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ciphertext envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 215
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->keyId:Ljava/lang/String;
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    :try_start_3
    const-string/jumbo v1, "cipherspec"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/msl/MslConstants$CipherSpec;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CipherSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->cipherSpec:Lcom/netflix/msl/MslConstants$CipherSpec;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1

    .line 221
    :try_start_4
    const-string/jumbo v1, "iv"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "iv"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    .line 222
    const-string/jumbo v0, "ciphertext"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->ciphertext:[B

    goto/16 :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_CIPHERSPEC:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ciphertext envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_1

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 151
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->keyId:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->cipherSpec:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 153
    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    .line 154
    iput-object p3, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->ciphertext:[B

    .line 155
    return-void
.end method

.method private static getVersion(Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;
    .locals 5

    .prologue
    .line 132
    :try_start_0
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    invoke-static {v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->valueOf(I)Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_CIPHERTEXT_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ciphertext envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getCipherSpec()Lcom/netflix/msl/MslConstants$CipherSpec;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->cipherSpec:Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object v0
.end method

.method public getCiphertext()[B
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->ciphertext:[B

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslCiphertextEnvelope$Version:[I

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 291
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ciphertext envelope version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " encoding unsupported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :pswitch_0
    const-string/jumbo v1, "keyid"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->keyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 280
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    if-eqz v1, :cond_0

    const-string/jumbo v1, "iv"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 281
    :cond_0
    const-string/jumbo v1, "ciphertext"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->ciphertext:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 282
    const-string/jumbo v1, "sha256"

    const-string/jumbo v2, "AA=="

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 293
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    return-object v0

    .line 285
    :pswitch_1
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->version:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 286
    const-string/jumbo v1, "cipherspec"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->cipherSpec:Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$CipherSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 287
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    if-eqz v1, :cond_1

    const-string/jumbo v1, "iv"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->iv:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 288
    :cond_1
    const-string/jumbo v1, "ciphertext"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->ciphertext:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
