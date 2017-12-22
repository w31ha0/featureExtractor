.class public Lcom/netflix/msl/keyx/WidevineKeyResponseData;
.super Lcom/netflix/msl/keyx/KeyResponseData;
.source "WidevineKeyResponseData.java"


# static fields
.field private static final KEY_CDM_KEY_RESPONSE:Ljava/lang/String; = "cdmkeyresponse"

.field private static final KEY_ENCRYPTION_KEY_ID:Ljava/lang/String; = "encryptionkeyid"

.field private static final KEY_HMAC_KEY_ID:Ljava/lang/String; = "hmackeyid"


# instance fields
.field private final encryptionKeyId:[B

.field private final hmacKeyId:[B

.field private final keyResponse:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 62
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 65
    :try_start_0
    const-string/jumbo v0, "cdmkeyresponse"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:[B

    .line 66
    const-string/jumbo v0, "encryptionkeyid"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:[B

    .line 67
    const-string/jumbo v0, "hmackeyid"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
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

.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;[B[B[B)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 48
    iput-object p2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:[B

    .line 49
    iput-object p3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:[B

    .line 50
    iput-object p4, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:[B

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-ne p0, p1, :cond_0

    .line 122
    :goto_0
    return v1

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    if-nez v0, :cond_1

    move v1, v2

    .line 115
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    .line 119
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:[B

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:[B

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:[B

    iget-object v0, v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:[B

    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getEncryptionKeyId()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:[B

    return-object v0
.end method

.method public getHmacKeyId()[B
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:[B

    return-object v0
.end method

.method public getKeyResponse()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:[B

    return-object v0
.end method

.method protected getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "encryptionkeyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 80
    const-string/jumbo v1, "hmackeyid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 81
    const-string/jumbo v1, "cdmkeyresponse"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 82
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->keyResponse:[B

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->encryptionKeyId:[B

    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->hmacKeyId:[B

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
