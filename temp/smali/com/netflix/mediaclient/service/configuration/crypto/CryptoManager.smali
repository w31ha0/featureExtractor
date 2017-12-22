.class public interface abstract Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;
.super Ljava/lang/Object;
.source "CryptoManager.java"


# virtual methods
.method public abstract closeCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Z
.end method

.method public abstract decrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
.end method

.method public abstract destroy()V
.end method

.method public abstract encrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
.end method

.method public abstract getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
.end method

.method public abstract getKeyRequestData()Lcom/netflix/msl/keyx/WidevineKeyRequestData;
.end method

.method public abstract resetCryptoFactory()V
.end method

.method public abstract restoreCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
.end method

.method public abstract sign(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B)[B
.end method

.method public abstract updateKeyResponse(Lcom/netflix/msl/keyx/WidevineKeyRequestData;[BLcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
.end method

.method public abstract verify(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)Z
.end method
