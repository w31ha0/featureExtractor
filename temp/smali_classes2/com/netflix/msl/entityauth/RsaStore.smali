.class public interface abstract Lcom/netflix/msl/entityauth/RsaStore;
.super Ljava/lang/Object;
.source "RsaStore.java"


# virtual methods
.method public abstract getIdentities()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
.end method

.method public abstract getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
.end method
