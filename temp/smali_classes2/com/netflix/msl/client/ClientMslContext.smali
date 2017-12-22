.class public Lcom/netflix/msl/client/ClientMslContext;
.super Lcom/netflix/msl/util/MslContext;
.source "ClientMslContext.java"


# instance fields
.field private final clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

.field private final eccStore:Lcom/netflix/msl/client/ModifiableEccStore;

.field private final entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final entityAuthFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final keyxFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

.field private final mslStore:Lcom/netflix/msl/util/MslStore;

.field private final random:Ljava/util/Random;

.field private final rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

.field private final tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/client/ClientMslContext$ClockProvider;Ljava/util/Random;Lcom/netflix/msl/crypto/ICryptoContext;Lcom/netflix/msl/tokens/TokenFactory;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljava/util/Map;Ljava/util/Map;Lcom/netflix/msl/util/MslStore;Lcom/netflix/msl/client/ModifiableRsaStore;Lcom/netflix/msl/client/ModifiableEccStore;Lcom/netflix/msl/io/MslEncoderFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/client/ClientMslContext$ClockProvider;",
            "Ljava/util/Random;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            "Lcom/netflix/msl/tokens/TokenFactory;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationData;",
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;",
            "Lcom/netflix/msl/util/MslStore;",
            "Lcom/netflix/msl/client/ModifiableRsaStore;",
            "Lcom/netflix/msl/client/ModifiableEccStore;",
            "Lcom/netflix/msl/io/MslEncoderFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/netflix/msl/util/MslContext;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    .line 53
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcom/netflix/msl/client/ClientMslContext;->random:Ljava/util/Random;

    .line 54
    if-eqz p3, :cond_2

    :goto_2
    iput-object p3, p0, Lcom/netflix/msl/client/ClientMslContext;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 55
    if-eqz p4, :cond_3

    :goto_3
    iput-object p4, p0, Lcom/netflix/msl/client/ClientMslContext;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    .line 56
    iput-object p5, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 57
    iput-object p6, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthFactories:Ljava/util/Map;

    .line 58
    iput-object p7, p0, Lcom/netflix/msl/client/ClientMslContext;->keyxFactories:Ljava/util/Map;

    .line 59
    iput-object p8, p0, Lcom/netflix/msl/client/ClientMslContext;->mslStore:Lcom/netflix/msl/util/MslStore;

    .line 60
    iput-object p9, p0, Lcom/netflix/msl/client/ClientMslContext;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    .line 61
    iput-object p10, p0, Lcom/netflix/msl/client/ClientMslContext;->eccStore:Lcom/netflix/msl/client/ModifiableEccStore;

    .line 62
    iput-object p11, p0, Lcom/netflix/msl/client/ClientMslContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 63
    return-void

    .line 52
    :cond_0
    new-instance p1, Lcom/netflix/msl/client/ClientMslContext$SystemClockProvider;

    invoke-direct {p1}, Lcom/netflix/msl/client/ClientMslContext$SystemClockProvider;-><init>()V

    goto :goto_0

    .line 53
    :cond_1
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_1

    .line 54
    :cond_2
    new-instance p3, Lcom/netflix/msl/crypto/ClientMslCryptoContext;

    invoke-direct {p3}, Lcom/netflix/msl/crypto/ClientMslCryptoContext;-><init>()V

    goto :goto_2

    .line 55
    :cond_3
    new-instance p4, Lcom/netflix/msl/tokens/ClientTokenFactory;

    invoke-direct {p4}, Lcom/netflix/msl/tokens/ClientTokenFactory;-><init>()V

    goto :goto_3
.end method

.method public static builder()Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    invoke-direct {v0}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEccStore()Lcom/netflix/msl/client/ModifiableEccStore;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->eccStore:Lcom/netflix/msl/client/ModifiableEccStore;

    return-object v0
.end method

.method public getEntityAuthData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->entityAuthFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    return-object v0
.end method

.method public getEntityAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
    .locals 1

    .prologue
    .line 107
    invoke-static {p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    return-object v0
.end method

.method public getKeyExchangeFactories()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext;->keyxFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->keyxFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyExchangeFactory;

    return-object v0
.end method

.method public getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->GZIP:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->LZW:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    sget-object v2, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Lcom/netflix/msl/msg/MessageCapabilities;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lcom/netflix/msl/msg/MessageCapabilities;-><init>(Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    return-object v2
.end method

.method public getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    return-object v0
.end method

.method public getMslStore()Lcom/netflix/msl/util/MslStore;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->mslStore:Lcom/netflix/msl/util/MslStore;

    return-object v0
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->random:Ljava/util/Random;

    return-object v0
.end method

.method public getRsaStore()Lcom/netflix/msl/client/ModifiableRsaStore;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    invoke-interface {v0}, Lcom/netflix/msl/client/ClientMslContext$ClockProvider;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    return-object v0
.end method

.method public getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v0

    return-object v0
.end method

.method public isPeerToPeer()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
