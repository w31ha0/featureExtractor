.class public Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "JsonWebEncryptionLadderExchange.java"


# static fields
.field private static final KEY_MECHANISM:Ljava/lang/String; = "mechanism"

.field private static final KEY_WRAPDATA:Ljava/lang/String; = "wrapdata"


# instance fields
.field private final mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

.field private final wrapdata:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 150
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->JWE_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 153
    :try_start_0
    const-string/jumbo v0, "mechanism"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 155
    :try_start_1
    invoke-static {v1}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 164
    :try_start_2
    sget-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebEncryptionLadderExchange$Mechanism:[I

    iget-object v1, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
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

    .line 156
    :catch_1
    move-exception v0

    .line 157
    :try_start_3
    new-instance v2, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_2

    .line 159
    :catch_2
    move-exception v0

    .line 160
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

    .line 167
    :pswitch_0
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    .line 183
    :cond_0
    return-void

    .line 172
    :pswitch_1
    const-string/jumbo v0, "wrapdata"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    .line 173
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keydata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;[B)V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->JWE_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 124
    iput-object p1, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    .line 126
    sget-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$1;->$SwitchMap$com$netflix$msl$keyx$JsonWebEncryptionLadderExchange$Mechanism:[I

    invoke-virtual {p1}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    .line 136
    :goto_0
    return-void

    .line 128
    :pswitch_0
    if-nez p2, :cond_0

    .line 129
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Previous wrapping key based key exchange requires the previous wrapping key data and ID."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-object p2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    if-ne p1, p0, :cond_0

    .line 220
    :goto_0
    return v1

    .line 216
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 217
    check-cast v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;

    .line 218
    iget-object v3, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 219
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    iget-object v0, v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    .line 220
    invoke-virtual {v4, v0}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "mechanism"

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 206
    iget-object v1, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wrapdata"

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 207
    :cond_0
    return-object v0
.end method

.method public getMechanism()Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    return-object v0
.end method

.method public getWrapdata()[B
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->wrapdata:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 230
    :goto_0
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$RequestData;->mechanism:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    .line 231
    invoke-virtual {v2}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
