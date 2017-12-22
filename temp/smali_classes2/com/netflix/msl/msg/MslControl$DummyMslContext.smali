.class Lcom/netflix/msl/msg/MslControl$DummyMslContext;
.super Lcom/netflix/msl/util/MslContext;
.source "MslControl.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/netflix/msl/util/MslContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MslControl$1;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/netflix/msl/msg/MslControl$DummyMslContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;

    const-string/jumbo v1, "dummy"

    invoke-direct {v0, v1}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
    .locals 1

    .prologue
    .line 406
    invoke-static {p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    return-object v0
.end method

.method public getKeyExchangeFactories()Ljava/util/SortedSet;
    .locals 1
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
    .line 462
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 446
    invoke-static {p1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/netflix/msl/crypto/NullCryptoContext;

    invoke-direct {v0}, Lcom/netflix/msl/crypto/NullCryptoContext;-><init>()V

    return-object v0
.end method

.method public getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Lcom/netflix/msl/msg/MslControl$DummyMslContext$DummyMslEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/msl/msg/MslControl$DummyMslContext$DummyMslEncoderFactory;-><init>(Lcom/netflix/msl/msg/MslControl$1;)V

    return-object v0
.end method

.method public getMslStore()Lcom/netflix/msl/util/MslStore;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lcom/netflix/msl/util/NullMslStore;

    invoke-direct {v0}, Lcom/netflix/msl/util/NullMslStore;-><init>()V

    return-object v0
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 366
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Dummy token factory should never actually get used."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;
    .locals 1

    .prologue
    .line 422
    invoke-static {p1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->getScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v0

    return-object v0
.end method

.method public isPeerToPeer()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method
