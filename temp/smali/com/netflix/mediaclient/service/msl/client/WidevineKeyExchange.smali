.class public Lcom/netflix/mediaclient/service/msl/client/WidevineKeyExchange;
.super Lcom/netflix/msl/keyx/KeyExchangeFactory;
.source "WidevineKeyExchange.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyExchangeFactory;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/keyx/WidevineKeyRequestData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method protected createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    invoke-direct {v0, p2, p3}, Lcom/netflix/msl/keyx/WidevineKeyResponseData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Client will not generate a keyx  response"

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Client will not generate a keyx  response"

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 6

    .prologue
    .line 72
    move-object v3, p2

    check-cast v3, Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    move-object v4, p3

    .line 73
    check-cast v4, Lcom/netflix/msl/keyx/WidevineKeyResponseData;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/keyx/WidevineKeyRequestData;Lcom/netflix/msl/keyx/WidevineKeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)V

    return-object v0
.end method
