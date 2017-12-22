.class public interface abstract Lcom/netflix/msl/client/ModifiableEccStore;
.super Ljava/lang/Object;
.source "ModifiableEccStore.java"

# interfaces
.implements Lcom/netflix/msl/entityauth/EccStore;


# virtual methods
.method public abstract addPrivateKey(Ljava/lang/String;Ljava/security/PrivateKey;)V
.end method

.method public abstract addPublicKey(Ljava/lang/String;Ljava/io/InputStream;)V
.end method

.method public abstract addPublicKey(Ljava/lang/String;Ljava/lang/String;)V
.end method
