.class public Lcom/netflix/msl/crypto/RsaCryptoContext;
.super Lcom/netflix/msl/crypto/AsymmetricCryptoContext;
.source "RsaCryptoContext.java"


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;)V
    .locals 7

    .prologue
    .line 66
    sget-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->ENCRYPT_DECRYPT_PKCS1:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 67
    invoke-virtual {v0, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    :goto_0
    sget-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->ENCRYPT_DECRYPT_OAEP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 68
    invoke-virtual {v0, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v5, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    :goto_1
    sget-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    .line 69
    invoke-virtual {v0, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v6, "SHA256withRSA"

    :goto_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 66
    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/crypto/AsymmetricCryptoContext;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->WRAP_UNWRAP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    if-ne p5, v0, :cond_4

    .line 71
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Wrap/unwrap unsupported."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    sget-object v0, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->ENCRYPT_DECRYPT_OAEP:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    invoke-virtual {v0, p5}, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "RSA/ECB/OAEPPadding"

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "nullOp"

    goto :goto_0

    .line 68
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 69
    :cond_3
    const-string/jumbo v6, "nullOp"

    goto :goto_2

    .line 72
    :cond_4
    return-void
.end method
