.class public abstract Lcom/netflix/msl/keyx/KeyExchangeFactory;
.super Ljava/lang/Object;
.source "KeyExchangeFactory.java"


# instance fields
.field private final scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/netflix/msl/keyx/KeyExchangeFactory;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 68
    return-void
.end method


# virtual methods
.method protected abstract createRequestData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;
.end method

.method protected abstract createResponseData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;
.end method

.method public abstract generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
.end method

.method public abstract generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslEncoderFormat;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
.end method

.method public abstract getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
.end method

.method public getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyExchangeFactory;->scheme:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    return-object v0
.end method
