.class public abstract Lcom/netflix/msl/userauth/UserAuthenticationData;
.super Ljava/lang/Object;
.source "UserAuthenticationData.java"

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

.field private final scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->encodings:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    .line 66
    return-void
.end method

.method public static create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 5

    .prologue
    .line 89
    :try_start_0
    const-string/jumbo v0, "scheme"

    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v1

    .line 91
    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_USERAUTH_SCHEME:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userauthdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;

    move-result-object v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "authdata"

    invoke-virtual {p2, v2, v1}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 155
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 156
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    check-cast p1, Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 158
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    iget-object v1, p1, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
.end method

.method public getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->hashCode()I

    move-result v0

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 147
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "scheme"

    iget-object v2, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-virtual {v2}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 142
    const-string/jumbo v1, "authdata"

    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/userauth/UserAuthenticationData;->getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 143
    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/netflix/msl/userauth/UserAuthenticationData;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
