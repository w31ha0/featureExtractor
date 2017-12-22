.class public abstract Lcom/netflix/msl/keyx/KeyRequestData;
.super Ljava/lang/Object;
.source "KeyRequestData.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_KEYDATA:Ljava/lang/String; = "keydata"

.field private static final KEY_SCHEME:Ljava/lang/String; = "scheme"


# instance fields
.field private final scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/netflix/msl/keyx/KeyRequestData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 65
    return-void
.end method

.method public static create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 5

    .prologue
    .line 85
    :try_start_0
    const-string/jumbo v0, "scheme"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_SCHEME:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyrequestdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 90
    const-string/jumbo v2, "keydata"

    invoke-virtual {p1, v2, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;

    move-result-object v2

    .line 94
    if-nez v2, :cond_1

    .line 95
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v2, Lcom/netflix/msl/MslError;->KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    invoke-virtual {v2, p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 137
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 138
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/KeyRequestData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_1
    check-cast p1, Lcom/netflix/msl/keyx/KeyRequestData;

    .line 140
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyRequestData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    iget-object v1, p1, Lcom/netflix/msl/keyx/KeyRequestData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyRequestData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    return-object v0
.end method

.method protected abstract getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyRequestData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 127
    const-string/jumbo v1, "scheme"

    iget-object v2, p0, Lcom/netflix/msl/keyx/KeyRequestData;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 128
    const-string/jumbo v1, "keydata"

    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/keyx/KeyRequestData;->getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 129
    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    return-object v0
.end method
