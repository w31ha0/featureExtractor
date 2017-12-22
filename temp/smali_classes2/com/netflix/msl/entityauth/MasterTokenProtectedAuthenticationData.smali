.class public Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.source "MasterTokenProtectedAuthenticationData.java"


# static fields
.field protected static final KEY_AUTHENTICATION_DATA:Ljava/lang/String; = "authdata"

.field protected static final KEY_MASTER_TOKEN:Ljava/lang/String; = "mastertoken"

.field protected static final KEY_SIGNATURE:Ljava/lang/String; = "signature"


# instance fields
.field private final authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            "Lcom/netflix/msl/io/MslObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 98
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->MT_PROTECTED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->objects:Ljava/util/Map;

    .line 99
    iput-object p1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 104
    :try_start_0
    const-string/jumbo v0, "authdata"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 105
    const-string/jumbo v0, "signature"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 108
    :try_start_1
    new-instance v3, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v4, "mastertoken"

    invoke-virtual {p2, v4, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V

    iput-object v3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    :try_start_2
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {v0, v3}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_2
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 130
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v3

    .line 131
    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENTITYAUTH_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "master token protected authdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :catch_1
    move-exception v0

    .line 110
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_2

    .line 112
    :catch_2
    move-exception v0

    .line 113
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "master token protected authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :cond_0
    :try_start_5
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, p1, v3}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_5
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 124
    :catch_3
    move-exception v0

    .line 125
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_MASTERTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :cond_1
    :try_start_6
    invoke-interface {v0, v1, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v0

    .line 134
    invoke-virtual {v3, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 135
    invoke-static {p1, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    :try_end_6
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_6 .. :try_end_6} :catch_0

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->MT_PROTECTED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->objects:Ljava/util/Map;

    .line 77
    iput-object p1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 78
    iput-object p2, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 79
    iput-object p3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 80
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    if-ne p1, p0, :cond_0

    .line 212
    :goto_0
    return v1

    .line 208
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 209
    check-cast v0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;

    .line 210
    invoke-super {p0, p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v4, v0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 211
    invoke-virtual {v3, v4}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v0, v0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 212
    invoke-virtual {v3, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

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

.method public getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->objects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->objects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/MslObject;

    .line 199
    :goto_0
    return-object v0

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {v0, v1}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    if-eqz v0, :cond_1

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v1, p1, p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 183
    :try_start_1
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 184
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 191
    const-string/jumbo v3, "mastertoken"

    iget-object v4, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 192
    const-string/jumbo v3, "authdata"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 193
    const-string/jumbo v1, "signature"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 196
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->objects:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_1
    :try_start_2
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v2, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_2
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Master token is not trusted; cannot create session crypto context."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encrypting and signing the authentication data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncapsulatedAuthdata()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 221
    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/entityauth/MasterTokenProtectedAuthenticationData;->authdata:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 222
    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
