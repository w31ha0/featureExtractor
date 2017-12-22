.class public Lcom/netflix/msl/crypto/MslSignatureEnvelope;
.super Ljava/lang/Object;
.source "MslSignatureEnvelope.java"


# static fields
.field private static final KEY_ALGORITHM:Ljava/lang/String; = "algorithm"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field private final signature:[B

.field private final version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 123
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 124
    iput-object p2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    .line 125
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 112
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    .line 113
    return-void
.end method

.method public static parse(Lcom/netflix/msl/util/MslContext;[BLcom/netflix/msl/crypto/MslSignatureEnvelope$Version;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;
    .locals 6

    .prologue
    .line 142
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    .line 172
    :goto_0
    return-object v0

    .line 148
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 153
    :try_start_1
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->valueOf(I)Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    move-result-object v0

    .line 154
    sget-object v2, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v2, v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signature envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_2
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "signature envelope "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    :catch_1
    move-exception v0

    .line 174
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signature envelope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 163
    :cond_0
    :try_start_3
    const-string/jumbo v0, "algorithm"

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 169
    :try_start_4
    const-string/jumbo v0, "signature"

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 172
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V

    goto/16 :goto_0

    .line 164
    :catch_2
    move-exception v0

    .line 165
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "signature envelope "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parse([BLcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;
    .locals 4

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 209
    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 224
    :goto_1
    sget-object v2, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    invoke-virtual {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 242
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature envelope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 213
    :cond_1
    :try_start_1
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->valueOf(I)Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    .line 216
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    goto :goto_1

    .line 217
    :catch_2
    move-exception v0

    .line 219
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    goto :goto_1

    .line 226
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    .line 239
    :goto_2
    return-object v0

    .line 229
    :pswitch_1
    :try_start_2
    const-string/jumbo v0, "algorithm"

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v2

    .line 230
    const-string/jumbo v0, "signature"

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 231
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 232
    :catch_3
    move-exception v0

    .line 235
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    goto :goto_2

    .line 236
    :catch_4
    move-exception v0

    .line 239
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    goto :goto_2

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithm()Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object v0
.end method

.method public getBytes(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    iget-object v1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 287
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signature envelope version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " encoding unsupported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    .line 285
    :goto_0
    return-object v0

    .line 281
    :pswitch_1
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 282
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->version:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 283
    const-string/jumbo v1, "algorithm"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->algorithm:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 284
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 285
    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->signature:[B

    return-object v0
.end method
