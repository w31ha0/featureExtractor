.class public interface abstract Lcom/netflix/msl/util/AuthenticationUtils;
.super Ljava/lang/Object;
.source "AuthenticationUtils.java"


# virtual methods
.method public abstract isEntityRevoked(Ljava/lang/String;)Z
.end method

.method public abstract isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Z
.end method

.method public abstract isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z
.end method

.method public abstract isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/tokens/MslUser;Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Z
.end method

.method public abstract isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Z
.end method
