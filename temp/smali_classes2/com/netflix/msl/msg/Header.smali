.class public abstract Lcom/netflix/msl/msg/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseHeader(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Ljava/util/Map;)Lcom/netflix/msl/msg/Header;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/io/MslObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/msg/Header;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "entityauthdata"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "entityauthdata"

    .line 123
    invoke-virtual {p1, v1, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    .line 125
    :goto_0
    const-string/jumbo v1, "mastertoken"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v1, "mastertoken"

    .line 126
    invoke-virtual {p1, v1, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V

    .line 128
    :cond_0
    const-string/jumbo v0, "signature"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 135
    :try_start_1
    const-string/jumbo v0, "headerdata"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    const-string/jumbo v0, "headerdata"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 137
    array-length v0, v2

    if-nez v0, :cond_2

    .line 138
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->HEADER_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "header/errormsg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v3, v4

    .line 123
    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "header/errormsg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_2
    :try_start_2
    new-instance v0, Lcom/netflix/msl/msg/MessageHeader;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MessageHeader;-><init>(Lcom/netflix/msl/util/MslContext;[BLcom/netflix/msl/entityauth/EntityAuthenticationData;Lcom/netflix/msl/tokens/MasterToken;[BLjava/util/Map;)V

    .line 147
    :goto_1
    return-object v0

    .line 143
    :cond_3
    const-string/jumbo v0, "errordata"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    const-string/jumbo v0, "errordata"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 145
    array-length v0, v1

    if-nez v0, :cond_4

    .line 146
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->HEADER_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v0, v4}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    .line 147
    :cond_4
    new-instance v0, Lcom/netflix/msl/msg/ErrorHeader;

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/netflix/msl/msg/ErrorHeader;-><init>(Lcom/netflix/msl/util/MslContext;[BLcom/netflix/msl/entityauth/EntityAuthenticationData;[B)V

    goto :goto_1

    .line 151
    :cond_5
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-virtual {p1}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_0
.end method
