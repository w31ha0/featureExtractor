.class public interface abstract Lcom/netflix/msl/util/MslContextInterface;
.super Ljava/lang/Object;
.source "MslContextInterface.java"


# virtual methods
.method public abstract getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.end method

.method public abstract getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.end method

.method public abstract getEntityAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
.end method

.method public abstract getKeyExchangeFactories()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;
.end method

.method public abstract getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;
.end method

.method public abstract getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
.end method

.method public abstract getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
.end method

.method public abstract getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
.end method

.method public abstract getMslStore()Lcom/netflix/msl/util/MslStore;
.end method

.method public abstract getRandom()Ljava/util/Random;
.end method

.method public abstract getTime()J
.end method

.method public abstract getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;
.end method

.method public abstract getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;
.end method

.method public abstract getUserAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;
.end method

.method public abstract isPeerToPeer()Z
.end method
