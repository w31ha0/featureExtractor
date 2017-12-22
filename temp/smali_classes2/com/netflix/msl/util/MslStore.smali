.class public interface abstract Lcom/netflix/msl/util/MslStore;
.super Ljava/lang/Object;
.source "MslStore.java"


# virtual methods
.method public abstract addServiceTokens(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/UserIdToken;)V
.end method

.method public abstract clearCryptoContexts()V
.end method

.method public abstract clearServiceTokens()V
.end method

.method public abstract clearUserIdTokens()V
.end method

.method public abstract getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
.end method

.method public abstract getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
.end method

.method public abstract getNonReplayableId(Lcom/netflix/msl/tokens/MasterToken;)J
.end method

.method public abstract getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;
.end method

.method public abstract removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
.end method

.method public abstract removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
.end method

.method public abstract removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
.end method

.method public abstract setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V
.end method
