.class public interface abstract Lcom/netflix/msl/msg/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# virtual methods
.method public abstract getCryptoContexts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;
.end method

.method public abstract getKeyRequestData()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecipient()Ljava/lang/String;
.end method

.method public abstract getUser()Lcom/netflix/msl/tokens/MslUser;
.end method

.method public abstract getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract isIntegrityProtected()Z
.end method

.method public abstract isNonReplayable()Z
.end method

.method public abstract isRequestingTokens()Z
.end method

.method public abstract updateServiceTokens(Lcom/netflix/msl/msg/MessageServiceTokenBuilder;Z)V
.end method

.method public abstract write(Lcom/netflix/msl/msg/MessageOutputStream;)V
.end method
