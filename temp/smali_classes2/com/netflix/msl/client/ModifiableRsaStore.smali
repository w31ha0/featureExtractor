.class public interface abstract Lcom/netflix/msl/client/ModifiableRsaStore;
.super Ljava/lang/Object;
.source "ModifiableRsaStore.java"

# interfaces
.implements Lcom/netflix/msl/entityauth/RsaStore;


# virtual methods
.method public abstract addPrivateKey(Ljava/lang/String;Ljava/security/PrivateKey;)V
.end method

.method public abstract addPublicKey(Ljava/lang/String;Ljava/io/InputStream;)V
.end method

.method public abstract addPublicKey(Ljava/lang/String;Ljava/lang/String;)V
.end method
