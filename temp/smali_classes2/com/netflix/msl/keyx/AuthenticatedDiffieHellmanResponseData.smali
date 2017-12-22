.class public Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;
.super Lcom/netflix/msl/keyx/KeyResponseData;
.source "AuthenticatedDiffieHellmanResponseData.java"


# static fields
.field private static final KEY_PARAMETERS_ID:Ljava/lang/String; = "parametersid"

.field private static final KEY_PUBLIC_KEY:Ljava/lang/String; = "publickey"

.field private static final KEY_WRAPDATA:Ljava/lang/String; = "wrapdata"


# instance fields
.field private final parametersId:Ljava/lang/String;

.field private final publicKey:Ljava/math/BigInteger;

.field private final wrapdata:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 75
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 77
    :try_start_0
    const-string/jumbo v0, "wrapdata"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    .line 78
    const-string/jumbo v0, "parametersid"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "publickey"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
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

    .line 83
    :catch_1
    move-exception v0

    .line 84
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;[BLjava/lang/String;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 59
    iput-object p2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    .line 60
    iput-object p3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-ne p1, p0, :cond_0

    .line 140
    :goto_0
    return v1

    .line 133
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    if-nez v0, :cond_1

    move v1, v2

    .line 134
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 136
    check-cast v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;

    .line 137
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    .line 138
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    iget-object v0, v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    .line 140
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

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

.method protected getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "wrapdata"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 117
    const-string/jumbo v1, "parametersid"

    iget-object v2, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 118
    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 119
    const-string/jumbo v2, "publickey"

    invoke-static {v1}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;->correctNullBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 120
    return-object v0
.end method

.method public getParametersId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getWrapdata()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->wrapdata:[B

    .line 151
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->parametersId:Ljava/lang/String;

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanResponseData;->publicKey:Ljava/math/BigInteger;

    .line 153
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
