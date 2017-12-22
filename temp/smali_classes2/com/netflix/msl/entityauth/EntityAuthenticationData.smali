.class public abstract Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.super Ljava/lang/Object;
.source "EntityAuthenticationData.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_AUTHDATA:Ljava/lang/String; = "authdata"

.field private static final KEY_SCHEME:Ljava/lang/String; = "scheme"


# instance fields
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

.field private final scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->encodings:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 66
    return-void
.end method

.method public static create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 5

    .prologue
    .line 85
    :try_start_0
    const-string/jumbo v0, "scheme"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ENTITYAUTH_SCHEME:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

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

    const-string/jumbo v4, "entityauthdata "

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
    const-string/jumbo v2, "authdata"

    invoke-virtual {p1, v2, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v2

    .line 94
    if-nez v2, :cond_1

    .line 95
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    invoke-virtual {v2, p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 150
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 151
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_1
    check-cast p1, Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 153
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    iget-object v1, p1, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 142
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "scheme"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 137
    const-string/jumbo v1, "authdata"

    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 138
    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
