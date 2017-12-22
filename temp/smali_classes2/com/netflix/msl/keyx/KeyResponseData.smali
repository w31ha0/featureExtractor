.class public abstract Lcom/netflix/msl/keyx/KeyResponseData;
.super Ljava/lang/Object;
.source "KeyResponseData.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_KEYDATA:Ljava/lang/String; = "keydata"

.field private static final KEY_MASTER_TOKEN:Ljava/lang/String; = "mastertoken"

.field private static final KEY_SCHEME:Ljava/lang/String; = "scheme"


# instance fields
.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/keyx/KeyExchangeScheme;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 71
    iput-object p2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 72
    return-void
.end method

.method public static create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 5

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 94
    :try_start_0
    new-instance v1, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v2, "mastertoken"

    invoke-virtual {p1, v2, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V

    .line 95
    const-string/jumbo v2, "scheme"

    invoke-virtual {p1, v2}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v3

    .line 97
    if-nez v3, :cond_0

    .line 98
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_SCHEME:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyresponsedata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :cond_0
    :try_start_1
    const-string/jumbo v2, "keydata"

    invoke-virtual {p1, v2, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v3}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;

    move-result-object v2

    .line 103
    if-nez v2, :cond_1

    .line 104
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v3}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-virtual {v2, p0, v1, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    if-ne p1, p0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/keyx/KeyResponseData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 158
    :cond_2
    check-cast p1, Lcom/netflix/msl/keyx/KeyResponseData;

    .line 159
    iget-object v2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    iget-object v3, p1, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    return-object v0
.end method

.method protected abstract getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "mastertoken"

    iget-object v2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 146
    const-string/jumbo v1, "scheme"

    iget-object v2, p0, Lcom/netflix/msl/keyx/KeyResponseData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 147
    const-string/jumbo v1, "keydata"

    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/keyx/KeyResponseData;->getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 148
    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    return-object v0
.end method
