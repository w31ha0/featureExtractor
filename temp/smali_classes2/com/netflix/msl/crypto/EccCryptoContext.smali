.class public Lcom/netflix/msl/crypto/EccCryptoContext;
.super Lcom/netflix/msl/crypto/AsymmetricCryptoContext;
.source "EccCryptoContext.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/crypto/EccCryptoContext$Mode;)V
    .locals 7

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->ENCRYPT_DECRYPT:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    invoke-virtual {v0, p4}, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "ECIES"

    :goto_0
    const/4 v5, 0x0

    sget-object v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    invoke-virtual {v0, p4}, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v6, "SHA256withECDSA"

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V

    .line 38
    return-void

    .line 37
    :cond_0
    const-string/jumbo v4, "nullOp"

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "nullOp"

    goto :goto_1
.end method
